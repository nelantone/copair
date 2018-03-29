# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use postgresql as the database for Active Record & Heroku
# **The pg gem recently released version 1.0.0 which is not yet compatible with Rails.
# source: https://stackoverflow.com/questions/48201361/rails-application-using-postgres-adapter-cant-activate-pg
# If you're on Rails 5, change your Gemfile's pg requirement to the following:
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'bootstrap-sass', '~> 3.3.7'
gem 'font-awesome-rails'
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Amazon Ruby SDK for interacting with S3.
gem 'aws-sdk', '~> 2'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Cancancan for authorization library
gem 'cancancan', '~> 1.10'
# Use devise as authentication solution
gem 'devise'
# Use carrierwave as a simple and extremely flexible way to upload files
gem 'carrierwave', '~> 1.0'
gem 'fog'
# Carrierwave + S3 Gemfile
gem 'carrierwave_direct'
# A ruby wrapper for ImageMagick or GraphicsMagick command line.
gem 'mini_magick'
# generate fake 'foo bar' data
gem 'faker'
# Use Factory Bot for generating random test data
gem 'factory_bot_rails'
# Webpack to manage app-like JavaScript modules in Rails
gem 'webpacker', '~> 3.4'

group :test do
  gem 'shoulda-matchers', '~> 3.0'
  gem 'simplecov', require: false
end

group :development, :test do
  # Shim to load environment variables from .env into ENV in development.
  gem 'dotenv-rails', require: 'dotenv/rails-now'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry-byebug'
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  # Setup Rails from TDD via: http://asquera.de/blog/2016-03-31/tdd-with-guard/
  gem 'guard'
  gem 'guard-bundler', require: false
  gem 'guard-rspec', require: false
  gem 'guard-rubocop', require: false
  gem 'rspec'
  gem 'rubocop'
  gem 'rubocop-rspec'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Ruby version for tis project:
ruby '2.5'
