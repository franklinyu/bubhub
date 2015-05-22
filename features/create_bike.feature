Feature:
  As an Admin
  To populate the database
  I want to add a bike

Background:
  Given I am on /bikes/bike_management

Scenario: User fills in required fields
  When I fill out the form with:
  | bike_bike_id | 10 |
  | bike_bike_serial_num | 1234-456-789-1337 |
  | bike_bike_height | 44 |
Then I should see "Available bikes"

Scenario: User fills in registration form and accepts terms and conditions
When I fill out the form with:
| bike_bike_description | gold frame, gold chain, gold errythang |
Then I should see "Please fill in all fields marked with a *."
