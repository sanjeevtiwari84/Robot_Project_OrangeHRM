*** Settings ***
Library    SeleniumLibrary
Resource    variables/variables.robot
*** Test Cases ***
Suite_Setup
    Open Browser    ${url}    Chrome