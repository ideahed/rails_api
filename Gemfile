source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'
# Use postgresql as the database for Active Record
gem 'pg'

gem 'geocoder'

# Parses JSON objects
gem 'oj'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc
# Use unicorn as the app server
# gem 'unicorn'

group :development do
  gem 'binding_of_caller'
  gem 'foreman'
  gem 'pry'
  gem 'pry-debugger'
end

group :development, :test do
  gem 'debugger'
  gem 'factory_girl_rails'
  gem 'rspec-rails', '>= 2.14'
end

group :test do
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'webmock'
end

group :staging, :production do
  gem 'rails_12factor'
end


