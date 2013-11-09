class Notifier < ActionMailer::Base
  default :from => 'stansmith@pushingsocial.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(user)
    @user = user
    mail( :to => @user.email, :subject => 'Thanks for sharing your story' )
  end
  def send_alert_email(user)
    @user = user
    mail( :to => 'stansmith@pushingsocial.com', :subject => 'New Story' )
  end
end