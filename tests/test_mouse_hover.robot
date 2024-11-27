*** Settings ***
Resource    ../variables/variables.robot
Resource    ../keywords/keywords_mouse_hover.robot
Library     SeleniumLibrary

*** Test Cases ***
Mouse Hover Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Handle Mouse Hover
    Close Browser
