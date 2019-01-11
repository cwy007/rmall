# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create two user
User.destroy_all
Product.destroy_all
Order.destroy_all
Cart.destroy_all
CartItem.destroy_all

user = User.create! do |u|
  u.email                 = "cwy@example.com"
  u.password              = "password"
  u.password_confirmation = "password"
end
admin = User.create! do |u|
  u.email                 = "admin@example.com"
  u.password              = "password"
  u.password_confirmation = "password"
  u.is_admin              = true
end
puts %{
  create an user:
     email: "cwy@example.com"
  password: "password"

  create an admin:
     email: "admin@example.com"
  password: "password"
}

# seed fake products
if Product.count == 0
  imgs = [
    'https://img.alicdn.com/img/bao/uploaded/i4/i3/1917047079/O1CN0122AEDoAg4hs7Bom_!!0-item_pic.jpg_400x400Q50s50.jpg',
    'https://img.alicdn.com/img/bao/uploaded/i4/i4/1917047079/TB1EIEHa6DpK1RjSZFrXXa78VXa_!!0-item_pic.jpg_400x400Q50s50.jpg',
    'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/TB17ZV7RVXXXXaZXVXXXXXXXXXX_!!0-item_pic.jpg_460x460Q90.jpg',
    'https://g-search1.alicdn.com/img/bao/uploaded/i4/i1/831562715/O1CN01aSCReP1VvVntNxe2a_!!0-item_pic.jpg_460x460Q90.jpg',
    'https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/TB1An8PRFXXXXbUXVXXXXXXXXXX_!!0-item_pic.jpg_460x460Q90.jpg'
  ]
  30.times { |i|
    Product.create!(
            title: "#{i+1} #{Faker::Commerce.product_name}",
      description: Faker::Lorem.paragraph,
            price: Faker::Commerce.price,
         quantity: rand(500),
            image: open(imgs.sample),
  )}
  puts "新建30个商品"
end

# create 30 orders for admin
30.times do |i|
  cart = Cart.create!
  cart.products << Product.all.sample(4)
  order = admin.orders.create!(
       billing_name: "admin",
    billing_address: "Henan China",
      shipping_name: "admin",
   shipping_address: "Beijing China",
     payment_method: ["alipay", "weixin"].sample,
              total: cart.total_price,
              token: SecureRandom.uuid
  )
  if i % 3 == 0
    order.make_payment!
  end
  cart.cart_items.each do |cart_item|
    product_list = ProductList.new
    product_list.order = order
    product_list.product_name = cart_item.product.title
    product_list.product_price = cart_item.product.price
    product_list.quantity = cart_item.quantity
    product_list.save
  end
  print "*"
end
puts "create 30 orders for admin"
