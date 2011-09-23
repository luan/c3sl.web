require 'rbconfig'
HOST_OS = Config::CONFIG['host_os']
source 'http://rubygems.org'
gem 'rails', '3.1.0'
gem 'sqlite3'
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end
if HOST_OS =~ /linux/i
  gem 'therubyracer', '>= 0.8.2'
end
gem "capybara", :group => [:development, :test]
gem "guard", ">= 0.6.2", :group => :development
case HOST_OS
  when /darwin/i
    gem 'rb-fsevent', :group => :development
    gem 'growl', :group => :development
  when /linux/i
    gem 'libnotify', :group => :development
    gem 'rb-inotify', :group => :development
  when /mswin|windows/i
    gem 'rb-fchange', :group => :development
    gem 'win32console', :group => :development
    gem 'rb-notifu', :group => :development
end
gem "guard-bundler", ">= 0.1.3", :group => :development
gem "guard-rails", ">= 0.0.3", :group => :development
gem "guard-rspec", ">= 0.4.3", :group => :development
gem "haml", ">= 3.1.2"
gem "haml-rails", ">= 0.3.4", :group => :development
gem "rails_admin", :git => "git://github.com/sferik/rails_admin.git"
gem "rspec-rails", ">= 2.6.1", :group => [:development, :test]
gem "factory_girl_rails", ">= 1.2.0", :group => :test
