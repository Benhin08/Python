*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}         https://rahulshettyacademy.com/AutomationPractice/
${BROWSER}     chrome

*** Test Cases ***
dropdown
   Shortcut

*** Keywords ***
Shortcut
     Open Browser    ${URL}    ${BROWSER}
     Sleep    2s