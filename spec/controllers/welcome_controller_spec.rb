require 'spec_helper'

describe WelcomeController do
  before :each do
    @user = FactoryGirl.create(:user)
  end

  describe "#valid_user" do
    context "with valid attributes" do
      it "redirects to the valid user page" do
        get :index
        WelcomeController.valid_user
        expect(response).to redirect_to valid_user_page_path
      end
    end
    context "with invalid attributes" do
      it "puts a flash notice on the sign in page" do
        get 'index'
        controller.valid_user(:user)
        expect(flash[:notice]).to eq "Your username or password was incorrect. Try again."
        expect(response).to redirect_to sign_in_page_path
      end
    end
  end
end
