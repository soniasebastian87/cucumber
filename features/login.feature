Feature: User Login
  As a user
  I want to log in to the application
  So that I can access my dashboard

  Background:
    Given the user is on the login page

  Scenario: Successful login with valid credentials
    When the user enters a valid username and password
    And clicks the login button
    Then the user should be redirected to the dashboard

  Scenario: Login fails with invalid credentials
    When the user enters an invalid username or password
    And clicks the login button
    Then an error message "Invalid credentials" should be displayed

  Scenario Outline: Login with multiple credentials
    When the user enters username "<username>" and password "<password>"
    And clicks the login button
    Then the user should see the message "<message>"

    Examples:
      | username     | password     | message                 |
      | validUser    | validPass    | Welcome to the dashboard |
      | invalidUser  | invalidPass  | Invalid credentials      |
