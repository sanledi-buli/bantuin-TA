source 'https://rubygems.org'

gem 'rails', '4.0.2'
gem 'pg'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

group :development do
  gem 'brakeman', '~> 2.6.2', :require => false
  gem 'puma', '~> 2.9.0'
  gem 'guard-bundler', require: false
  gem 'guard-rspec', require: false
end

group :development, :test do
  gem 'byebug', '~> 3.2.0'
  gem 'rspec-rails', '~> 3.0.0'
  gem 'rubocop', require: false
  gem "rubycritic", :require => false
end

group :test do
  gem 'factory_girl_rails'
  gem 'shoulda-matchers', require: false
end

gem 'devise', '~> 3.3.0'
gem 'cancancan', '~> 1.9'
gem 'kaminari', '~> 0.16.1'
gem 'bootstrap-sass', '~> 3.2.0'
gem "font-awesome-rails"

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
gem 'bcrypt-ruby', '~> 3.1.2'

group :production do
  gem 'rails_12factor'
  gem 'thin'
end
