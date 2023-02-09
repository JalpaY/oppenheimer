*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${base_url1}   http://localhost:8080/swagger-ui.html
${basic_controller_GET}   //div[@id='operations-basic-error-controller-errorUsingGET']
${GET_TryitOut}      //button[contains(text(),'Try it out ')]
${HEAD_basic_controller}    //*[contains(text(),'HEAD')]



*** Test Cases ***
Check basicErrorController
   [Documentation]    Testing basic Error Controller
   Open Browser    ${base_url1}
   Maximize Browser Window
   Sleep  5
   Click Link    basic-error-controller
   Click Element    ${basic_controller_GET}
   Sleep    3
   Click Element    ${GET_TryitOut}
   Sleep    3
   Click Element    //button[@class='btn execute opblock-control__btn']
   sleep  5
   Execute Javascript    window.scrollTo(0,500)
   Get Text     //pre[@class=' microlight']
   sleep  3
   Execute Javascript    window.scrollTo(500,0)
   Click Element    //button[@class='btn try-out__btn cancel']
   sleep  10
   Click Element    //div[@class='opblock-summary opblock-summary-get']
   sleep  10

# Check Head basic controller
   Click Element    ${HEAD_basic_controller}
   Click Element    ${GET_TryitOut}
   sleep  3
   Click Element    //button[@class='btn execute opblock-control__btn']
   sleep  5
   Execute Javascript    window.scrollTo(0,500)
   sleep  3
   Execute Javascript    window.scrollTo(500,0)
   Click Element    //button[@class='btn btn-clear opblock-control__btn']
   Click Element    //button[@class='btn try-out__btn cancel']
   Sleep    5
   Click Element    ${HEAD_basic_controller}
   Click Link    basic-error-controller
   Close Browser







