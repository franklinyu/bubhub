require 'spec_helper'

describe BikesController do
  describe 'select bike' do
    before :each do
      @fake_bike = mock('bike 1')
    end
    it 'should check the database for the availability for the bike with model method' do
      Bike.should_receive(:find_by_bike_id).with(10).and_return(@fake_bike)
      @fake_bike.should_receive(:is_available?).and_return(true)
      post :select, {bike_id: 10}
    end
    it 'should redirect user to the checkout page'
    it 'should make the bike information available for the checkout page template'
  end
end
