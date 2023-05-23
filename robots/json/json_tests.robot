*** Settings ***
Documentation    Test suite with JSON examples.

*** Variables ***
${DATA}              [{"id": 1, "name": "Robot"}, {"id": 2, "name": "Mr. X"}]
${DATA_WITH_NULL}    [{"id": 1, "name": "Robot"}, {"id": 2, "name": null}]

*** Test Cases ***
Nested item access with evaluate
    [Documentation]    Accessing JSON with Evaluate keyword. json.loads() is
    ...                necessary for evaluating null value.
    ${json_object}     Evaluate                   json.loads("""${DATA_WITH_NULL}""")
    Should Be Equal    ${json_object}[0][name]    Robot
    Should Be Equal    ${json_object}[1][id]      ${2}

Nested item access inline evaluation
    [Documentation]    Accessing JSON with inline evaluation.
    Should Be Equal    ${{${DATA}}}[0][name]    Robot
    Should Be Equal    ${{${DATA}}}[1][id]      ${2}
