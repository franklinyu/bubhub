# app/mailers/user_mailer.rb
class UserMailer < ApplicationMailer

@from_bikeshare = 'donotreplybubikeshare@gmail.com'
@send_to_bikeshare = 'meibenny@gmail.com'
default from: @bikeshare_email

 
  def welcome_email(user)
    @user = user
    #@url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def contact_us_email_form(user, contact_us_email_form)
    @user = user
    @form = contact_us_email_form
    subject = ['message from', @form[:name]].join(' ')
    mail(to: @send_to_bikeshare, reply_to: @form[:email], from: @form[:email], subject: subject)

  end
end
