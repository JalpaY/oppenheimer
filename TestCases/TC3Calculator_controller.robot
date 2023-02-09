*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${base_url1}   http://localhost:8080/swagger-ui.html
${post_calculator_insert}   //div[@id='operations-calculator-controller-insertPersonUsingPOST_1']
${BTN_Try_it}      //button[@class='btn try-out__btn']
#${Text_field}      //textarea[contains(text(),'"gender": "str')]
${text_area}    //textarea[@class='body-param__text']


*** Test Cases ***
Check Calculatorcontroller
   [Documentation]     Testing insert data functions
   Open Browser    ${base_url1}
   Maximize Browser Window
   Set Selenium Speed    5
   Click Link    calculator-controller
   Click Element    ${post_calculator_insert}
   Click Element    ${BTN_Try_it}
   Execute Javascript    window.scrollTo(0,500)
   Clear Element Text    ${text_area}
   Input Text    ${text_area}    birthday:02/12/1982,gender:female,name:Lily,natid:001,salary:$40000,tax:$1300
   #...   birthday:02/12/1980,gender:male,name:John,natid:002,salary:$45000,tax:$1400
   Execute Javascript    window.scrollTo(0,700)
   Click Element      //button[@class='btn execute opblock-control__btn']
   Execute Javascript    window.scrollTo(0,300)
   Log To Console    //textarea[contains(text(),'curl -X POST "http://localhost:8080/calculator/ins')]
   Execute Javascript    window.scrollTo(900,0)
   Click Element    //button[@class='btn try-out__btn cancel']
   Click Element    ${post_calculator_insert}
   Close Browser




