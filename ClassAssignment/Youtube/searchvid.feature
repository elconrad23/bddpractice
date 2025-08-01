Feature: YouTube - Video Search

  Scenario: Search for a known video
    Given I am on the YouTube homepage
    When I enter "How to build a website" in the search bar
    And I click the search icon
    Then I should see a list of matching videos

  Scenario: Search for a non-existent video
    Given I am on the YouTube homepage
    When I enter "banana spaceship unicorn" in the search bar
    And I click the search icon
    Then I should see no results or a relevant message

  Scenario: Search with blank input
    Given I am on the YouTube homepage
    When I click the search icon without typing anything
    Then I should remain on the homepage or see trending videos
