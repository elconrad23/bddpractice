Feature: Product Search on eBay

  Scenario: Successful search for a known product
    Given I am on the eBay homepage
    When I enter "laptop" in the search bar
    And I click the search button
    Then I should see a list of laptops

  Scenario: Search for a non-existent product
    Given I am on the eBay homepage
    When I enter "flying unicorn couch" in the search bar
    And I click the search button
    Then I should see a message "No results found"

  Scenario: Search with empty input
    Given I am on the eBay homepage
    When I leave the search bar empty
    And I click the search button
    Then I should stay on the same page