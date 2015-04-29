class BikeRackController < ApplicationController
  def create
    if not (params[:bike_rack][:location].present? and params[:bike_rack][:num_bikes].present? and params[:bike_rack][:notes].present?)
        flash[:error]= "Please fill in all required fields."
        redirect_to add_a_rack_page_path and return
    else
      @bike_rack = BikeRack.create!(rack_params)
      flash[:notice] = " A rack was successfully created"
      redirect_to root_page_path and return
    end


       
   
  end

  def read
  end

  def update
  end

  def delete
  end

  def rack_params
    params.require(:bike_rack).permit(:location, :num_bikes, :notes)
  end

  def submit
    render "submit"
  end
end

