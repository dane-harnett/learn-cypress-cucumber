Feature: Filters

  Background:
    Given I have the following todos:
      | title             | completed |
      | A test todo       | false     |
      | Another test todo | true      |
    And I navigate to the home page

  Scenario: See only not yet completed todos
    When I filter by "active"
    Then I see the following todos:
      | title       | completed |
      | A test todo | false     |
    And I see that I have "1 item left"

  Scenario: See only completed todos
    When I filter by "completed"
    Then I see the following todos:
      | title             | completed |
      | Another test todo | true      |
    And I see that I have "1 item left"

  Scenario: See all todos
    And I filter by "completed"
    When I filter by "all"
    Then I see the following todos:
      | title             | completed |
      | A test todo       | false     |
      | Another test todo | true      |
    And I see that I have "1 item left"
