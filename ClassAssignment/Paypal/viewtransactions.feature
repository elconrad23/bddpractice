

Feature: PayPal - View Transactions

  Scenario: View recent transactions
    Given I am on the PayPal dashboard
    When I click the "Activity" tab
    Then I should see a list of recent transactions

  Scenario: Filter transactions by date
    Given I am viewing my transaction history
    When I filter by a specific month
    Then I should see transactions only from that month

  Scenario: Search for a transaction
    Given I am on the Activity page
    When I enter a transaction keyword in the search bar
    Then matching transactions should be displayed
