

Feature: PayPal - Logout

  Scenario: Logout of PayPal
    Given I am logged into my account
    When I click on my profile icon
    And I select "Log Out"
    Then I should be redirected to the login page

  Scenario: Cancel logout action
    Given I initiated logout
    When I click "Cancel"
    Then I should remain on the dashboard

  Scenario: Force logout after timeout
    Given I am inactive for a long period
    Then I should be automatically logged out for security
