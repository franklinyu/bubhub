class Mailer < ApplicationMailer
  default from: "bmei3@binghamton.edu"
  layout 'welcome_email'

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to BUBS')
  end
end
