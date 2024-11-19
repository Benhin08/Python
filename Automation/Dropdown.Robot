*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}         https://rahulshettyacademy.com/AutomationPractice/
${BROWSER}     chrome

*** Test Cases ***
dropdown
    Open Browser    ${URL}    ${BROWSER}
    Sleep    2s
    Select From List By Label    dropdown-class-example    Option2
    Sleep    5s
    Select From List By Index    dropdown-class-example    1
    Sleep    4s
    Close Browser
