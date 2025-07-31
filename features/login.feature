Feature: User Login

  Scenario: Successful login with correct credentials
    Given the user navigates to the login page
    When the user enters valid credentials
    And clicks the login button
    Then the user should be redirected to the dashboard

  Scenario: Unsuccessful login with wrong credentials
    Given the user navigates to the login page
    When the user enters invalid credentials
    And clicks the login button
    Then the user should see an error message
