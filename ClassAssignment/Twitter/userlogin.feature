Feature: User Login on Twitter

  Scenario: Login with valid credentials
    Given I am on the Twitter login page
    When I enter a valid username and password
    And I click the login button
    Then I should be redirected to my feed

  Scenario: Login with wrong password
    Given I am on the Twitter login page
    When I enter a valid username and an incorrect password
    And I click the login button
    Then I should see an error message

  Scenario: Submit login form with empty fields
    Given I am on the Twitter login page
    When I leave the fields empty
    And I click the login button
    Then I should be prompted to enter credentials
