*** Settings ***
Documentation    Test suite with very basic examples.

*** Test Cases ***
Hello World
    [Documentation]    Let's say hello.
    Should Be Equal As Strings    hello world    hello world
