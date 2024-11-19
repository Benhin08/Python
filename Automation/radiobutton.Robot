*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}         https://rahulshettyacademy.com/AutomationPractice/
${BROWSER}     chrome


*** Test Cases ***
Checking radio buttons and check Boxes
    open browser    ${URL}  ${BROWSER}
    set selenium speed  2s
    Select Radio Button     radioButton  radio3
    Select Check Box    option1
    Select Check Box    option2