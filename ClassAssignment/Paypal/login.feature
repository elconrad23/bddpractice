Feature: PayPal - Login

  Scenario: Login with valid credentials
    Given I am on the PayPal login page
    When I enter a valid email and password
    And I click the login button
    Then I should be redirected to my PayPal dashboard

  Scenario: Login with invalid password
    Given I am on the PayPal login page
    When I enter a valid email and an incorrect password
    And I click the login button
    Then I should see an error message

  Scenario: Login with empty fields
    Given I am on the PayPal login page
    When I leave the email and password fields empty
    And I click the login button
    Then I should be prompted to fill in required fields
