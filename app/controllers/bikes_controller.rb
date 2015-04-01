class BikesController < ApplicationController

	def bike_list
		@bikes = Bike.all
		render
	end

	def create
		valid = true
		curHigh = 0;
		if not (params[:bike][:bike_id].present? && params[:bike][:bike_serial_num].present? && params[:bike][:bike_height].present?)
			valid = false
			flash[:error] = "Please fill in the bike_name"
		end

		'''
		//checks for duplicate bike ids
		@bikes.each do |b|
			if b.bike_id == params[:bike][:bike_id]
				valid = false
				flash[:error] = "Bike name in use"
			end
		end
		'''

		if(valid)
			@bike = Bike.create!(bike_params)
			flash[:notice] = "Bike with id #{@bike.bike_id} created"
			redirect_to bike_list_page_path and return
		else
				flash[:notice] = "Error: Bike not created."
			redirect_to bike_management_page_path and return
		end
	end

	def update
		@bike = Bike.find(params[:bike_id])
		tester = @user.update_attributes!(params[:user].permit(:bike_id, :location_id))
		if(tester)
			flash[:notice] = "Bike #{@bike.bike_id} is now in the database, stored with the location #{@bike.bike_id}."
		else
			"An error occured and no changes were made to the database."
		end
		redirect_to bike_list_page_path
	end

	def bike_params
		params.require(:bike).permit(:bike_id, :bike_serial_num, :bike_height, :location_id, :bike_description);
	end

	def bike_add
		render "bike_add"
	end

	def bike_look_up
		@bikes.each do |bike|
			if bike.bike_id ==params[:bike_id]	
				
			end
		end
	end
end

		
