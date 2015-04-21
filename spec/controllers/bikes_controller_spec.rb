require 'spec_helper'

describe BikesController do
  describe 'select bike' do
    before :each do
      @fake_bike = mock('bike 1')
    end
    it 'should check the database for the availability for the bike with model method' do
      Transaction.stub(:is_logged_in?).and_return(true)
      Bike.should_receive(:is_available?).with(@fake_bike).and_return(true)
      post :select, {bike_id: 10}
    end
    it 'should redirect user to the checkout page'
    it 'should make the bike information available for the checkout page template'
  end
end
