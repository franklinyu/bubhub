Given /^bike No. (\d+) is available$/ do |id|
  Bike.create( bike_id: id.to_s )
  debugger
  1 + 1
end
