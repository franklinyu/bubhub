class Bike < ActiveRecord::Base
  after_initialize :default_values
  def is_available?
    location_id != '-1' and location_id != '0'
  end

  private

  def default_values
    self.location_id ||= "-1"
  end
end
