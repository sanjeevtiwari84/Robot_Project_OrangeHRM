*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${username}    Admin
${password}    admin123
${username_locator}    //*[@name="username"]
${EXTRACTED_TEXT}=    None
${var}=    None
*** Test Cases ***
TestLogin
    [Documentation]    Test_Case_For_Login_Check
    [Tags]    Login
    LoginToApplication
    Admin
    PIM
    Leave
    Time
    Recruitment
#Validation_Username_Element
#    Validation
#    Close Browser

*** Keywords ***
LoginToApplication
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Title Should Be    OrangeHRM
    Sleep    3
    Element Should Be Visible    ${username_locator}
    Element Should Be Enabled    ${username_locator}
    Input Text    ${username_locator}    ${username}
    Input Password    //*[@name="password"]    ${password}
    Click Button    //*[@type="submit"]
    Sleep    4
Admin
    Click Element    //span[text()='Admin']
    Sleep    3
    Input Text    (//*[@class="oxd-input oxd-input--active"])[2]    Admin
    Sleep    2
    Click Element    (//*[@class="oxd-icon bi-caret-down-fill oxd-select-text--arrow"])[1]
    Sleep    3
#    Execute Javascript    var element = document.evaluate('(//*[@class="oxd-select-text-input"])[1]', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue; element.innerText = 'ESS'
    Click Element    //span[contains(text(),'ESS')]
    Sleep    3
    Input Text    (//*[@placeholder="Type for hints..."])[1]    Rahul
    Sleep    3
    Click Element    (//span[contains(text(), 'Rahul')])[1]
    Sleep    3
    Click Element    (//*[@class="oxd-icon bi-caret-down-fill oxd-select-text--arrow"])[2]
    Sleep    3
    Click Element    //span[contains(text(),'Enabled')]
#    Execute Javascript    var element = document.evaluate('(//*[@class="oxd-select-text-input"])[2]', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue; element.innerText = 'Enabled'
    Sleep    3
    Click Button    //*[@class="oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space"]
    Sleep    3

PIM

    Click Element    //span[text()='PIM']
    Sleep    3

    Input Text    (//div[contains(@class, "oxd-a")])[1]//input    Sanjeev

    Input Text    (//*[@class="oxd-input oxd-input--active"])[2]    29901
    Sleep    3


    Click Element    (//*[@class="oxd-icon bi-caret-down-fill oxd-select-text--arrow"])[1]
    Execute JavaScript    document.querySelectorAll(".oxd-select-text-input")[0].innerText = "Over-Time"
    Sleep    3


    Click Element    (//*[@class="oxd-icon bi-caret-down-fill oxd-select-text--arrow"])[2]
    Execute JavaScript    document.querySelectorAll(".oxd-select-text-input")[1].innerText = "Current Employees Only"
    Sleep    3

#    Input Text    (//div[contains(@class, "oxd-a")]//input)[2]

    Click Element    (//*[@class="oxd-icon bi-caret-down-fill oxd-select-text--arrow"])[3]
  #  Select From List By Label    //*[contains(text(),"Chief Executive Officer")]    Chief Executive Officer
    Execute JavaScript    document.querySelectorAll(".oxd-select-text-input")[2].innerText = "Automation Tester"
    Sleep    3

#    Click Element    (//*[@class="oxd-icon bi-caret-down-fill oxd-select-text--arrow"])[4]
    Click Element    //*[contains(text(),"Sub Unit")]/../..//i
    Execute JavaScript    document.querySelectorAll(".oxd-select-text-input")[3].innerText = "Quality Assurance"
    Sleep    3
    # Submit the form
    Click Button    //*[@class="oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space"]
    Sleep    3

Leave
    Click Element    //span[text()='Leave']
    Sleep    3
    Click Element    (//*[@class="oxd-icon bi-calendar oxd-date-input-icon"])[1]
    Sleep    3
    Click Element    (//*[@class="oxd-icon bi-caret-down-fill oxd-icon-button__icon"])[1]
    Sleep    3
    Click Element    //li[text() = 'April']
    Sleep    3
    Click Element    (//*[@class="oxd-icon bi-caret-down-fill oxd-icon-button__icon"])[2]
    Sleep    3
    Click Element    //li[text() = '2024']
    Sleep    3
    Click Element    //*[@class="oxd-calendar-date" and text()= '10']
    Sleep    3

    Click Element    (//*[@class="oxd-icon bi-calendar oxd-date-input-icon"])[2]
    Sleep    3
    Click Element    (//*[@class="oxd-icon bi-caret-down-fill oxd-icon-button__icon"])[1]
    Sleep    3
    Click Element    //li[text() = 'April']
    Sleep    4
    Click Element    (//*[@class="oxd-icon bi-caret-down-fill oxd-icon-button__icon"])[2]
    Sleep    3
    Click Element    //li[text() = '2024']
    Sleep    3
    Click Element    //*[@class="oxd-calendar-date" and text()= '12']
    Sleep    3

    Click Element    (//*[@class="oxd-icon bi-caret-down-fill oxd-select-text--arrow"])[1]
    Sleep    3
    Click Element    //span[contains(text(),'Scheduled')]
    Sleep    3

    Click Element    (//*[@class="oxd-icon bi-caret-down-fill oxd-select-text--arrow"])[2]
    Sleep    3
    Click Element    //span[contains(text(),'CAN - FMLA')]
    Sleep    3

#    Input Text    (//*[@placeholder="Type for hints..."])[1]    Tag
#    Sleep    3
#    Click Element    //span[contains(text(),'Tag')]
#    Sleep    3

    Click Element    (//*[@class="oxd-icon bi-caret-down-fill oxd-select-text--arrow"])[3]
    Sleep    3
    Click Element    //span[contains(text(),'Engineering')]
    Sleep    3
    Click Element    //*[@class="oxd-switch-input oxd-switch-input--active --label-right"]
    Sleep    3
    Click Button    //*[@class="oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space"]
    Sleep    3

Time
    Click Element    //span[text() = 'Time']
    Sleep    3
    ${EXTRACTED_TEXT}=    Get Text    (//div[@class="oxd-table-cell oxd-padding-cell"]//div)[1]
    Input Text    (//*[@placeholder="Type for hints..."])    ${EXTRACTED_TEXT}
    Sleep    3
    Click Element    //span[contains(text(),'${EXTRACTED_TEXT}')]
    Sleep    3
    Click Element    //*[@class="oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space"]
    Sleep    3

Recruitment
    Click Element    //span[text() = 'Recruitment']
    Sleep    3
    Click Element    //*[text() = 'Job Title']/../..//i
    sleep    3
    Click Element    //span[text() = 'Automaton Tester']
    Sleep    3
    Click Element    //*[text() = 'Vacancy']/../..//i
    Sleep    3
    Click Element    //span[text() = 'Junior Account Assistant']
    Sleep    3
    Click Element    //*[text() = 'Hiring Manager']/../..//i
    Sleep    3
#    Click Element    //span[text() = 'VIVEKPrajwal12 MATTANCHERRYPatil12']
    Sleep    2
    Click Element    //*[text() = 'Status']/../..//i
    Sleep    3
    Click Element    //span[text() = 'Shortlisted']
    Sleep    2
#    ${var}=    Get Text    //div[@class="oxd-table-body"]/div/div/div[3]
#    Sleep    2
#    Input Text    //*[@placeholder="Type for hints..."]    ${var}
#    Sleep    2
#    Click Element    //span[contains(text(),'${var}')]
#    Sleep    2
    Input Text    //*[@placeholder="Enter comma seperated words..."]    Hello,How,are,you
    Sleep    2
    Click Element    //label[text()= 'Date of Application']/../../..//i[@class="oxd-icon bi-calendar oxd-date-input-icon"]
    Sleep    3
    Click Element    (//*[@class="oxd-calendar-selector-month-selected"])
    Sleep    3
    Click Element    //li[text() = 'April']
    Sleep    4
    Click Element    //*[@class="oxd-calendar-selector-year-selected"]//i
    Sleep    3
    Click Element    //li[text() = '2024']
    Sleep    3
    Click Element    //*[@class="oxd-calendar-date" and text()= '10']
    Sleep    3
    Click Element    (//*/../../..//i[@class="oxd-icon bi-calendar oxd-date-input-icon"])[2]
    Sleep    3
    Click Element    (//*[@class="oxd-calendar-selector-month-selected"])
    Sleep    3
    Click Element    //li[text() = 'April']
    Sleep    4
    Click Element    //*[@class="oxd-calendar-selector-year-selected"]//i
    Sleep    3
    Click Element    //li[text() = '2024']
    Sleep    3
    Click Element    //*[@class="oxd-calendar-date" and text()= '14']
    Sleep    3
    Click Element    //*[contains(text(),"Method of Application")]/../..//i
    Sleep    2
    Click Element    //span[text()= 'Manual']
    Sleep    2
    Click Element    //*[@class="oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space"]


    


    
    Click Element   //span[text()='Dashboard'] 
    Sleep    3

























#Another way to select element other than using javaScript
##    Select From List By Label
#     Click Element    (//*[@class="oxd-main-menu-item"])[2]
#     Sleep    4
#     Click Element    (//*[@class="oxd-icon bi-caret-down-fill oxd-select-text--arrow"])[3]
#     Sleep    4
#     Click Element    //*[contains(text(),"Sub Unit")]/../..//i//div[@class='oxd-select-dropdown']//div[@role='option']//span[text()='Automation Tester']
#     Sleep    4
#
#Validation
#    Open Browser    ${url}    chrome
#    Maximize Browser Window
#    Title Should Be    OrangeHRM
#    Sleep    5
#    Element Should Not Be Visible    ${username_locator}
