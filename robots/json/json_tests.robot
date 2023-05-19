*** Settings ***
Documentation    Test suite with JSON examples.

*** Variables ***
${DATA}    [{"id": 1, "name": "Robot"}, {"id": 2, "name": "Mr. X"}]

*** Test Cases ***
Nested item access with evaluate
    [Documentation]    Accessing JSON with Evaluate keyword.
    ${JSON}            Evaluate    [{"id": 1, "name": "Robot"}, {"id": 2, "name": "Mr. X"}]
    Should Be Equal    ${JSON}[0][name]    Robot
    Should Be Equal    ${JSON}[1][id]      ${2}

Nested item access inline evaluation
    [Documentation]    Accessing JSON with inline evaluation.
    Should Be Equal    ${{${DATA}}}[0][name]    Robot
    Should Be Equal    ${{${DATA}}}[1][id]      ${2}
