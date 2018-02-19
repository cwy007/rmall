# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if User.count == 0
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
       email: "cwy@example.com"
    password: "password"
  }
end

if Product.count == 0
  imgs = [
    "https://img.alicdn.com/imgextra/i4/1669409267/TB22hqeo26H8KJjSspmXXb2WXXa_!!1669409267.jpg_430x430q90.jpg",
    "https://img.alicdn.com/imgextra/i1/1776456424/TB2BGNPXdLO8KJjSZFxXXaGEVXa_!!1776456424.jpg_430x430q90.jpg",
    "https://img.alicdn.com/imgextra/i4/1669409267/TB2tSzNXSBYBeNjy0FeXXbnmFXa_!!1669409267.jpg_430x430q90.jpg",
    "https://img.alicdn.com/imgextra/i4/1669409267/TB2zph.XH1YBuNjSszhXXcUsFXa_!!1669409267.jpg_430x430q90.jpg",
    "https://img.alicdn.com/imgextra/i3/1669409267/TB1tdg.X_lYBeNjSszcXXbwhFXa_!!0-item_pic.jpg_430x430q90.jpg"
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
