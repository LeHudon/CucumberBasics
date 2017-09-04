Feature: LoginFeature
  This feature deals with the login functionality of the application

  Scenario: Login to site with correct UserName and Password
    Given I navigate to the login page
    And I enter the users email address as Email:admin
    And I enter the following for Login
      | username | password      |
      | admin    | adminpassword |
    And I click login button
    Then I should see userform page

  Scenario Outline: Login with correct username and password using Scenario outline
    Given I navigate to the login page
    And I enter <username> and <password>
    And I click login button
    Then I should see userform page

    Examples:
      | username | password   |
      | execute  | automation |
      | admin    | admin      |
      | testing  | qa         |