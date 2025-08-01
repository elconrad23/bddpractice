Feature: PayPal - Request Money

  Scenario: Request money from a contact
    Given I am logged into my PayPal account
    When I click "Request"
    And I select a contact
    And I enter an amount and click Request
    Then the request should be sent

  Scenario: Request without selecting a contact
    Given I am on the Request Money screen
    When I enter an amount but no contact
    And I click Request
    Then I should be prompted to select a recipient

  Scenario: View pending requests
    Given I have sent money requests
    When I go to the Activity tab
    Then I should see the list of pending requests
