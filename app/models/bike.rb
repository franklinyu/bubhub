class Bike < ActiveRecord::Base
  after_initialize :default_values
  def is_available?
    location_id != '-1' # assume that '-1' stands for 'borrowed'
  end

  private

  def default_values
    self.location_id ||= "-1"
  end
end
