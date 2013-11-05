# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
First100readers::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['app19196288@heroku.com'],
  :password       => ENV['mbc72zla'],
  :domain         => 'heroku.com',
  :enable_starttls_auto => true
}
