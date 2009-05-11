Feature: Manage Synthesizer
  In order to make a list of syntheszers
  As an owner
  I want to create and manage synthesizers
  
  Scenario: Synthesizer List
    Given I have synthesizers titled Roland TB-303, Roland TR-909
    When I go to the list of synthesizers
    Then I should see "Roland TB-303"
    And I should see "Roland TR-909"
    
  Scenario: Create Valid Synthesizer
    Given I have no synthesizers
    And I am on the list of synthesizers
    When I follow "Nieuwe Synthesizer"
    And I fill in "Titel" with "Doepfer A-100"
    And I fill in "Beschrijving" with "Een lowbudget modulair systeem"
    And I press "Aanmaken"
    Then I should see "Nieuwe synthesizer aangemaakt"
    And I should see "Doepfer A-100"
    And I should see "Een lowbudget modulair systeem"
    And I should have 1 synthesizer
    
  Scenario: Show details Synthesizer
    Given I have synthesizers titled Yamaha CS-30
    And I am on the list of synthesizers
    When I follow "Yamaha CS-30"
    Then I should see "Synthesizer Details"
    And I should see "Yamaha CS-30"