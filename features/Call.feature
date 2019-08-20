@cucumber
Feature: Call feature

    @call
    Scenario: Make a 30 second Call With Another User
        Given I am on Discord login page
        And I login as user1
        And I Start a New Chat
        And I Start a 30 Second Voice Call
