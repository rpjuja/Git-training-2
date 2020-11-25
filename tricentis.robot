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

Tomorrow
    [Tags]  19875

    ${datetime}=    Get Current Date    time_zone=local     increment=1 day     result_format=datetime
    Input Text      id=datefield    ${datetime.day}.${datetime.month}.${datetime.year}

Popup windows
    [Tags]  51130
    
    Wait Until Page Contains Element    xpath=(//a[@id="button"])[1]
    Click Element                       xpath=(//a[@id="button"])[1]
