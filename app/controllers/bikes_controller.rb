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
			flash[:error] = "Please fill in all fields marked with a *."
		end

		
		#checks for duplicate bike ids
		@bikes = Bike.all
		@bikes.each do |b|
			if b.bike_id == params[:bike][:bike_id]
				valid = false
				flash[:error] = "A bike with this id already exists."
			end
		end
		

		if(valid)
			@bike = Bike.create(bike_params)
			flash[:notice] = "Bike with id #{@bike.bike_id} created"
			redirect_to bike_list_page_path and return
		else
			flash[:notice] = "Error: Bike not created."
			redirect_to bike_management_page_path and return
		end
	end

	def update
		#if the update is a move move and redirect, do nothing else
		if(params[:bike][:bike_id].present?)
			@bike = Bike.find_by bike_id: params[:bike][:bike_id]

			if(params[:bike][:location_id].present? && !(@bike.nil?))
				#@bike.location_id= params[:bike][:location_id]
				@bike.update_attribute(:location_id, params[:bike][:location_id])
				redirect_to bike_list_page_path and return
			elsif (params[:bike][:location_id].present?)
				flash[:error] = "Bike not found."
				redirect_to bike_move_page_path and return
			end

			if(@bike.nil?)
				flash[:error] = "Bike not found."
				redirect_to bike_edit_page_path and return
			end

			if(params[:bike][:newID].present?)
				@bike.update_attribute(:bike_id, params[:bike][:newID])
			end

			if(params[:bike][:bike_serial_num].present?)
				@bike.update_attribute(:bike_serial_num, params[:bike][:bike_serial_num])
			end

			if(params[:bike][:bike_height].present?)
				@bike.update_attribute(:bike_height, params[:bike][:bike_height])
			end

			if(params[:bike][:bike_description].present?)
				@bike.update_attribute(:bike_description, params[:bike][:bike_description])
			end

		else
			flash[:error] = "Bike id not entered."	
		end
		
		
		redirect_to bike_list_page_path and return
	end

	def destroy
		if(params[:bike][:bike_id].present?)
			@bike = Bike.find_by bike_id: params[:bike][:bike_id]
			if not (@bike.nil?)
				@bike.destroy	
			else
				flash[:error] = "Bike not found."
				redirect_to bike_remove_page_path and return
			end
		else
			flash[:error] = "Bike id not entered."
			redirect_to bike_remove_page_path and return
		end

		redirect_to bike_list_page_path and return
	end

	def bike_params
		params.require(:bike).permit(:bike_id, :bike_serial_num, :bike_height, :location_id, :bike_description, :newID);
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

		
