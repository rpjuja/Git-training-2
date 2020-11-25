*** Settings ***

Resource        resource.robot

Suite Setup     Prepare Browser 
Test Setup      Open Obstacle
Test Teardown   Verify Solved

*** Test Cases ***

Twins
    [Tags]  12952
    
    Wait Until Page Contains Element    xpath=(//a[@id="id"])[2]
    Click Element                       xpath=(//a[@id="id"])[2]

Popup windows
    [Tags]  51130
    
    Wait Until Page Contains Element    xpath=(//a[@id="button"])[1]
    Click Element                       xpath=(//a[@id="button"])[1]