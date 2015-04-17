class TestsController < ApplicationController
  def create
    @test = Test.new(captcha_params)
    if @test.save_with_captcha
      redirect_to root_path
    else if @test.errors.any?
      redirect_to tests_path
    end
  end

  private
  def captcha_params
    params.require(:test).permit(:id,:text,:captcha,:captcha_key)
  end
end
