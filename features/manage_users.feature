Feature: Display all the user accounts for an admin to review
    As an admin
    So I can see the information associated with each account
    I want to see all of the users on a page
    And be able to click an edit button

Background:
    Given the following users exist:
    | id | bu_id    | pin    | first_name | last_name    | email                     | access_level  |
    | 1  | 00309119 | 1031   | Kyle       | Goodwill     | kgoodwi2@binghamton.edu   | 3             |
    | 2  | 00354054 | 4644   | Weronika   | Kowalczyk    | wkowalc1@binghamton.edu   | 3             | 
    | 3  | 00304710 | 1234   | Joanna     | Wallac       | jwallac2@binghamton.edu   | 3             |
    | 4  | 00348099 | 7000   | Htin       | Linn         | hkyaw1@binghamton.edu     | 3             |
    | 5  | 00402129 | 9876   | Bassheva   | Steinberger  | bsteinb1@binghamton.edu   | 3             |
    | 6  | 00337646 | 7393   | Kelsey     | Skaarva      | kskaarv1@binghamton.edu   | 3             |

Scenario: Data for all users
    Given I am on /manage_users
    Then I should see "MANAGE USERS"
    Then I should see "User Table"
    Then I should see "00309119"
    Then I should see "Kyle"
    Then I should see "Goodwill"
    Then I should see "kgoodwi2@binghamton.edu"
    Then I should see "User"
    Then I should see "00354054"
    Then I should see "Weronika"
    Then I should see "Kowalczyk"
    Then I should see "wkowalc1@binghamton.edu"
    Then I should see "00304710"
    Then I should see "Joanna"
    Then I should see "Wallac"
    Then I should see "jwallac2@binghamton.edu"
    Then I should see "00348099"
    Then I should see "Htin"
    Then I should see "Linn"
    Then I should see "hkyaw1@binghamton.edu"
    Then I should see "00402129"
    Then I should see "Bassheva"
    Then I should see "Steinberger"
    Then I should see "bsteinb1@binghamton.edu"
    Then I should see "00337646"
    Then I should see "Kelsey"
    Then I should see "Skaarva"
    Then I should see "kskaarv1@binghamton.edu"

Scenario: Move to a user's edit page
    Given I am on /manage_users
    When I click the edit button for "Kyle"
    Then I should manage account page for "Kyle"
