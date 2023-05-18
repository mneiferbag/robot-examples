*** Settings ***
Documentation    Test suite with JSON examples.

*** Variables ***
${DATA}    [{'id': 1, 'name': 'Robot'}, {'id': 2, 'name': 'Mr. X'}]

*** Test Cases ***
Nested item access
    [Documentation]    TODO this doesn't work for some reason
    Should Be Equal    ${DATA}[0]\[name]    Robot
    Should Be Equal    ${DATA}[1]\[id]      ${2}
