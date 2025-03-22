*** Settings ***
Library     SeleniumLibrary
Library     RequestsLibrary


*** Test Cases ***
Check Username API
    Create Session    my_session    https://api.github.com
    ${response}    GET On Session    my_session    users/robotframeworktutorial
    Should Be Equal As Strings    ${response.status_code}    200
