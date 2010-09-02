Feature: Browse Suggestions
	In order to browse suggestions
	As a visitor
	I want to see suggestions, features and votes
	
	Scenario: List Suggestions
  	Given I am on the homepage
		Then I should see "Listing suggestions"
		And I should see "New suggestion"
		
	Scenario: Add blank suggestion
		Given I am on the homepage
		When I follow "New suggestion"
		And I press "Create Suggestion"
		Then I should see "2 errors prohibited this document from being saved:"
  
	Scenario: Show suggestion on homepage
		Given a suggestion exists
		When I am on the homepage
		Then I should see "My suggestion"