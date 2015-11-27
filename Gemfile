source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.15'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'konacha', '~> 3.7'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

gem 'react-rails',       '~> 1.3'

group :assets do
  gem 'ejs',               '~> 1.1.1'
  gem 'jquery-rails',      '~> 4.0'
  gem 'jquery-ui-rails',   '~> 5.0'
  gem 'lodash-rails',      '~> 3.10'
  gem 'quiet_assets',      '~> 1.1'
  gem 'sass',              '~> 3.2'
  gem 'uglifier',          '~> 2.7'
end

group :test do
  gem 'capybara',           '~> 2.4', require: false
  gem 'poltergeist',        '~> 1.6', require: false
  gem 'database_cleaner',   '~> 1.0', require: false
  gem 'email_spec',         '~> 1.6', require: false
  gem 'factory_girl_rails', '~> 4.5', require: false
  gem 'pry',                '~> 0.9', require: false
  gem 'rspec-rails',        '~> 3.3', require: false
  gem 'vcr',                '~> 2.9', require: false
  gem 'webmock',            '~> 1.9', require: false

  # Rspec Transition
  gem 'rspec-activemodel-mocks', '~> 1.0.2'
  gem 'rspec-collection_matchers'
end
