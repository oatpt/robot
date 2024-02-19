*** Settings ***
Library           RequestsLibrary

*** Test Cases ***



GET /plus/10/20
    ${response}    GET    http://localhost:5001/plus/10/20
    Should Contain    ${response.content.decode('utf-8')}    30

GET /plus/0/20
    ${response}    GET    http://localhost:5001/plus/0/20
    Should Contain    ${response.content.decode('utf-8')}    20

GET /plus/-10/20
    ${response}    GET    http://localhost:5001/plus/-10/20
    Should Contain    ${response.content.decode('utf-8')}    10

*** Keywords ***

Get On Session
    [Arguments]    ${url}
    ${response}    GET    ${url}
