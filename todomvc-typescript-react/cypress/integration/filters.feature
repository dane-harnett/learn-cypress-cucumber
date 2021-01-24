Feature: Filters
  Scenario: See only not yet completed todos
    Given I have the following todos:
      | title             | completed |
      | A test todo       | false     |
      | Another test todo | true      |
    And I navigate to the home page
    When I filter by "active"
    Then I see the following todos:
      | title       | completed |
      | A test todo | false     |
    And I see that I have "1 item left"

  Scenario: See only completed todos
    Given I have the following todos:
      | title             | completed |
      | A test todo       | false     |
      | Another test todo | true      |
    And I navigate to the home page
    When I filter by "completed"
    Then I see the following todos:
      | title             | completed |
      | Another test todo | true      |
    And I see that I have "1 item left"

  Scenario: See all todos
    Given I have the following todos:
      | title             | completed |
      | A test todo       | false     |
      | Another test todo | true      |
    And I navigate to the home page
    And I filter by "completed"
    When I filter by "all"
    Then I see the following todos:
      | title             | completed |
      | A test todo       | false     |
      | Another test todo | true      |
    And I see that I have "1 item left"
