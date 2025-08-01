Feature: Email Sending in Gmail

  Scenario: Send an email successfully
    Given I am logged into Gmail
    When I click the Compose button
    And I enter a valid recipient, subject, and message
    And I click Send
    Then the email should be sent successfully

  Scenario: Attempt to send with no recipient
    Given I am composing a new email
    When I leave the recipient field empty
    And I click Send
    Then I should see an error asking for a recipient

  Scenario: Save email as draft
    Given I am composing a new email
    When I close the email window without sending
    Then the email should be saved in Drafts
