*** Settings ***
Documentation    this file handle all the details of the login page OpenEMR

Library    SeleniumLibrary

*** Variables ***
${USERNAME_LOCATOR}    id=authUser
${PASSWORD_LOCATOR}    id=clearPass
${LANGUAGE_LOCATOR}    name=lanuageChoice
${LOGIN_LOCATOR}    xpath=//button[@type='submit']
${ERROR_LOCATOR}    xpath=//div[contains(text(),'Invalid')]

*** Keywords ***
Enter Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_LOCATOR}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Password    ${PASSWORD_LOCATOR}    ${password}

Select Lanugage Using Label
       [Arguments]    ${language}
       Select From List By Label    ${LANGUAGE_LOCATOR}    ${language}

Click Login
        Click Element    ${LOGIN_LOCATOR}

Validate Invalid Error Message
    [Arguments]    ${expected_error}
    Element Should Contain   ${ERROR_LOCATOR}    ${expected_error}