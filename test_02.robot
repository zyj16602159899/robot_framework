*** Settings ***
Library    DateTime    
Resource    用户关键字集.robot
Variables    外部变量.py

*** Variables ***
${str_2}   haha
@{list_2}    3    4    88
&{dict_2}    age=22    score=100
    

*** Test Cases ***
用例1-输出hello,world
    Log    hello,world    #normal info message
用例2-异常处理
    ${Status}=    Run Keyword And Return Status    Log    hello,word        
用例3-获取当前时间
    ${data}=    Get Current Date    
用例4-两数求和
    ${sum}    两数求和    2    7
用例5-RF的变量
    ${str}    Set Variable    hello,world
    @{list}    Create List    a    bb    333
    &{dict}    Create Dictionary    key    value    name    tony
    &{dict1}    Create Dictionary    key=value    name=tony
    Log    ${str}    
    Log    ${list}    
    Log    ${list[2]}    
    Log    ${dict}    
    Log    ${dict.name}    
    Log    ${dict1}
    Log    ${str_2}    
    Log    ${list_2}    
    Log    ${dict_2}
用例6-从变量文件中读取变量
    Log    ${var_1}    
    Log    ${LIST__mylist[0]}
    Log    ${DICT__mydict.name}