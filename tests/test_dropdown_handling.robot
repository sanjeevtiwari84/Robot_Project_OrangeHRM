*** Settings ***
Resource    ../keywords/keywords_dropdown_handling.robot
Library     SeleniumLibrary
Resource    ../keywords/setup.robot
Suite Setup    Suite_Setup
Suite Teardown    Suite_Teardown
*** Test Cases ***
Dropdown Handling Test
    Sleep    3
    Handle Dropdown
    Sleep    3
