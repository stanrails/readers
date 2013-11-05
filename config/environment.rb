# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
First100readers::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  user_name: ENV["SENDGRID_USERNAME"],
  password: ENV["SENDGRID_PASSWORD"],
  :domain         => 'heroku.com',
  :enable_starttls_auto => true
}

# Added to your config\initializers file
Infusionsoft.configure do |config|
  config.api_url = 'dr113.infusionsoft.com' # example infused.infusionsoft.com
  config.api_key = '0220ee08f407f9454c5beb81e3885938'
  config.api_logger = Logger.new("#{Rails.root}/log/infusionsoft_api.log") # optional logger file
end
