*** Settings ***
Documentation  This is Amazon App resource file
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/SearchResult.robot
Resource  ../Resources/PO/SignIn.robot
Resource  ../Resources/PO/TopNav.robot

*** Keywords ***
Search for Products
    LandingPage.Load
    TopNav.Search for Products
    SearchResult.Verify Search Completed

Select Product from Search Results
    SearchResult.Click Product Link
    Product.Verify Page Loaded

Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed to Checkout
    Signin.Verify Page Loaded