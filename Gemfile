source 'https://rubygems.org'
ruby   '2.0.0'

gem 'unicorn',              '4.6.2'

gem 'rails',                '3.2.13'
gem 'jquery-rails',         '2.2.1'
gem 'strong_parameters',    '0.2.0'

gem 'secure_headers',       '0.3.0' # might not be needed on Rails 4

gem 'pg',                   '0.14.1'
gem 'acts_as_list',         '0.2.0'

gem 'devise',               '2.2.3'
gem 'omniauth',             '1.1.3', require: false
gem 'omniauth-ufc',         git: "https://c7acc59ab24cd118fb6295255ce7806b61fb1ca4:x-oauth-basic@github.com/RoR-ecommerce/ufc-omniauth.git", require: false

gem 'airbrake',             '3.1.10'
gem 'newrelic_rpm',         '3.6.0.78'

gem 'simple_form',          '2.1.0'
gem 'bootstrap-sass',       '2.3.1.0'
gem 'paperclip',            '3.4.1'

group :development, :test do
  gem 'rspec-rails',        '~> 2.13.0'
  gem 'factory_girl_rails', '~> 4.2.1'
end

group :test do
  gem 'database_cleaner',   '~> 0.9.1'
  gem 'capybara',           '~> 2.0.2'
  gem 'poltergeist',        '~> 1.1.0'
  gem 'ffaker',             '~> 1.15.0'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',         '3.2.6'
  gem 'coffee-rails',       '3.2.2'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer',       '0.11.4', platforms: :ruby

  gem 'uglifier',           '1.3.0'
end
