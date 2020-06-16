*** Settings ***
Documentation  This is Amazon App resource file
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/SearchResult.robot
Resource  ../Resources/PO/SignIn.robot
Resource  ../Resources/PO/TopNav.robot

*** Keywords ***
user is not logged in
    Log  Check to see whether user is logged in
user searches for products
    LandingPage.Load
    TopNav.Search for Products
search results contains relevant products
    SearchResult.Verify Search Completed
user selects a product from search results
    SearchResult.Click Product Link
    Product.Verify Page Loaded
correct product page loads
    Product.Verify Page Loaded
user adds the product to their cart
    Product.Add to Cart
the product is present in cart
    Cart.Verify Product Added
user attempts to checkout
    Cart.Proceed to Checkout
the user is required to sign in
    Signin.Verify Page Loaded