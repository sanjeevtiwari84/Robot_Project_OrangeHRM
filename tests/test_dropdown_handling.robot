*** Settings ***
Resource    ../variables/variables.robot
Resource    ../keywords/keywords_dropdown_handling.robot
Library     SeleniumLibrary

*** Test Cases ***
Dropdown Handling Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Handle Dropdown
    Close Browser
