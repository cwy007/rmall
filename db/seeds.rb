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
  10.times { |i|
    Product.create!(
            title: "#{i+1} 坚果Pro",
      description: "锤子手机 细红线",
            price: 2288,
         quantity: 5,
            image: open("http://img13.360buyimg.com/n1/s450x450_jfs/t5527/223/1660932474/149818/343ed1d7/59130e4cNa6d07fe0.jpg"),
  )}
  puts "新建10个商品"
end
