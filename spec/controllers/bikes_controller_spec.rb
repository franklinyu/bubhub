require 'spec_helper'

describe BikesController do
  describe 'select a bike' do
    before :each do
      @fake_bike = double('bike 1')
    end
    it 'should check the database for the availability for the bike with model method' do
      Bike.should_receive(:find_by_id).with(10).and_return(@fake_bike)
      @fake_bike.should_receive(:is_available?).and_return(true)
      get :select, {id: 10}
    end
    describe 'on verification' do
      before :each do
        Bike.stub(:find_by_id).with(10).and_return(@fake_bike)
      end
      it 'should redirect user to Invalid Selection Page for selection failure' do
        @fake_bike.stub(:is_available?).and_return(false)
        get :select, {id: 10}
        response.should redirect_to invalid_selection_bikes_path
      end
      describe 'after verification' do
        before :each do
          @fake_bike.stub(:is_available?).and_return(true)
          get :select, {id: 10}
        end
        it 'should select the Check Out template for rendering' do
          response.should render_template('select')
        end
        it 'should make the bike information available for the checkout page template' do
          assigns(:bike).should == @fake_bike
        end
      end
    end
  end

  describe 'check out a bike' do
    before :each do
      @fake_bike = double('bike 1')
    end
    it 'should check the database for the availability for the bike with model method' do
      Bike.should_receive(:find_by_id).with(10).and_return(@fake_bike)
      @fake_bike.should_receive(:is_available?).and_return(true)
      post :check_out, {id: 10}
    end
    describe 'on verification' do
      before :each do
        Bike.stub(:find_by_id).with(10).and_return(@fake_bike)
      end
      it 'should redirect user to Invalid Selection Page for selection failure' do
        @fake_bike.stub(:is_available?).and_return(false)
        post :check_out, {id: 10}
        response.should redirect_to invalid_selection_bikes_path
      end
      describe 'after verification' do
        before :each do
          @fake_bike.stub(:is_available?).and_return(true)
          post :check_out, {id: 10}
        end
        it 'should make the bike information available for the checkout page template'
      end
    end
  end
end
