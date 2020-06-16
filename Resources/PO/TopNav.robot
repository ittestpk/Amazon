*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Search for Products
    Input Text  id=twotabsearchtextbox  ferrari 458 italia red
    Click Element  xpath://*[@id="nav-search"]/form/div[2]/div/input