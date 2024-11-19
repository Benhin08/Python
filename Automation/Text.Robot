*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}         https://www.google.co.in/
${BROWSER}     chrome


*** Test Cases ***
Google Search for Amazon
    Open Browser    ${URL}   ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    Input Text  xpath://*[@id="APjFqb"]\    Amazon
    Click Button    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]
    sleep    5s
    clear element Text   xpath://*[@id="APjFqb"]
    sleep   2s
    Input Text  xpath://*[@id="APjFqb"]\    Flipkart
    Click Button    xpath://*[@id="tsf"]/div[1]/div[1]/div[2]/button
    Sleep    10s
    Close Browser
