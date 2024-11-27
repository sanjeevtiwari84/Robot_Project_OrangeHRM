*** Keywords ***
Handle Radio Button
    Click Element    //span[contains(text(),'Radio')]
    Sleep    4
    Click Element    //*[@for="yesRadio"]
    Sleep    2
    Execute JavaScript    document.getElementById("yesRadio").checked = false;
    Sleep    2
