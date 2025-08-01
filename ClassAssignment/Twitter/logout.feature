Feature: Twitter - Logout

  Scenario: Logout from Twitter
    Given I am logged into Twitter
    When I click my profile icon
    And I click "Log out"
    Then I should be redirected to the login page

  Scenario: Cancel logout
    Given I clicked the logout option
    When I press "Cancel"
    Then I should remain logged in

  Scenario: Logout and clear session
    Given I am logged in
    When I log out and clear browser cache
    Then I should be required to log in again
