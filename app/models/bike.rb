class Bike < ActiveRecord::Base
	after_initialize :default_values
	private
		def default_values
			self.location_id ||= "-1"
	end
end
