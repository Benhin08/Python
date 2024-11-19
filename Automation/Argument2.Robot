*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}         https://rahulshettyacademy.com/AutomationPractice/
${BROWSER}     chrome

*** Test Cases ***
practice
      open    ${URL}  ${BROWSER}

*** keywords ***
open
    [Arguments]  ${WebURL}  ${WebBROWSER}
    open browser    ${WebURL}  ${WebBROWSER}
    maximize browser window
    ${title}    get title
    [Return]    ${title}