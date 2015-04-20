Feature: As a user
         So that I can register an account with the Binghamton Bike Share
         I want a registration page

Background:
    Given I am on /users/new

Scenario: Display user account registration fields
    Then I should see "Register with Bikeshare"
    Then I should see "All fields are required. Please make sure to complete all fields."
    Then I should see "First Name"
    Then I should see "Last Name"
    Then I should see "BMail Address"
    Then I should see "BU ID-Number"
    Then I should see "Pin Number"
    Then I should see "BU Bikeshare Terms and Conditions"
    Then I should see "Section I. Rules"
    Then I should see "Article 1. Cyclist shall abide by the following rules:"
    Then I should see "(a). Users must return bike equipment and keys within the time slot assigned when signing out equipment. No bikes can be kept overnight;"
    Then I should see "(b). All bikes and helmets must be returned locked properly to the same location checked out from;"
    Then I should see "(c). Helmets are to be worn and are the responsibility of the participant to obtain and wear;"
    Then I should see "(d). Participants should inform staff of problems with individual bicycles and related equipment;"
    Then I should see "(e). Participants should be courteous to to other bikers and pedestrians;"
    Then I should see "(f). All participants must comply with related local, state, and federal laws;"
    Then I should see "(g). Abuse of the program guidelines will result in the loss of the bike share privileges."
    Then I should see "Section II. Damages"
    Then I should see "Article 1. Cyclists shall not be responsible for damages or failures of the the equipment resulting from normal wear and tear."
    Then I should see "Article 2. Cyclist shall be respons responsibleible for:"
    Then I should see "(a). Any and all damages resulting from negligent or wrongful use or operation of the equipment. Damages may include, but are not limited to, repairs, parts, and replacement costs and;"
    Then I should see "(b). Paying the full replacement cost of lost or stolen equipment. By checking 'I Accept', you acknowledge that any charges may be charged directly to your Binghamton University account."
    Then I should see "Section III. Liability"
    Then I should see "Article 1. Cyclist shall acknowledge that bicycling can be a hazardous activity that involves risks that may be injurious or fatal. Cyclist agrees to defend, indemnify and hold harmless Binghamton University, and its subsidiaries and related entities, as well as their respective trustees, officers, directors, employees, and students, together with their successors and assigns, from and against any and all claims, suits, liabilities, costs and injury, loss, and damage arising out of cyclist's use of equipment or participation in the program, and;"
    Then I should see "Article 2. Cyclist hereby acknowledges and agrees that Binghamton University is not responsible for the condition of the equipment; therefore, cyclist’s acceptance of the equipment on an “as is” basis. Binghamton University hereby disclaims any and all expressed and implied warranties, including without limitation those of fitness for intended use, and Binghamton University shall not be liable for consequential, incidental or indirect damages caused by the equipment of cyclist’s use thereof."
    Then the checkbox "I Accept" should be unchecked
    Then I should see "I Accept"
    
Scenario: Display the register button
    When I check "I Accept"
    Then I should see the "Register" button
