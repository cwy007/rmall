# rails db:seed 报错

## 错误信息

```bash
 rmall git:(master) ✗ rake db:seed

  create an user:
     email: "user@gmail.com"
  password: "password"

  create an admin:
     email: "admin@gmail.com"
  password: "password"
rake aborted!
TypeError: no implicit conversion of nil into String
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/carrierwave-1.3.1/lib/carrierwave/uploader/cache.rb:182:in `join'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/carrierwave-1.3.1/lib/carrierwave/uploader/cache.rb:182:in `workfile_path'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/carrierwave-1.3.1/lib/carrierwave/uploader/cache.rb:134:in `cache!'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/carrierwave-qiniu-1.1.8/lib/carrierwave/uploader/base.rb:17:in `cache!'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/carrierwave-1.3.1/lib/carrierwave/mounter.rb:44:in `block in cache'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/carrierwave-1.3.1/lib/carrierwave/mounter.rb:42:in `map'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/carrierwave-1.3.1/lib/carrierwave/mounter.rb:42:in `cache'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/carrierwave-1.3.1/lib/carrierwave/mount.rb:146:in `image='
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/carrierwave-1.3.1/lib/carrierwave/orm/activerecord.rb:70:in `image='
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activemodel-5.1.7/lib/active_model/attribute_assignment.rb:46:in `public_send'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activemodel-5.1.7/lib/active_model/attribute_assignment.rb:46:in `_assign_attribute'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activemodel-5.1.7/lib/active_model/attribute_assignment.rb:40:in `block in _assign_attributes'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activemodel-5.1.7/lib/active_model/attribute_assignment.rb:39:in `each'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activemodel-5.1.7/lib/active_model/attribute_assignment.rb:39:in `_assign_attributes'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activerecord-5.1.7/lib/active_record/attribute_assignment.rb:26:in `_assign_attributes'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activemodel-5.1.7/lib/active_model/attribute_assignment.rb:33:in `assign_attributes'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activerecord-5.1.7/lib/active_record/core.rb:337:in `initialize'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activerecord-5.1.7/lib/active_record/inheritance.rb:66:in `new'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activerecord-5.1.7/lib/active_record/inheritance.rb:66:in `new'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activerecord-5.1.7/lib/active_record/persistence.rb:50:in `create!'
/Users/chanweiyan/beijing/rmall/db/seeds.rb:48:in `block in <top (required)>'
/Users/chanweiyan/beijing/rmall/db/seeds.rb:47:in `times'
/Users/chanweiyan/beijing/rmall/db/seeds.rb:47:in `<top (required)>'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activesupport-5.1.7/lib/active_support/dependencies.rb:286:in `load'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activesupport-5.1.7/lib/active_support/dependencies.rb:286:in `block in load'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activesupport-5.1.7/lib/active_support/dependencies.rb:258:in `load_dependency'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activesupport-5.1.7/lib/active_support/dependencies.rb:286:in `load'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/railties-5.1.7/lib/rails/engine.rb:549:in `load_seed'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activerecord-5.1.7/lib/active_record/tasks/database_tasks.rb:270:in `load_seed'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activerecord-5.1.7/lib/active_record/railties/databases.rake:184:in `block (2 levels) in <top (required)>'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/rake-13.0.3/exe/rake:27:in `<top (required)>'
Tasks: TOP => db:seed
(See full trace by running task with --trace)
```

## 解决方法

```ruby

Product.create!(
            title: "#{i+1} #{Faker::Commerce.product_name}",
      description: Faker::Lorem.paragraph,
            price: Faker::Commerce.price,
         quantity: rand(500),
            image: open('https://img.alicdn.com/img/bao/uploaded/i4/i3/1917047079/O1CN0122AEDoAg4hs7Bom_!!0-item_pic.jpg_400x400Q50s50.jpg'),
  )

```

## 参考链接
