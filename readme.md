Project Test app
  The project was created to test the level of knowledge of the candidate.


Default gems and settings

  ruby '2.4.1'
  gem 'rails', '~> 5.2.1'
  gem 'sqlite3'
  gem 'puma', '~> 3.11'
  gem 'sass-rails', '~> 5.0'
  gem 'uglifier', '>= 1.3.0'
  gem 'coffee-rails', '~> 4.2'
  gem 'turbolinks', '~> 5'
  gem 'jbuilder', '~> 2.5'
  gem 'bootsnap', '>= 1.1.0', require: false
  group :development, :test do
    gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  end

  group :development do
    gem 'web-console', '>= 3.3.0'
    gem 'listen', '>= 3.0.5', '< 3.2'
    gem 'spring'
    gem 'spring-watcher-listen', '~> 2.0.0'
  end

  group :test do
    gem 'capybara', '>= 2.15'
    gem 'selenium-webdriver'
    gem 'chromedriver-helper'
  end

  gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

Gems that i used

  gem 'mongoid', '~> 6.1.0'
  gem 'bson_ext'

  gem 'rails-assets-bootstrap', '~> 4.0.0.alpha.6'
  gem 'rails-assets-jquery', source: 'https://rails-assets.org'
  gem 'rails-assets-datatables', source: 'https://rails-assets.org'
  gem 'kaminari-mongoid'


