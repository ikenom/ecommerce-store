# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.1"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 6.0.3", ">= 6.0.3.4"
# Use Puma as the app server
gem "puma", "~> 4.1"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.2", require: false

gem "hutch"
gem "mongoid"
gem "sneakers"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "factory_bot_rails"
  gem "faker"
  gem "pry-byebug"
  gem "rspec-rails", "~> 4.0.2"
  gem "vcr"
  gem "webmock"
end

group :development do
  gem "listen", "~> 3.2"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"

  # Use rubocop for linting
  gem "rubocop", "~> 0.80.1"
  gem "rubocop-github", "~> 0.14.0"
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
end

group :test do
  gem "mongoid-rspec"
  gem "rspec-github", require: false
end
