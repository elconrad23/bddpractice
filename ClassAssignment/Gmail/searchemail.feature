Feature: Gmail - Search Email

  Scenario: Search for an existing email by subject
    Given I am on the Gmail inbox page
    When I enter a known subject in the search bar
    And I press Enter
    Then I should see emails matching that subject

  Scenario: Search with no results
    Given I am on the Gmail inbox page
    When I search for a random non-existent string
    Then I should see "No results found"

  Scenario: Search using sender email
    Given I am on the Gmail inbox page
    When I enter a known sender's email in the search bar
    And I press Enter
    Then I should see emails from that sender
