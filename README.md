TC-1 Upload file 
*** Settings ***
import Library
*** Variables ***
Declaration of variable which can reuse
*** Test Cases ***
Upload file
    Open Browser To Web page (http://localhost:8080/)
    maximize window
    click Tax relief refresh button
    click to visit swager link
    back to main page
    scroll down windows
    click to dispense now
    get text of  Cash dispensed 
    Close Browser
    
    ________________________________________________________________________________________
    
TC-2 Check basicErrorController
*** Settings ***
import Library
*** Variables ***
Declaration of variable which can reuse
*** Test Cases ***
Check basicErrorControllerGET
    Open Browser To Web page (http://localhost:8080/swagger-ui.html)
    maximize window
    click link basic error controller
    click to GET basic error conroller
    click TryitOut
    click Excute
    scroll window down
    Get curl text
    Scroll up window
    click cancel 
    Click head basic controller
    click try it out
    click excute button
    scroll down window
    Click clear button
    click cancel button
    click link to head basic conroller
    click basic error conroller
    close browser
    
    ------------------------------------------------------------------------------------
TC-3 Check CalculatorController
*** Settings ***
import Library
*** Variables ***
Declaration of variable which can reuse
*** Test Cases ***
Testing insert data functions 
    Open Browser To Web page (http://localhost:8080/swagger-ui.html)
    maximize window
    click link to calculatore controller
    click post insert calculator
    click button try it
    scroll down window
    click to (Example value) text area
    remove text from example value text area
    insert data in example value text area
    scroll down window
    click excute
    log text in console from curl
    scroll up window
    click to cancel button
    click link post calcularor insert
    close browser
    

    
    
    
    
    
