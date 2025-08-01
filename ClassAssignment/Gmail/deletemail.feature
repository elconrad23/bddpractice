Feature: Gmail - Delete Email

  Scenario: Delete an email from inbox
    Given I have an email I want to remove
    When I click the checkbox and select delete
    Then the email should be moved to Trash

  Scenario: Undo a deletion
    Given I just deleted an email
    When I click "Undo"
    Then the email should be restored to the inbox

  Scenario: Permanently delete from Trash
    Given I have emails in the Trash folder
    When I select an email and click "Delete forever"
    Then the email should be permanently removed
