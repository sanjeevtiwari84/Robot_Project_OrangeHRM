*** Settings ***
Resource    ../variables/variables.robot
Resource    ../keywords/keywords_window_handling.robot
Library     SeleniumLibrary
Resource    ../keywords/setup.robot
Suite Setup    Suite_Setup
Suite Teardown    Suite_Teardown
*** Test Cases ***
Window Handling Test
    Handle New Tabs