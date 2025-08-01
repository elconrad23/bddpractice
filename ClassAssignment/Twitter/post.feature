Feature: Twitter - Posting a Tweet

  Scenario: Post a valid tweet
    Given I am logged into my Twitter account
    When I type a tweet in the tweet box
    And I click the Tweet button
    Then the tweet should be posted successfully

  Scenario: Attempt to post an empty tweet
    Given I am logged into my Twitter account
    When I leave the tweet box empty
    And I click the Tweet button
    Then I should see a warning to enter tweet content

  Scenario: Post a tweet with emojis and hashtags
    Given I am on the homepage
    When I enter a tweet with emojis and hashtags
    And I click Tweet
    Then it should appear in my feed