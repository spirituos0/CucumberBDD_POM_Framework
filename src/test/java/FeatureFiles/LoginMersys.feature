Feature: Login Mersys

  Scenario: Login Admin Account
    Given User is on login page
    When User enter admin credentials
    Then User should login successfully
