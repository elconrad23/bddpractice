Feature: Use Filters in eBay Search

  Scenario: Filter by price range
    Given I have searched for "headphones"
    When I set the minimum price to $20 and maximum to $50
    And I apply the price filter
    Then I should only see results within that price range

  Scenario: Filter by brand
    Given I have searched for "smartwatch"
    When I select "Samsung" under the Brand filter
    Then I should only see Samsung smartwatches

  Scenario: Filter by item condition
    Given I have searched for "used books"
    When I apply the "Used" condition filter
    Then all listed items should be marked as "Used"