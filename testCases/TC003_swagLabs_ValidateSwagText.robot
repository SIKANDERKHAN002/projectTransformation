*** Settings ***
Documentation    TC003_swagLabs_ValidateSwagText
...
Metadata         1) Test Description
...                 The test case is used to login into SwagLabs application
...    
Metadata         2) Prerequisites
...                 ${None}
...  
Metadata         3) Test Steps
...              The following test steps will be executed by this test case:\n\n
...              Action1 :  Login to swagLabs application\n\n
...              Result1 :  Login to swagLabs application successfull\n\n
...
...              Action2 :  Validate swagLabs text on screen\n\n
...              Result2 :  Validated swagLabs text on screen successfull\n\n    
...    
Metadata         4) Test Case ID  ${testCaseId}
Metadata         5) Version  1.0
Metadata         6) Author   Robot Framework
Metadata         7) Approver Robot Framework
Metadata         8) Modified       2025-05-21
Metadata         9) Comments


Test Tags        swag    regression  Login  UserManagement
Resource         ../resources/common.resource
Library          DataDriver   file=../testData/defaultBrowserData.csv
Test Timeout     ${testTimeout}

Test Template   TC003_swagLabs_ValidateSwagText



*** Variables***
${textSwagLabs}            Swag Labs
${testCaseId}              TC003



*** Test Cases ***
TC003_swagLabs_ValidateSwagText_${defaultBrowsers} 
   [Documentation]    This test case will login into SwagLabs application and validate the text on screen.



*** Keywords ***
TC003_swagLabs_ValidateSwagText
   [Documentation]    This keyword will login into SwagLabs
   ...
   ...  === Arguments ===
   ...
   [Arguments]   
   ...    ${defaultBrowsers}    
   

    Log    Action1 : Login to SwagLabs application

   #Open browser and login
   swagLabs.swagLabsLogin
   ...      swagLabsUrl=${swagLabsUrl}
   ...      swagLabsUserName=${swagUserName}    
   ...      swagLabsPassword=${swagPassword}
   
   Log    Result1 : Login to SwagLabs application successfull
 
   ########################

   Log    Action2 : Validate SwagLabs text on screen

   sleep     ${waitTime} 
   swagLabs.swagLabsValidateTextOnScreen
   ...      textForValidation=${textSwagLabs}

   Log    Result2 : Validated SwagLabs text on screen successfull  

   
   ########################