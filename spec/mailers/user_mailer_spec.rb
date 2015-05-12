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
    before(:each) do
      @from_bikeshare = 'donotreplybubikeshare@gmail.com'
      @to_bikeshare = 'meibenny@gmail.com'
      @message_params = Hash.new({:name => "Benny", 
                                  :email => "meibenny@gmail.com", 
                                  :message => "Hi there! Good to see you!"
                                 })
    end
    it 'should send an email to bikeshare' do
      mail = UserMailer.contact_us_email(@message_params)
      expect(mail.from).to include (@from_bikeshare)
      expect(mail.to).to include(@to_bikeshare)
    end
  end
end
