*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}         https://www.flipkart.com/
${BROWSER}     chrome



*** Test Cases ***
ValidationTest
    Open Browser    ${URL}   ${BROWSER}
    Wait Until Page Contains    ${URL}
    Title Should Be     Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!
    ${input_text}   set variable  xpath://*[@id="container"]/div/div[1]/div/div/div/div/div[1]/div/div/div/div[1]/div[1]/header/div[1]/div[2]/form/div/div/input
    Element Should Be Enabled   ${input_text}
    Element Should Be Visible   ${input_text}
    sleep   3
    input text  ${input_text}    mobile
    sleep   5
    Clear Element Text  ${input_text}
    sleep   3
    Close   browser