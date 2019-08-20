@cucumber
Feature: Server features

    
    @Server
    Scenario: Join existing server
        Given I am on Discord login page
        And I login as user1
        Then I see that login was successful
        Then Join existing server
        When I search for test server
        And I press view
        Then I join the server

        