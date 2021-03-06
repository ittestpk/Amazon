*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

*** Variables ***
${BROWSER} =  chrome
*** Test Cases ***
# This is the test case
User must signt in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is V isible  xpath://*[@id="nav-logo"]/a/span[1]
    Input Text  id=twotabsearchtextbox  ferrari 458 italia red
    Click Element  xpath://*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  "ferrari 458 italia red"
    Click Element  xpath://*[@id="search"]/div[1]/div[2]/div/span[3]/div[2]/div[2]/div/span/div/div/div[2]/h2/a/span
    Wait Until Element Is Visible  Xpath://*[@id="breadcrumb-back-link"]
    Click Button  id=add-to-cart-button
    Wait Until Element Is Visible  id=hlb-ptc-btn-native
    Click Element  id=hlb-ptc-btn-native
    Sleep  3s
    Close Browser

*** Keywords ***