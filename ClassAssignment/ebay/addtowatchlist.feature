Feature: Add Item to Watchlist on eBay

  Scenario: Add a listed item to watchlist while logged in
    Given I am logged into my eBay account
    When I search for "wireless mouse"
    And I click on a product from the results
    And I click "Add to Watchlist"
    Then the item should be added to my watchlist

  Scenario: Try to add item to watchlist without logging in
    Given I am on a product page
    When I click "Add to Watchlist"
    Then I should be prompted to log in

  Scenario: Remove item from watchlist
    Given an item is in my watchlist
    When I go to my watchlist
    And I click "Remove" next to the item
    Then the item should be removed from the list