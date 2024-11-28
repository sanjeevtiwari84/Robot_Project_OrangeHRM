*** Settings ***
Resource    ../keywords/keywords_mouse_hover.robot
Library     SeleniumLibrary
Resource    ../keywords/setup.robot
Suite Setup    Suite_Setup
Suite Teardown    Suite_Teardown
*** Test Cases ***
Mouse Hover Test
    Sleep    3
    Handle Mouse Hover
    Sleep    3
