Feature: Check the display of the /join page
	As a web developer
	So I can view the join BikeShare page 
	I want to see the join BikeShare page 

Background:
	Given I am on /join
	
Scenario: Content for Join BikeShare page 
	Then I should see "Rack location:"
	Then I should see "Number of Bikes"
	Then I should see "Extra notes about the bike."
