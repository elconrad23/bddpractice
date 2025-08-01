

Feature: YouTube - Subscribe to Channel

  Scenario: Subscribe to a channel
    Given I am on a channel page and logged in
    When I click the Subscribe button
    Then I should be subscribed to that channel

  Scenario: Unsubscribe from a channel
    Given I am subscribed to a channel
    When I click the Subscribe button again
    Then I should be unsubscribed

  Scenario: Enable notifications
    Given I am subscribed to a channel
    When I click the bell icon and select "All"
    Then I should receive all notifications from that channel
