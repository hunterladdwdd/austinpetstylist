source 'http://rubygems.org'
ruby '2.4.3'

gem 'bootstrap-sass', '~> 3.4.1'
gem 'bootstrap_form'
gem 'coffee-rails'
gem 'rails', '~> 4.2.5'
gem 'haml-rails'
gem 'sass-rails'
gem 'uglifier'
gem 'turbolinks'
gem 'jquery-rails'
gem 'pg', '~> 0.21.0'
gem 'tzinfo-data', platforms: [:mingw, :mswin]
gem 'bcrypt', '~> 3.1.7'
gem 'yelp', require: 'yelp'

group :development do
  gem 'thin'
  gem "better_errors"
  gem "binding_of_caller"
end

group :development, :test do
  gem 'pry'
  gem 'pry-nav'
  gem 'rspec-rails', '2.99'
  gem 'faker'
  gem 'fabrication'
end

group :test do
  gem 'database_cleaner', '1.2.0'
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'launchy'
end

group :production do
  gem 'rails_12factor'
end
