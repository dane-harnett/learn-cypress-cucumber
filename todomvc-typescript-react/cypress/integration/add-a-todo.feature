Feature: Add a todo
  Scenario Outline: Add my first todo <title>
    Given I have no todos
    And I navigate to the home page
    When I submit "<title>" for my new todo title
    Then I see the following todos:
      | title   | completed |
      | <title> | false     |
    And I see that I have "1 item left"
    Examples:
      | title               |
      | First example todo  |
      | Second example todo |

