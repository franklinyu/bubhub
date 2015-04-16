require 'spec_helper'

describe Mailer do
  describe '#contact_us_email_form' do
    let(:valid_params) { { name: 'Benny', email: 'bchen28@binghamton.edu', message: 'What up!' } }
    before(:each) do
      @user = User.new first_name: 'Adolf',
                       last_name: 'Hitler',
                       email: 'HeilHitler@whatever.com',
                       password: '1234567890'

    end
    it 'should send an email' do
      mail = Mailer.contact_us_form(@user, valid_params)
      expect(mail.from).to include('bchen28@binghamton.edu')
      expect(mail.reply_to).to include('bchen28@binghamton.edu')
      expect(mail.to).to include('HeilHitler@whatever.com')
      expect(mail.subject).to include(['message from', valid_params[:name]].join(' '))
      expect(mail.body.raw_source).to include(valid_params[:message])
      expect(mail).to have_default_cc_addresses
    end
  end
end
