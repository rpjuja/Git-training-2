*** Settings ***
Library     SeleniumLibrary   run_on_failure=Nothing
Library     DateTime
Library     String
Library     XML
Library     OperatingSystem
Library     Collections


*** Variables ***
${SERVER}         https://obstaclecourse.tricentis.com/Obstacles/
${BROWSER}        Chrome
${DRIVER}         chromedriver.exe
${DELAY}          0

*** Keywords ***
Prepare Browser 
    Open Browser    ${SERVER}List    ${BROWSER}   executable_path=${DRIVER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Open Obstacle
    Go To   ${SERVER}${TEST TAGS}[0]

Verify Solved
    Wait Until Page Contains    Good job!