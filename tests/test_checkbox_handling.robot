*** Settings ***
Resource    ../variables/variables.robot
Resource    ../keywords/keywords_checkbox_handling.robot
Library     SeleniumLibrary

*** Test Cases ***
Checkbox Check and Uncheck Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Checkbox Check and Uncheck
    Close Browser
