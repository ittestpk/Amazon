*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load
    Launch URL

Launch URL
    Go To  http://www.amazon.com
    Maximize Browser Window
    Wait Until Element Is Visible  xpath://*[@id="nav-logo"]/a/span[1]