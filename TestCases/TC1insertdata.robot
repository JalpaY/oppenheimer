*** Settings ***

Library      SeleniumLibrary


*** Variables ***
${base_url}   http://localhost:8080/
${refresh_tax_relief}  //*[contains(text(),'Refresh Tax Relief Table')]
${file_to_upload}  data.csv
${text_dispensed}   //div[contains(text(),'Cash dispensed')]


*** Test Cases ***
Upload the file
   [Documentation]    Testing localhost 8080 page functionality
   Open Browser    ${base_url}
   Maximize Browser Window
   Sleep  5
#click to refresh tax relief button
   Click Element    ${refresh_tax_relief}
   sleep  3
#click to visit swagger button
   Click Link    link:Visit Swagger
   Sleep    5
#back to main URL
   Go To    ${base_url}
#scrolling window
   Execute Javascript    window.scrollTo(0,700)
#click to link Dispense Now
   Click Link    link:Dispense Now
   Sleep    5
   Get Text    ${text_dispensed}
   Go To    ${base_url}
   Close Browser

# created script with basic knowledge of robotframework I dont have experiance on robotframework
# issue found in web page http://localhost:8080/
# 1) Upload file function not working properly after select file it will not showing in page
# 2) Refresh Tax Relief Table button also after click it will navigate to same page only (no any changes found there)