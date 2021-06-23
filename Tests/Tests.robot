*** Settings ***
Resource    ../Resources/MainPage.robot
Resource    ../Resources/RegisterPage.robot
Resource    ../Resources/LoginPage.robot

Documentation    RobotFramework opencard tests

Test Setup    Open Browser    url=${URL}    browser=${BROWSER}    options=add_argument("--headless")
Test Teardown    Close Browser


*** Variables ***
${BROWSER}  chrome
${URL}  http://localhost


*** Test Cases ***
Check store title
    Check Store Title


Check add to card iPhone
    Add Item To Card
    Check Added Item In Cart


Check search iPhone
    Search Item
    Is Item Founded

Check customer registration
    Click To Registration Button
    Register User


Check customer login
    Click To Login Button
    Login User
