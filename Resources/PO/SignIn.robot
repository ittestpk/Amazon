*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Verify Page Loaded
    Wait Until Element Is Visible  xpath://*[@id="authportal-main-section"]/div[2]/div/div[1]/form/div/div/div/h1