
Feature: Gmail - Mark Email as Starred

  Scenario: Star an email
    Given I have unread emails in my inbox
    When I click the star icon next to an email
    Then the email should be marked as starred

  Scenario: Unstar a starred email
    Given I have starred emails
    When I click the star icon again
    Then the email should no longer be starred

  Scenario: View all starred emails
    Given I am on the Gmail homepage
    When I click on the "Starred" section
    Then I should see a list of all starred emails