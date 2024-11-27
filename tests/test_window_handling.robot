*** Settings ***
Resource    ../variables/variables.robot
Resource    ../keywords/keywords_window_handling.robot
Library     SeleniumLibrary

*** Test Cases ***
Window Handling Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Handle New Tabs
    Close Browser
