*** Settings ***
Documentation      This suit file handles all the test case related to the
...     valid credentials
Library     SeleniumLibrary
Resource    ../base/common_functionality.resource
Resource    ../pages/login_page.resource
Resource    .../pages/main_page.resource

Test Setup      Launch Browser
Test Teardown   End Browser

*** Test Cases ***
TC1

*** Keywords ***
Verify Valid Credentials Test
    [Arguments]    ${username}    ${password}    ${language}    ${expected_title}
    Enter Username    ${username}
    Enter Password    ${password}
    Select Lanugage Using Label    ${language}
    Click Login
    Title Should Be    ${expected_title}