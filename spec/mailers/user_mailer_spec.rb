require 'spec_helper'

describe UserMailer do
  describe '#welcome_email' do
    before(:each) do
      @user = FactoryGirl.create(:user)
      @from_bikeshare = 'donotreplybubikeshare@gmail.com'
    end
    it 'should send a welcome message' do
      mail = UserMailer.welcome_email(@user)
      expect(mail.from).to include (@from_bikeshare)
      expect(mail.to).to include (@user.email)
      expect(mail.subject).to include ('Welcome to My Awesome Site')
    end
  end
  describe '#contact_us_email' do
    message_params[:name] = 'Benny'
    message_params[:email] = 'meibenny@gmail.com'
    message_params[:message] = 'Hello! Good to see you!'
    mail = UserMailer.contact_us_email
  end
end

