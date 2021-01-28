# Getting started

## setup

```shell
git clone git@github.com:cwy007/rmall.git
cd rmall
cp config/database.yml.default config/database.yml
cp config/application.yml.default config/application.yml
bundle check
bundle install
rails s
```

<http://localhost:3000>

## rebuild system

lib/tasks/dev.rake

```shell
rake dev:build

or

rake dev:rebuild
```

## two roles (admin, user)

```ruby
# db/seeds.rb
create an user:
   email: "user@gmail.com"
password: "password"

create an admin:
   email: "admin@gmail.com"
password: "password"
```

## 部署到 heroku

[注册heroku账号](https://signup.heroku.com/)

>`chanweiyan001@gmail.com`

```bash
heroku login -i
heroku create
figaro heroku:set -e production
git push heroku master
heroku run rake db:migrate
heroku run rake db:seed
heroku open
```

## heroku 支持的 ruby 版本

```bash
2.6.6, Rubygems: 3.0.3
2.7.2, Rubygems: 3.1.4
3.0.0, Rubygems: 3.2.3

# https://devcenter.heroku.com/articles/ruby-support#supported-runtimes
```

## rails about

```bash
➜  rmall git:(master) ✗ rails about
Resolving dependencies...
About your application's environment
Rails version             5.1.7
Ruby version              2.6.6-p146 (x86_64-darwin20)
RubyGems version          3.0.9
Rack version              2.2.3
JavaScript Runtime        Node.js (V8)
Middleware                Rack::Sendfile, ActionDispatch::Static, ActionDispatch::Executor, ActiveSupport::Cache::Strategy::LocalCache::Middleware, Rack::Runtime, Rack::MethodOverride, ActionDispatch::RequestId, ActionDispatch::RemoteIp, Sprockets::Rails::QuietAssets, Rails::Rack::Logger, ActionDispatch::ShowExceptions, WebConsole::Middleware, ActionDispatch::DebugExceptions, ActionDispatch::Reloader, ActionDispatch::Callbacks, ActiveRecord::Migration::CheckPending, ActionDispatch::Cookies, ActionDispatch::Session::CookieStore, ActionDispatch::Flash, Rack::Head, Rack::ConditionalGet, Rack::ETag, Warden::Manager
Application root          /Users/chanweiyan/beijing/rmall
Environment               development
Database adapter          sqlite3
Database schema version   20180219052609
```

## 参考

* [更换gem源](https://gems.ruby-china.com/)
* [ruby安装ffi 1.9.21失败](https://stackoverflow.com/questions/64098041/cant-install-ffi-v-1-9-18-on-macos-catalina)
  >gem install ffi -v '1.9.21' -- --with-cflags="-Wno-error=implicit-function-declaration"
* [heroku account](https://dashboard.heroku.com/account)
  >chanweiyan001@gmail.com
* [首次备案流程](https://help.aliyun.com/knowledge_detail/36922.html?spm=a2c6h.13066369.0.0.59c32f8ejZ7R16)
* [关于linux下/srv、/var和/tmp的职责区分](https://blog.csdn.net/u012107143/article/details/54972544)
  >/srv ：主要用来存储本机或本服务器提供的服务或数据
  >服务器被用作Web开发时，html文件更应该被放在/srv/www下，而不是/var/www下（因为/srv目录是新标准中才有的，出现较晚；而且Apache将/var/www设为了web默认目录，所以现在绝大多数人都把web文件放在/var/www，这是个历史遗留问题）
* [figaro](https://github.com/laserlemon/figaro)
  >figaro heroku:set -e production
