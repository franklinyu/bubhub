Feature: Check the display of the /look_up page
	As a user
	So that I can find if a bike is in a rack
	I want to look up a bike

Background:
	Given I am on /bike_look_up

Scenario: User inputs a Bike ID that is in the system
	fill_in "Bike ID", with: "123"
	When I press "Look Up"
	Then the response should be "Bike is at location LOCATION"

Scenario: User inputs a Bike ID that is not in the system or currently out
	fill_in "Bike ID", with: "456"
	When I press "Look Up"
	Then the response should be "Bike is currently out"

Scenario: User clicks the list of all bikes list
	page.should have_link(link, :href =>"/bike_list" )
