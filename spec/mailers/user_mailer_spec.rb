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
end

