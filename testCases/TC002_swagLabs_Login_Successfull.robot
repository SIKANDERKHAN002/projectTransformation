*** Settings ***
Documentation   TC002_swagLabs_Login_Successfull
...
Metadata         1) Test Description
...                 The test case is used to login into swagLabs application successfully.
...    
Metadata         2) Prerequisites
...                 ${None}
...  
Metadata         3) Test Steps
...               The following test steps will be executed by this test case:\n\n
...               Action1 :  Login to swagLabs application\n\n
...               Result1 :  Login to swagLabs application successfully\n\n
...    
Metadata         4) Test Case ID  ${testCaseId}
Metadata         5) Version  1.0
Metadata         6) Author   Robot Framework
Metadata         7) Approver Robot Framework
Metadata         8) Modified       2025-05-19
Metadata         9) Comments


Resource         ../resources/common.resource
Library         DataDriver   file=../testData/defaultBrowserData.csv

Test Timeout    ${testTimeout}
Test Template   TC002_swagLabs_Login_Successfull_Template
Test Tags       swag   regression    Login   Successfull

*** Variables***
${swagInvalidCredentials}    Epic sadface: Username and password do not match any user in this service
${testCaseId}                TC001

*** Test Cases ***
TC002_swagLabs_Login_Successfull_${defaultBrowsers} 
  [Documentation]    This test case will login into swagLabs application successfully.
   


*** Keywords ***
TC002_swagLabs_Login_Successfull_Template
   [Documentation]    This keyword will login into swagLabs
   ...
   ...  === Arguments ===
   ...
   [Arguments]   
   ...   ${defaultBrowsers}  


   Log    Action1 : Login to swagLabs application
   
   #Open browser and login
   swagLabs.swagLabsLogin
   ...      swagLabsUrl=${swagLabsUrl}
   ...      swagLabsUserName=${swagUserName}    
   ...      swagLabsPassword=${swagPassword}
   
   Log    Result1 : Login to swagLabs application successfully
   
   SLeep   15s
   ########################

   
