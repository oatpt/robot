*** Settings ***
Library           RequestsLibrary

*** Test Cases ***

GET /getcode
    ${response}    GET    http://localhost:5001/getcode
    Should Contain    ${response.content.decode('utf-8')}    Hello, world!


GET /plus/10/20
    ${response}    GET    http://localhost:5001/plus/10/20
    Should Contain    ${response.content.decode('utf-8')}    30

*** Keywords ***

Get On Session
    [Arguments]    ${url}
    ${response}    GET    ${url}
