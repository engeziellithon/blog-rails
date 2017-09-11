source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.3'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0.6'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'font-awesome-sass', '~> 4.7.0'
gem 'devise', '~> 4.3'
gem 'simple_form', '~> 3.5'
gem 'oj', '~> 3.3', '>= 3.3.5'
gem 'rollbar'
gem 'will_paginate', '~> 3.1.0'
gem 'will_paginate-bootstrap'
gem 'ckeditor', github: 'galetahub/ckeditor'
gem 'paperclip'
gem 'serviceworker-rails'
gem 'paperclip-cloudinary'
gem 'cancancan', '~> 2.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'sqlite3'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :prodution do
  gem 'rails_12factor', '~> 0.0.3'
  gem 'pg', '~> 0.18.4'
end