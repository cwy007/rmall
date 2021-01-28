# rails console

## 错误信息

```bash
➜  rmall git:(master) ✗ rails c
Running via Spring preloader in process 81342
Loading development environment (Rails 5.1.7)

Frame number: 0/24
warning: setting prompt with help of `Pry.config.prompt = [proc {}, proc {}]` is deprecated. Use Pry::Prompt API instead
Traceback (most recent call last):
	36: from -e:1:in `<main>'
	35: from /Users/chanweiyan/.rvm/rubies/ruby-2.6.5/lib/ruby/site_ruby/2.6.0/rubygems/core_ext/kernel_require.rb:54:in `require'
	34: from /Users/chanweiyan/.rvm/rubies/ruby-2.6.5/lib/ruby/site_ruby/2.6.0/rubygems/core_ext/kernel_require.rb:54:in `require'
	33: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activesupport-5.1.7/lib/active_support/dependencies.rb:286:in `load'
	32: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activesupport-5.1.7/lib/active_support/dependencies.rb:258:in `load_dependency'
	31: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activesupport-5.1.7/lib/active_support/dependencies.rb:286:in `block in load'
	30: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activesupport-5.1.7/lib/active_support/dependencies.rb:286:in `load'
	29: from /Users/chanweiyan/beijing/rmall/bin/rails:9:in `<top (required)>'
	28: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activesupport-5.1.7/lib/active_support/dependencies.rb:292:in `require'
	27: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activesupport-5.1.7/lib/active_support/dependencies.rb:258:in `load_dependency'
	26: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activesupport-5.1.7/lib/active_support/dependencies.rb:292:in `block in require'
	25: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/activesupport-5.1.7/lib/active_support/dependencies.rb:292:in `require'
	24: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/railties-5.1.7/lib/rails/commands.rb:16:in `<top (required)>'
	23: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/railties-5.1.7/lib/rails/command.rb:44:in `invoke'
	22: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/railties-5.1.7/lib/rails/command/base.rb:63:in `perform'
	21: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/thor-1.1.0/lib/thor.rb:392:in `dispatch'
	20: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/thor-1.1.0/lib/thor/invocation.rb:127:in `invoke_command'
	19: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/thor-1.1.0/lib/thor/command.rb:27:in `run'
	18: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/railties-5.1.7/lib/rails/commands/console/console_command.rb:97:in `perform'
	17: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/railties-5.1.7/lib/rails/commands/console/console_command.rb:17:in `start'
	16: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/railties-5.1.7/lib/rails/commands/console/console_command.rb:62:in `start'
	15: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/pry-byebug-3.9.0/lib/pry-byebug/pry_ext.rb:13:in `start_with_pry_byebug'
	14: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/pry-0.13.1/lib/pry/pry_class.rb:191:in `start'
	13: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/pry-0.13.1/lib/pry/repl.rb:15:in `start'
	12: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/pry-0.13.1/lib/pry/repl.rb:38:in `start'
	11: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/pry-0.13.1/lib/pry/input_lock.rb:78:in `with_ownership'
	10: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/pry-0.13.1/lib/pry/input_lock.rb:61:in `__with_ownership'
	 9: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/pry-0.13.1/lib/pry/repl.rb:38:in `block in start'
	 8: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/pry-0.13.1/lib/pry/repl.rb:67:in `repl'
	 7: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/pry-0.13.1/lib/pry/repl.rb:67:in `loop'
	 6: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/pry-0.13.1/lib/pry/repl.rb:68:in `block in repl'
	 5: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/pry-0.13.1/lib/pry/repl.rb:95:in `read'
	 4: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/pry-0.13.1/lib/pry/pry_instance.rb:471:in `select_prompt'
	 3: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/pry-0.13.1/lib/pry/pry_class.rb:382:in `critical_section'
	 2: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/pry-0.13.1/lib/pry/pry_instance.rb:490:in `block in select_prompt'
	 1: from /Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/pry-0.13.1/lib/pry/pry_instance.rb:692:in `generate_prompt'
/Users/chanweiyan/.rvm/gems/ruby-2.6.5/gems/awesome_rails_console-0.4.4/lib/awesome_rails_console/railtie.rb:37:in `block in show_rails_env_name_before_prompt': undefined method `first' for #<Pry::Prompt:0x00007fe90c0dc800> (NoMethodError)
```

## 解决方法

```bash
# add these to gemfile

gem 'pry', '~> 0.12.2'
gem 'pry-byebug', '~> 3.7'
```

in group :development, :test do

## 参考链接

* <https://github.com/ascendbruce/awesome_rails_console/issues/11#issuecomment-617091136>
