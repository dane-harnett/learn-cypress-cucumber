Feature: Toggle a todo
  Scenario: Complete a todo
    Given I have the following todos:
      | title       | completed |
      | A test todo | false     |
    And I navigate to the home page
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
    When I un-complete "A test todo"
    Then I see the following todos:
      | title       | completed |
      | A test todo | false     |
    And I see that I have "1 item left"

  Scenario: Complete all todos
    Given I have the following todos:
      | title              | completed |
      | A test todo        | true      |
      | A second test todo | false     |
      | A third test todo  | false     |
    And I navigate to the home page
    When I toggle all todos
    Then I see the following todos:
      | title              | completed |
      | A test todo        | true      |
      | A second test todo | true      |
      | A third test todo  | true      |
    And I see that I have "0 items left"

  Scenario: Un-complete all todos
    Given I have the following todos:
      | title              | completed |
      | A test todo        | true      |
      | A second test todo | true      |
      | A third test todo  | true      |
    And I navigate to the home page
    When I toggle all todos
    Then I see the following todos:
      | title              | completed |
      | A test todo        | false     |
      | A second test todo | false     |
      | A third test todo  | false     |
    And I see that I have "3 items left"
