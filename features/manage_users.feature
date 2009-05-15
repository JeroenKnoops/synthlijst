@focus
Feature: Manage Users
  In order manage user details
  As a security enthusiast
  I want to edit user profiles only when authorized
  
  Scenario: Show edit link as admin
    Given the following user records
      | username | password | admin |
      | Jeroen   | secret   | false |
      | admin    | secret   | true  |
    And I am logged in as "admin" with password "secret"
    And I am on the list of users
    When I follow "Jeroen"
    When I visit profile for "Jeroen"
    Then I should see "Profiel aanpassen"
    
  Scenario: Hide edit link as guest
    Given the following user records
      | username | password | admin |
      | Jeroen   | secret   | false |
      | admin    | secret   | true  |
    And I am on the list of users
    When I follow "Jeroen"
    When I visit profile for "Jeroen"
    Then I should not see "Profiel aanpassen"
    
  Scenario: Show edit link as owner
    Given the following user records
      | username | password | admin |
      | Jeroen   | secret   | false |
      | admin    | secret   | true  |
    And I am logged in as "Jeroen" with password "secret"
    And I am on the list of users
    When I follow "Jeroen"
    When I visit profile for "Jeroen"
    Then I should see "Profiel aanpassen"  