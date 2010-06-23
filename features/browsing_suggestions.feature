Feature: Browse Suggestions
	In order to browse suggestions
	As a visitor
	I want to see suggestions, features and votes
	
	Scenario: List Suggestions
  	Given I am on the homepage
		#When I go to the homepage
		Then I should see "Listing suggestions"
		And I should see "New suggestion"