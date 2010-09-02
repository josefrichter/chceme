source 'http://rubygems.org'

gem 'rails', '3.0.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#gem 'sqlite3-ruby', :require => 'sqlite3'
gem "mongoid", "2.0.0.beta.17"
gem "bson_ext", "1.0.4"
gem 'mongo_session_store', :git => 'git://github.com/nmerouze/mongo_session_store'

gem "jquery-rails"

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
gem 'ruby-debug', :group => :development

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri', '1.4.1'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for certain environments:
# gem 'rspec', :group => :test
# group :test do
#   gem 'webrat'
# end

group :cucumber do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'cucumber-rails'
  gem 'cucumber'
  gem 'rspec-rails', '>=2.0.0.beta.12'
  gem 'spork'
  gem 'launchy'
  #gem 'pickle', :git => 'git://github.com/codegram/pickle'
  #gem 'pickle', '0.2.11' # need older version that should work with machinist_mongo
  gem 'pickle' # the local one
  gem 'machinist_mongo'
  gem 'faker'
end
