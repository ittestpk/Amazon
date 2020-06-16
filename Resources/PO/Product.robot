*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Element Is Visible  Xpath://*[@id="breadcrumb-back-link"]

Add to Cart
    Click Button  id=add-to-cart-button