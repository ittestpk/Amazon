*** Settings ***
Documentation  This is common resource file
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  chrome
End Web Test
    Close Browser
Insert Testing Data
    Log  I am setting up a test data
Cleanup Testing Data
    Log  I am cleaning up a test data