Feature: Home page
  Scenario: See the home page
    Given I navigate to the home page
    When the home page has loaded
    Then I see the home page

  Scenario: See my existing todos
    Given I have the following todos:
      | title             | completed |
      | A test todo       | false     |
      | Another test todo | true      |
    When I navigate to the home page
    And the home page has loaded
    Then I see the following todos:
      | title             | completed |
      | A test todo       | false     |
      | Another test todo | true      |
    And I see that I have "1 item left"

