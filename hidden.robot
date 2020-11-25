*** Settings ***

Resource        resource.robot

Suite Setup     Prepare Browser 
Test Setup      Open Obstacle
Test Teardown   Verify Solved

*** Test Cases ***


Wait a moment
    [Tags]  66666
     Click Element                      xpath=//*[@id="clickthis"]

