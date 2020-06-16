*** Settings ***
Documentation  This is Gherkin Style Suit
Resource  ../Resources/Common.robot
Resource  ../Resources/Amazon_gherkin.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***

Logged out user must sign in to check out
    [Tags]  Smoke
    Given user is not logged in
    And user searches for products
    And search results contains relevant products
    And user selects a product from search results
    And correct product page loads
    And user adds the product to their cart
    And the product is present in cart
    When user attempts to checkout
    Then the user is required to sign in