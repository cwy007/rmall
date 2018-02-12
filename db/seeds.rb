# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if User.all.count == 0
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
