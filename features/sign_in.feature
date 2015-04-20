Feature: Sign-In
  In order to sign in as a user
  On the sign-in page
  I want to enter my username and be told it is correct

Background:
  Given I am on /sign_in

Scenario: Sign-In Button
  And I fill in "user[first_name]" with "Kyle"
  And I press "Sign-In"
  Then I should be on /valid_user
  

