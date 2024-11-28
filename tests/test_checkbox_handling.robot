*** Settings ***
Resource    ../keywords/keywords_checkbox_handling.robot
Library     SeleniumLibrary
Resource    ../keywords/setup.robot
Suite Setup    Suite_Setup
Suite Teardown    Suite_Teardown
*** Test Cases ***
Checkbox Check and Uncheck Test
    Sleep    3
    Checkbox Check and Uncheck
    Sleep    3