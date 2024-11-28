*** Settings ***
Resource    ../keywords/keywords_radio_button_handling.robot
Library     SeleniumLibrary
Resource    ../keywords/setup.robot
Suite Setup    Suite_Setup
Suite Teardown    Suite_Teardown
*** Test Cases ***
Radio Button Test
    Handle Radio Button
