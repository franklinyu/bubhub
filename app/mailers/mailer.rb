class Mailer < ActionMailer::Base
  default from: 'bmei3@binghamton.edu', reply_to: 'bmei3@binghamton.edu'

  def contact_us_email_form(user_email, contact_us_email_form)
    @user_email = user_email
    @form = contact_us_email_form
    subject = ['Message from',@form[:name]].join(' ')
    mail(to: @user_email, reply_to: @form[:email], from: @form[:email], subject: subject)
  end
end
