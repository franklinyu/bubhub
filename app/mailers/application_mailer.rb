class ApplicationMailer < ActionMailer::Base
  default from: 'donotreplybubikeshare@gmail.com'
  layout 'welcome_email'
end
