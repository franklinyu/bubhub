class WelcomeController < ApplicationController
  helper_method :valid_users

	def index
    @hilite = "index"
		render
	  flash[:notice]
    end

	def join
    @hilite = "join"
		render
	end
    
    def landing
      @title = "Bike Share Landing"
      @hilite = "landing"
    end

	def resources
    @hilite = "resources"
	  @title = "Bike Share Resources"
    @localTrails = "https://binghamtonbikeshare.files.wordpress.com/2014/11/bikemap_2011_fwv-small.pdf"
    @fitnessTrails = "https://binghamtonbikeshare.files.wordpress.com/2014/11/fitnesstrailsmap1bu.pdf"
    @twoRiverTrails = "https://binghamtonbikeshare.files.wordpress.com/2014/11/gbgmaps.pdf"
    @bikeCoalition = "http://nybc.net/"
    @bingTransport = "http://www.bmtsonline.com/"
    @bikeMaintanence = "http://vimeo.com/21928126"
    @bikeShop = "https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0CB8QFjAA&url=http%3A%2F%2Fwww.chenangopoint.com%2F&ei=LrVjVJ-0F7bGsQT2rYKYCA&usg=AFQjCNEYNSBt_S_urwnclJ9EAE030FACuQ&bvm=bv.79189006,d.cWc"
    @stonybrookBikeShare = "http://www.stonybrook.edu/sustainability/biking-at-stony-brook/wolf-ride-bike-share.shtml"
    @cornellBikeShare = "http://bigredbikes.cornell.edu/"
    @ithacaBikeShare = "http://www.ithaca.edu/orgs/bbikes/about/"
	end

	def contact_us
    @hilite = "contact_us"
		render
	end

    def contact_us_email_form
      @message_params = params[:email_form]
      request.env['HTTP_REFERER'] ||= root_page_path

      if @message_params.nil? or
          @message_params[:name].blank? or
          @message_params[:email].blank? or
          @message_params[:message].blank?
        flash[:error] = "Please fill in Name, Email, and Message field"
        redirect_to contact_us_page_path and return
      elsif !@message_params[:fellforit].blank?
        flash[:error] = "Email not sent. Are you a human?"
        redirect_to contact_us_page_path and return
      elsif UserMailer.contact_us_email(@message_params).deliver
        flash[:notice] = "Your message has been sent successfully!"
        redirect_to contact_us_page_path and return
      else
        flash[:error] = "Your message hasn't been sent"
        redirect_to contact_us_page_path and return
      end
    end

  def bike_shop
    @hilite = "info"
    render
  end

  def how_it_works
    @hilite = "how_it_works"
    render
  end

  def valid_user
    path = sign_in_page_path
    @user_list = User.all
    email = params[:user][:email]
    pw = params[:user][:pin]
    session[:email] = email
    params.permit!
    @user_list.each do |u|
      if email == u[:email] and pw == u[:pin]
        path = valid_user_page_path
        session[:first_name] = u[:first_name]
        session[:last_name] = u[:last_name]
        return
      else
        flash[:notice] = "Your username or password was incorrect. Try again."
        path = sign_in_page_path
      end
    end
    redirect_to path and return
  end

  def failure
    flash[:notice] = "Your username or password was incorrect. Try again."
  end

  def valid_users(user)
  end

end





