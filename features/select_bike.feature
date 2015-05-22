Feature: Select a certain bike
  As a user
  So that I can take out a bike
  I want to be able to select a bike from its description page

  Background:
    Given I am logged in as a user
    Given bike No. 5 is available
    And I am on Bike Description Page of bike No. 5

  Scenario: Select from bike detail page (happy path)
    When I press "Select"
    Then I should be on the Checkout Page for bike No. 5
    And I should see "bike No. 5"

  Scenario: Select from bike detail page (sad path)
    When bike No. 5 is checked out
    And I press "Select"
    Then I should be on the Invalid Selection Page
