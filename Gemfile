source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'
gem 'bootstrap-sass', github: 'thomas-mcdonald/bootstrap-sass', branch: '3'
gem "paperclip", :git => "git://github.com/thoughtbot/paperclip.git"
gem 'simple_form'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem "devise"
gem "infusionsoft"
gem 'aws-sdk', '~> 1.5.7'
gem "rails_admin", git: "https://github.com/bulleric/rails_admin.git", branch: "bootstrap2-dependency-patch"
gem 'gravatar-ultimate'
gem 'encrypted_id'

gem "rspec-rails", :group => [:test, :development]
group :test do
  gem "factory_girl_rails", "~> 4.0"
  gem "capybara"
  gem "guard-rspec"
end

group :development, :test do
     gem 'sqlite3'
     gem 'better_errors'
     gem 'binding_of_caller'
     gem 'meta_request'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

