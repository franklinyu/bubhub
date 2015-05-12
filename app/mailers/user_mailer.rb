# app/mailers/user_mailer.rb
class UserMailer < ActionMailer::Base

@from_bikeshare = 'donotreplybubikeshare@gmail.com'
default from: @from_bikeshare

 
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def contact_us_email(contact_us_email_form)
    @form = contact_us_email_form
    @send_to_bikeshare = 'binghamtonbikeshare@gmail.com'
    subject = ['message from', @form[:name]].join(' ')
    mail(to: @send_to_bikeshare, subject: subject, cc: @form[:email], reply_to: @form[:email])

  end
end
