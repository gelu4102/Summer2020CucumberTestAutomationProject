
@login
Feature: As user I want to be able to login under different roles
# this is a comment

  Scenario: Login as a sales manger
    Given user is on the login page
    When user logs in
    Then user should see dashboard page

  @parametrized_test @smoke_test
  Scenario: Parametrized login
    Given user is on the login page
    When user logs in as a "store manager"
    Then user should see dashboard page
#"driver" - is a parameter. "" allows to do test parametrization which helps to re-use test steps

  @negative_login
  Scenario: Invalid password
    Given user is on the login page
    When user logs in with "storemanager85" username and "wrong" password
    Then user verifies that "Invalid user name or password." message is displayed