*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Completed
    Wait Until Element Is Visible  xpath://*[@id="search"]/span/div/span/h1/div/div[1]/div/div/span[3]

Click Product Link
    Sleep  5s
    Wait Until Element Is Visible  Xpath://*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/span/div/div/div[2]/h2/a/span
    Click Element  Xpath://*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/span/div/div/div[2]/h2/a/span

