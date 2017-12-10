# frozen_string_literal: true

source 'https://rubygems.org'

ruby '2.4.2'

gem 'activeadmin', '~> 1.0'
gem 'acts-as-taggable-on', '~> 5.0'
gem 'aws-sdk', '~> 1.6'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
gem 'coffee-rails'

# Due to Rails 5.1
gem 'devise', git: 'https://github.com/plataformatec/devise'

gem 'draper', '~> 3.0'
gem 'font-awesome-rails'
gem 'friendly_id', '~> 5.1.0'
gem 'haml', '~> 5.0', '>= 5.0.1'
gem 'jbuilder', '~> 2.0'
gem 'jquery-rails'
gem 'newrelic_rpm'
gem 'paperclip', '~> 4.3'
gem 'pygments.rb', '~> 1.2.1'
gem 'rails', '5.1.4'
gem 'redcarpet', '~> 3.2.2'
gem 'sass-rails'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'sentry-raven'
gem 'turbolinks'
gem 'uglifier', '>= 1.3.0'
gem 'will_paginate', '~> 3.1', '>= 3.1.6'

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
end

group :development, :test do
  gem 'better_errors'
  gem 'byebug'
  gem 'codeclimate-test-reporter', '~> 1.0.0'
  gem 'm', '~> 1.5.0'
  gem 'minitest', '~> 5.10', '!= 5.10.2'
  gem 'pry'
  gem 'pry-rails'
  gem 'simplecov', '~> 0.14.1'
  gem 'spring'
end

group :development do
  gem 'sqlite3'
  gem 'web-console'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
