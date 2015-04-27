class User < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  validates_uniqueness_of :email, :case_sensitive => false
  validates_presence_of :pin
  validates_presence_of :bu_id
  validates_uniqueness_of :bu_id

  validates_uniqueness_of :assigned_bike
  validates_presence_of :total_ride_time
  validates_presence_of :total_number_of_rides

end
