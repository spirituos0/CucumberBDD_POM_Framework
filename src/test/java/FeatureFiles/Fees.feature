Feature: Fees Functionality

  Background:
    Given User is on login page
    When User enter admin credentials
    Then User should login successfully

  Scenario Outline: Add fees
    And User create Fee "<name>" and "<code>" and "<intCode>" and "<priority>"
    Then Success message should be displayed

    Examples:
      | name     | code    | intCode   | priority |
      | VikaFee1 | 0101230 | paypal    | 754      |
      | VikaFee2 | 1101231 | applePay  | 764      |
      | VikaFee3 | 2101230 | googlePay | 774      |

  Scenario Outline: Edit Fees
    And User edit Fee "<existingFeeName>" and change it to "<newFeeName>"
    Then Success message should be displayed

    Examples:
      | existingFeeName | newFeeName        |
      | VikaFee1        | Updated Vika Fee1 |
      | VikaFee2        | Updated Vika Fee2 |
      | VikaFee3        | Updated Vika Fee3 |