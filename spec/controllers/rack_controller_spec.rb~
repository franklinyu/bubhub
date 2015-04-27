require 'spec_helper'

describe BikeRacksController do

  describe "POST #create" do
    context "with valid attributes" do
      it "saves the new rack in the database" do
        expect{
          post :create, bike_rack: FactoryGirl.attributes_for(:bike_rack)
        }.to change(BikeRack, :count).by(1)
      end
      it "redirects to the home page after saving" do
        post :create, bike_rack: FactoryGirl.attributes_for(:bike_rack)
        response.should redirect_to root_page_path
        flash.should_not be_nil
      end
    end

    context "with invalid attributes" do
      it "does not save the new rack in the database" do
        expect{
          post :create, bike_rack: FactoryGirl.attributes_for(:invalid_rack)
        }.to_not change(BikeRack, :count)
      end
      it "redirects to the create new rack page upon save attempt" do
        post :create, bike_rack: FactoryGirl.attributes_for(:invalid_rack)
        response.should redirect_to add_a_rack_page_path
        flash.should_not be_nil
      end
    end
  end

end
