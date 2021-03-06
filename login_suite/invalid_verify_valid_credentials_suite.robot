*** Settings ***
Documentation   This suite file verifies all test cases related to Invalid credentials

Library     SeleniumLibrary
Library     OperatingSystem

Resource    ../base/common_functionality.resource
Resource    ../pages/login_page.resource

Test Setup      Launch Browser
Test Teardown   End Browser

Test Template       Verify Invalid Credentials Template

*** Test Cases ***
TC1     john   john123    Dutch    Invalid username or password
TC2     peter   peter123   Danish    Invalid username or password
TC3     Mark    Mark123     Greek   Invalid username or password

*** Keywords ***
Verify Invalid Credentials Template
     [Arguments]     ${username}     ${password}     ${language}  ${expected_title}
     Enter Username    ${username}
     Enter Password    ${password}
     Select Lanugage Using Label    {$language}
     Click Login
     Validate Invalid Error Message    ${expected_error}