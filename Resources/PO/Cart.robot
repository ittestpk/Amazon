*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Product Added
    Sleep  3s
    Wait Until Element Is Visible  id=hlb-ptc-btn-native


Proceed to Checkout
    Click Element  id=hlb-ptc-btn-native
    Sleep  3s