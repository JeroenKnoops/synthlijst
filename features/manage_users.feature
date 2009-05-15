@focus
Feature: Manage Users
  In order manage user details
  As a security enthusiast
  I want to edit user profiles only when authorized
  
  Scenario Outline: Show or hide edit link
    Given the following user records
      | username | password | admin |
      | Jeroen   | secret   | false |
      | admin    | secret   | true  |
    Given I am logged in as "<login>" with password "secret"
    And I am on the list of users
    When I follow "<profile>"
    # When I visit profile for "<profile>"
    Then I should <action>

    Examples:
      | login  | profile | action                      |
      | admin  | Jeroen  | see "Profiel aanpassen"     |
      | Jeroen | Jeroen  | see "Profiel aanpassen"     |
      |        | Jeroen  | not see "Profiel aanpassen" |
      | Jeroen | admin   | not see "Profiel aanpassen" |
