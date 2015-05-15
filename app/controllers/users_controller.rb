class UsersController < ApplicationController
  def create
    @user = User.new
    @user.first_name = params[:user][:first_name]
    @user.last_name = params[:user][:last_name]
    @user.bu_id = params[:user][:bu_id]
    @user.email = params[:user][:email]
    @user.pin = params[:user][:pin]

#if verify_recaptcha(model: @user, message: "Oh! It's error with reCAPTCHA!") && @user.save
    if @user.save
      @createdUser = User.find_by(bu_id: @user.bu_id)
      flash[:notice] = " An account for #{@createdUser.first_name} #{@createdUser.last_name} was successfully created"
      redirect_to root_page_path and return
    else
      flash[:error]= "Please fill in all required fields."
      redirect_to new_user_path and return
    end
  end

  def new
    render "register"
  end

  def read
  end

  def update
    redirect_to root_page_path
  end

  def delete
  end

  def user_params
    params.require(:user).permit(:firstName, :lastName, :bMail, :BNumber, :pin, :phoneNumber, :BUCardNumber)
  end

  def register
    render "register"
  end
  def index
    render "register"
  end
end

