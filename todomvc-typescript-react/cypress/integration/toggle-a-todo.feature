Feature: Toggle a todo
  Scenario: Complete a todo
    Given I have the following todos:
      | title       | completed |
      | A test todo | false     |
    And I navigate to the home page
    And the home page has loaded
    When I complete "A test todo"
    Then I see the following todos:
      | title       | completed |
      | A test todo | true      |
    And I see that I have "0 items left"

  Scenario: Un-complete a todo
    Given I have the following todos:
      | title       | completed |
      | A test todo | true      |
    And I navigate to the home page
    And the home page has loaded
    When I un-complete "A test todo"
    Then I see the following todos:
      | title       | completed |
      | A test todo | false     |
    And I see that I have "1 item left"

