*** Settings ***
Documentation      This suit file handles all the test case related to the
...     valid credentials
Library     SeleniumLibrary

*** Test Cases ***
Verify Valid Credentials Test
    Open Browser      browser=chrome        executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.openemr.io/b/openemr
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element    xpath=//button[@type='submit']
    Title Should Be    OpenEMR
    Close Browser