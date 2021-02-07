Feature: Clear all completed todos
  Scenario: Clear all completed todos
    Given I have the following todos:
      | title              | completed |
      | A test todo        | true      |
      | A second test todo | false     |
      | A third test todo  | true      |
    And I navigate to the home page
    When I clear all completed todos
    Then I see the following todos:
      | title              | completed |
      | A second test todo | false     |
    And I see that I have "1 item left"
