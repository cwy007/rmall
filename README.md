# Getting started

1. in terminal

```shell
git clone git@github.com:cwy007/rmall.git
cd rmall
cp config/database.yml.default config/database.yml
cp config/secrets.yml.default config/secrets.yml
bundle check
bundle install
rails s
```

2. visit
http://localhost:3000

3. rebuild system

lib/tasks/dev.rake
```shell
rake dev:build

or

rake dev:rebuild
```

4. two roles (admin, user)

db/seeds.rb
```
create an user:
   email: "cwy@example.com"
password: "password"

create an admin:
   email: "cwy@example.com"
password: "password"
```
