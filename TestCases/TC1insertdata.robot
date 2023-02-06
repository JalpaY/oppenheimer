*** Settings ***

Library      SeleniumLibrary


*** Variables ***
${base_url}   http://localhost:8080/
#${upload_file}  //input[@type='file']
${refresh_tax_relief}  //*[contains(text(),'Refresh Tax Relief Table')]
#${Verify_Upload}  //div[@id='contents']
${file_to_upload}  data.csv
${text_dispensed}   //div[contains(text(),'Cash dispensed')]


*** Test Cases ***

Upload the file
   Open Browser    ${base_url}
   Maximize Browser Window
   Sleep  5
   #Choose File    ${upload_file}  ${CURDIR}${/}${file_to_upload}
   #Wait Until Element Is Visible    [normalize-space()="C://Users//yoges//Downloads//${file_to_upload}
   Click Element    ${refresh_tax_relief}
   Click Link    link:Visit Swagger
   Sleep    5
   Go To    ${base_url}
   Execute Javascript    window.scrollTo(0,700)
   Click Link    link:Dispense Now
   Sleep    5
   Get Text    ${text_dispensed}
   Go To    ${base_url}
   Close Browser

# created script with basic knowledge of robotframework I dont have experiance on robotframework
# issue found in web page http://localhost:8080/
# 1) Upload file function not working properly after select file it will not showing in page
# 2) Refresh Tax Relief Table button also after click it will navigate to same page only (no any changes found there)