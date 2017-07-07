source 'https://rubygems.org'

ruby '2.3.0'

gem 'rails',              '5.1.0'
gem 'sass-rails'
gem 'uglifier',           '>= 1.3.0'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder',           '~> 2.0'
gem 'sdoc',               '~> 0.4.0', group: :doc
gem 'pygments.rb',        '~> 0.6.0'
gem 'redcarpet',          '~> 3.2.2'
gem 'friendly_id',        '~> 5.1.0'
gem 'will_paginate',      '~> 3.1', '>= 3.1.6'
gem 'haml',               '~> 5.0', '>= 5.0.1'
gem 'draper',             '~> 3.0'
gem 'activeadmin',        '~> 1.0'
gem 'paperclip',          '~> 4.3'
gem 'aws-sdk',            '~> 1.6'
gem 'bootstrap-sass',     '~> 3.3', '>= 3.3.6'

# Due to Rails 5.1
gem 'devise', git: 'https://github.com/plataformatec/devise'

group :test do
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'selenium-webdriver'
end

group :development, :test do
  gem 'byebug'
  gem 'minitest',                     '~> 5.10', '!= 5.10.2'
  gem 'spring'
  gem 'pry'
  gem 'pry-rails'
  gem 'better_errors'
  gem 'simplecov',                    '~> 0.14.1'
  gem 'codeclimate-test-reporter',    '~> 1.0.0'
  gem 'm',                            '~> 1.5.0'
end

group :development do
  gem 'sqlite3'
  gem 'web-console'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
