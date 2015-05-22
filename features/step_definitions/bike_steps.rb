Given /^bike No. (\d+) is available$/ do |id|
  # assume '1' stands for a rack
  bike = Bike.create!( bike_id: id.to_s, location_id: '1' )
end

When /^bike No.\s?(\d+) is checked out$/ do |id|
  bike = Bike.find_by( bike_id: id )
  bike.location_id = '-1' # assumen that this means checked out
  bike.save!
end
