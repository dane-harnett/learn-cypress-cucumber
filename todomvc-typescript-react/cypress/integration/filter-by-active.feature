Feature: Filter by active
  Scenario: See only not yet completed todos
    Given I have the following todos:
      | title             | completed |
      | A test todo       | false     |
      | Another test todo | true      |
    And I navigate to the home page
    And the home page has loaded
    When I filter by active
    Then I see the following todos:
      | title       | completed |
      | A test todo | false     |
    And I see that I have "1 item left"
