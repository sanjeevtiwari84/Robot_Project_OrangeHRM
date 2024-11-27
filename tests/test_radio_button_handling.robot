*** Settings ***
Resource    ../variables/variables.robot
Resource    ../keywords/keywords_radio_button_handling.robot
Library     SeleniumLibrary

*** Test Cases ***
Radio Button Test
    Open Browser    ${radio_url}    ${browser}
    Maximize Browser Window
    Handle Radio Button
    Close Browser
