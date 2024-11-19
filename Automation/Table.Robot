*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}         https://rahulshettyacademy.com/AutomationPractice/
${BROWSER}     chrome

*** Test Cases ***
practice
    open browser  ${URL}  ${BROWSER}
    ${row}      Get Element Count   //*[@id="product"]/tbody/tr
    ${Column}       Get Element Count   //*[@id="product"]/tbody/tr/th

    Log To Console      ${row}
    Log To Console      ${column}

    ${data}     Get Element Count  //*[@id="product"]/tbody/tr[2]/td[2]
    Log To Console      ${column}