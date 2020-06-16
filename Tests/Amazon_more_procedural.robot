*** Settings ***
Documentation  This is some basic info about whole suit
# notice we're not longer referencing SeleniumLibrary in our script
Resource  ../Resources/Common.robot    #necessary for setup and teardown
Resource  ../Resources/Amazon_proc.robot    #necessary for lower level keywords in test
Suite Setup  Common.Insert Testing Data    # This keyword is defined in the common.robot and will execute before all test cases
Test Setup  Common.Begin Web Test   # This keyword is defined in the common.robot and will execute before every test case
Test Teardown  Common.End Web Test   # This keyword is defined in the common.robot and will execute after every test case
Suite Teardown  Common.Cleanup Testing Data    # # This keyword is defined in the common.robot and will execute after  all test cases

*** Test Cases ***
Logged out user can search the products
    [Tags]  Smoke
    Amazon_proc.Search for Products

Logged out user can view a product
    [Tags]  Smoke
    Amazon_proc.Search for Products
    Amazon_proc.Select Product from Search Results

Logged out user can add product to cart
    [Tags]  Smoke
    Amazon_proc.Search for Products
    Amazon_proc.Select Product from Search Results
    Amazon_proc.Add Product to Cart

Logged out user must sign in to check out
    [Tags]  Smoke
    Amazon_proc.Search for Products
    Amazon_proc.Select Product from Search Results
    Amazon_proc.Add Product to Cart
    Amazon_proc.Begin Checkout