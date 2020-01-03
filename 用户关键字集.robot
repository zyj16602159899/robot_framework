*** Keywords ***
两数求和    [Arguments]    ${a}    ${b}
    [Return]    ${sum}
    [Documentation]    两数求和
    ...    a:任意数字
    ...    
    ...    b:任意数字
    ...    
    ${sum}    Evaluate    ${a}+${b}  