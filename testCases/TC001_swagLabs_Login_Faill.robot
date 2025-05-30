*** Settings ***
Documentation   TC001_swagLabs_Login_Faill
...
Metadata         1) Test Description
...                 The test case is used to login into swagLabs application and fail
...    
Metadata         2) Prerequisites
...                 ${None}
...  
Metadata         3) Test Steps
...               The following test steps will be executed by this test case:\n\n
...               Action1 :  Login to swagLabs application\n\n
...               Result1 :  Login to swagLabs application fail\n\n
...
...               Action2 : Validate Invalid text on screen\n\n
...               Result2 : Validate invalid text on screen successfull\n\n
...    
Metadata         4) Test Case ID  ${testCaseId}
Metadata         5) Version  1.0
Metadata         6) Author   Robot Framework
Metadata         7) Approver Robot Framework
Metadata         8) Modified       2025-05-18
Metadata         9) Comments


Resource  ../resources/common.resource
Library         DataDriver   file=../testData/defaultBrowserData.csv

Test Timeout    ${testTimeout}
Test Template   TC001_swagLabs_Login_Faill_Template
Test Tags       swag   regression    Login   Fail

*** Variables***
${swagInvalidCredentials}    Epic sadface: Username and password do not match any user in this service
${testCaseId}                TC001

*** Test Cases ***
TC001_swagLabs_Login_Faill_${defaultBrowsers} 
[Documentation]    This test case will login into swagLabs application and fail
   


*** Keywords ***
TC001_swagLabs_Login_Faill_Template
   [Documentation]    This keyword will login into orangeHrm
   ...
   ...  === Arguments ===
   ...
   [Arguments]   
   ...   ${defaultBrowsers}   


   Log    Action1 : Login to orangeHrm application
   
   #Open browser and login
   swagLabs.swagLabsLogin
   ...      swagLabsUrl=${swagLabsUrl}
   ...      swagLabsUserName=${swagUserNameInvalid}    
   ...      swagLabsPassword=${swagPasswordInvalid}
   
   Log    Result1 : Login to orangeHrm application should fail
   

   ########################

   Log    Action2 : Validate Invalid text on screen

   Sleep   ${waitTime}
   #Validate invalid text on screen  
   swagLabs.swagLabsValidateInvalidText
   ...      textForValidation=${swagInvalidCredentials   
   
   Log    Result2 : Validate invalid text on screen successfull
   
