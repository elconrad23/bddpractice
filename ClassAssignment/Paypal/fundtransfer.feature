Feature: Send Money on PayPal

  Scenario: Successful transfer to a contact
    Given I am logged into my PayPal account
    When I click Send and choose a valid contact
    And I enter an amount and confirm
    Then the money should be sent successfully

  Scenario: Transfer without entering amount
    Given I am on the Send Money screen
    When I select a contact but leave the amount field empty
    And I click Send
    Then I should be prompted to enter an amount

  Scenario: Attempt transfer with insufficient balance
    Given I am on the Send Money screen
    When I try to send an amount more than my balance
    Then I should see an "Insufficient funds" warning
