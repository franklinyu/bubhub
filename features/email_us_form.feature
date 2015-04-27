Feature: Email Us
  As a user
  So I can contact the Bike Share Team
  I want to be able to email the Bike Share Club with comments and questions

Scenario: Contact us page should contain the email form
  Given I am on /contact_us
  Then I should see "YOUR NAME (required)"
  Then I should see "YOUR EMAIL (required)"
  Then I should see "SUBJECT"
  Then I should see "YOUR MESSAGE"
  Then I should see the "Send" button
