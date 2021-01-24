Feature: Add a todo
  Scenario: Add my first todo
    Given I have no todos
    And I navigate to the home page
    When I submit "An example todo" for my new todo title
    Then I see the following todos:
      | title           | completed |
      | An example todo | false     |
    And I see that I have "1 item left"

