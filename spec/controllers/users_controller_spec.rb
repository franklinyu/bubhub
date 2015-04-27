require 'spec_helper'

describe UsersController do

  describe "POST #create" do
    context "with valid attributes" do
      it "saves the new user in the database" do
        expect{
          post :create, user: FactoryGirl.attributes_for(:user)
        }.to change(User, :count).by(1)
      end
      it "redirects to the home page after saving" do
        post :create, user: FactoryGirl.attributes_for(:user)
        response.should redirect_to root_page_path
        flash.should_not be_nil
      end
    end

    context "with invalid attributes" do
      it "does not save the new user in the database" do
        expect{
          post :create, user: FactoryGirl.attributes_for(:invalid_user)
        }.to_not change(User, :count)
      end
      it "redirects to the create new user page upon save attempt" do
        post :create, user: FactoryGirl.attributes_for(:invalid_user)
        response.should redirect_to new_user_path
        flash.should_not be_nil
      end
    end
  end

end
