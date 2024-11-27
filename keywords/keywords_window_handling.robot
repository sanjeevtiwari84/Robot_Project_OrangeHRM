*** Keywords ***
Handle New Tabs
    Capture Page Screenshot    ${screenshot1}
    Sleep    3
    Execute JavaScript    window.open();
    Sleep    3
    Switch Window    NEW
    Sleep    3
    Go To    ${textbox_url}
    Sleep    3
    Capture Page Screenshot    ${screenshot2}
    Sleep    4
