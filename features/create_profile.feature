Feature: 
  As a user
  So that I can store my preferences
  I want to create a user profile

Background:
  Given I am on /users/new

Scenario: User accepts terms and conditions but does not fill in identifying information
  When I check "I Accept"
  When I press "Register"
  Then I should see "All fields are required. Please make sure to complete all fields."

Scenario: User fills in registration form and accepts terms and conditions
  When I fill out the form with:
    | user_first_name | Kyle               |
    | user_last_name  | Goodwill           |
    | user_email      | kg1@binghamton.edu |
    | user_bu_id      | 12345              |
    | user_pin        | 123                |
  When I check "I Accept"
  When I press "Register"
  Then I should be on root page
  Then I should see "An account for Kyle Goodwill was successfully created"

Scenario: User only fills in some fields in form and accepts terms and conditions
  When I fill out the form with:
    | user_first_name | Kyle     |
    | user_last_name  | Goodwill |
  When I check "I Accept"
  When I press "Register"
  Then I should see "All fields are required. Please make sure to complete all fields."
