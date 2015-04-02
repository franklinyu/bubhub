class UserController < ApplicationController
  def create
    if not (params[:user][:firstName].present? and params[:user][:lastName].present? and
      params[:user][:bMail].present? and params[:user][:BNumber].present? and
      params[:user][:pin].present? and params[:user][:phoneNumber].present? and
      params[:user][:BUCardNumber].present?)
        flash[:error]= "Please fill in all required fields."
        redirect_to register_page_path and return
    else
      @user = User.create!(user_params)
      flash[:notice] = " An account for #{@user.firstName} #{@user.lastName} was successfully created"
      redirect_to root_page_path and return
    end


       
   
  end

  def read
  end

  def update
  end

  def delete
  end

  def user_params
    params.require(:user).permit(:firstName, :lastName, :bMail, :BNumber, :pin, :phoneNumber, :BUCardNumber)
  end

  def register
    render "register"
  end
end

