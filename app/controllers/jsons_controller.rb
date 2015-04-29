class JsonsController < ApplicationController
  skip_before_action :verify_authenticity_token
  # from http://api.rubyonrails.org/classes/ActionController/RequestForgeryProtection.html
  before_filter :json_only

  def sign_in
    debugger
    @response = {authorized: true, is_admin: true}
    render json: @response
  end

protected

  def json_only
    unless request.headers["Content-Type"] == 'application/json'
      head :not_found
    end
  end
end
