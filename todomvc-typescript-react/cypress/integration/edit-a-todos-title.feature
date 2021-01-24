Feature: Edit a todo's title
  Scenario: Edit a todo's title
    Given I have the following todos:
      | title       | completed |
      | A test todo | false     |
    And I navigate to the home page
    When I choose to edit "A test todo"
    And I submit "A new title" for my edit todo title
    Then I see the following todos:
      | title       | completed |
      | A new title | false     |
