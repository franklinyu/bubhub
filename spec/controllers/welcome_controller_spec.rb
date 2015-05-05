require 'spec_helper'

describe WelcomeController do
  before :each do
    @user = User.new
    @user.firstName = "Kyle"
    @user.lastName = "Goodwill"
  end

  describe "valid_user", pending=>true do
    context "with valid attributes" do
      it "creates a list of users in database" do
        user = FactoryGirl.create(:user, user: some_user)
        get :index
        assigns(:users).should eq([user])
      end
      it "redirects to the valid user page", pending=>true do
        get :index
        controller.valid_user(@user)
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
