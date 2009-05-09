Feature: Manage Synthesizer
  In order to make a list of syntheszers
  As an owner
  I want to create and manage synthesizers
  
  Scenario: Synthesizer List
    Given I have synthesizers titled TB-303, TR-909
    When I go to the list of synthesizers
    Then I should see "TB-303"
    And I should see "TR-909"
    