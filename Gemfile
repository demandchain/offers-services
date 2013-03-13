source 'https://rubygems.org'

gem 'rails', '3.2.11'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
 gem 'debugger'
 gem 'workflow'
 gem 'simplecov', :require => false, :group => :test

group :test, :development do
  gem 'rspec-rails', '~> 2.0', :require => false
#  gem 'simplecov', :require => false
  gem 'factory_girl'
end

group :test do
#  gem 'simplecov', :require => false
  gem 'rspec', '~> 2.0', :require => false 
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
end

group :cucumber do
  gem 'webmock'
  gem 'vcr'
  gem 'selenium-webdriver'
  gem 'cucumber-rails'
 end
