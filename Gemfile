source 'https://rubygems.org'

ruby '1.9.3'

gem 'rails', '3.2.8'
gem 'bcrypt-ruby', '3.0.1'
gem 'faker', '1.0.1'
gem 'will_paginate', '3.0.3'
gem 'paperclip', '~> 3.0'
gem 'ckeditor'
gem 'sunspot_rails'
gem 'tanker'
gem 'pg'
gem 'pg_search'
gem 'aws-sdk'
gem 'aws-s3'
gem 'unicorn'
gem 'friendly_id'


# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development do 
	gem 'sunspot_solr'
end

group :development, :test do 
	gem 'rspec-rails', '2.11.0'
end

gem 'annotate', '2.5.0', group: :development


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  gem 'zurb-foundation', '~> 4.0.0'
  gem 'jquery-datatables-rails'
end

gem 'jquery-rails', '2.0.2'
gem "jquery-ui-rails", "~> 4.0.3"

group :test do
	gem 'capybara', '1.1.2'
	gem 'factory_girl_rails', '4.1.0'
	gem 'cucumber-rails', '1.2.1', :require => false
	gem 'database_cleaner', '0.7.0'
end

group :production do
	gem 'thin'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
