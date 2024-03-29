@US_22
Feature:US_22 Add admin

  Background: log in
    Given User goes to the "https://managementonschools.com/"
    When user clicks on login button
    And user enters the username "AdminProject13"
    And user enters the password "Project13+"
    And user clicks on login
    Then user must see the Add Admin on the page

  @US_22_TC_01
  Scenario: TC_01 User can add admin successfully
    And  User enters a name
    And  User  enters a surname
    And  User enters a birth place
    And  User chooses a gender (clicks on male or female)
    And  User enters a birth date
    And  User enters a phone number as required
    And  User enters a SSN as required
    And  User enters an username
    And  User enters a password as required
    And  User clicks on the submit button
    And user must see the Admin Saved message


  @US_22_TC_02
  Scenario: TC_02 User leaves the blank everything
    And User directly clicks on the submit button
    Then verify that the user sees a red Required warning each box

  @US_22_TC_03
  Scenario: TC_03 Testing the gender section
    And User enters a name
    And User  enters a surname
    And User enters a birth place
    And User leaves the blank gender section
    And User enters a birth date
    And User enters a phone number as required
    And User enters a SSN as required
    And  User enters an username
    And  User enters a password as required
    And  User clicks on the submit button
    Then the user must not be able to add admin


  @US_22_TC_04
  Scenario: TC_04 Testing the year section  with critical years
    And User enters a name
    And  User  enters a surname
    And User enters a birth place
    And User chooses a gender (clicks on male or female)
    And User enters a date (trying critical values)
    And User enters a phone number as required
    And  User enters a SSN as required
    And  User enters an username
    And User enters a password as required
    And User clicks on the submit button
    Then user should not be able to log in with that imposible date


  @US_22_TC_05
  Scenario: TC_05 Testing the SSN part with possibilities
    And User enters a SSN first - missing
    Then must see the "Minimum 11 character (XXX-XX-XXXX)" message
    And User enters a SSN second - missing
    Then must see the "Minimum 11 character (XXX-XX-XXXX)" message
    And User enters more than eleven character
    And  User enters a name
    And  User  enters a surname
    And  User enters a birth place
    And  User chooses a gender (clicks on male or female)
    And  User enters a birth date
    And  User enters a phone number as required
    And  User enters an username
    And  User enters a password as required
    And  User clicks on the submit button
    Then must see the "Please enter a valid SSN number"


  @US_22_TC_06
  Scenario: TC_06 Testing password requirements
    And User enters a password just one char
    Then It has to appear "At least 8 characters" on the below
    And User enters a password all lowercase eight char
    Then It has to appear "One uppercase character" on the below
    And User enters a password all uppercase eight char
    Then It has to appear "One lowecase character" on the below
    And User enters a password with one uppercase but without number
    Then  It has to appear "One number" on the below
