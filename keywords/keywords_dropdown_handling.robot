*** Keywords ***
Handle Dropdown
    Go To    ${dropdown_url}
    Sleep    3
    Select From List By Value    id=fruits    2
    Sleep    4
