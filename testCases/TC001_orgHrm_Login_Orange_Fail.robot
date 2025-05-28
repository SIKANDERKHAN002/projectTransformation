*** Settings ***
Documentation   TC001_OrangeHrm_Login_Fail
...
Metadata         1) Test Description
...                 The test case is used to login into orangeHrm application and fail
...    
Metadata         2) Prerequisites
...                 ${None}
...  
Metadata         3) Test Steps
...               The following test steps will be executed by this test case:\n\n
...               Action1 :  Login to orangeHrm application\n\n
...               Result1 :  Login to orangeHrm application successfull\n\n
...    
Metadata         4) Test Case ID  ${testCaseId}
Metadata         5) Version  1.0
Metadata         6) Author   Robot Framework
Metadata         7) Approver Robot Framework
Metadata         8) Modified     2023-10-02
Metadata         9) Comments


Resource  ../resources/common.resource
Library         DataDriver   file=../testData/defaultBrowserData.csv


Test Teardown   Close All Browsers
Test Timeout    ${testTimeout}
Test Template   TC001_OrangeHrm_Login_Fail_Template
Test Tags       orgHrm    regression  Login  Fail

*** Variables***
${orgInvalidCredentials}    Invalid credentials
${defaultBrowserType}       defaultBrowsers



*** Test Cases ***
TC001_OrangeHrm_Login_Fail_${defaultBrowsers} 
    

[Documentation]    This test case will login into orangeHrm application and fail

   


*** Keywords ***
TC001_OrangeHrm_Login_Fail_Template_ ${defaultBrowsers}
   [Arguments]   
     ...    ${defaultBrowsers}
  
   
   [Documentation]    This keyword will login into orangeHrm
   ...
   ...  === Arguments ===
   ...

   
   Log    ${CURDIR} 
   Log    Action1 : Login to orangeHrm application
   Log    ${defaultBrowserType}
   #Open browser and login
   orangeHrm.orangeHrmLogin
   ...       orgUrl=${orgUrl}
   ...       orgUserName=${orgUserNameInvalid}
   ...       orgPassword=${orgPasswordInvalid}
   ...       BrowserType=${defaultBrowsers}
   Log    Result1 : Login to orangeHrm application should fail
   

   ########################

   Log    Action2 : Validate Invalid text on screen

   Sleep   ${waitTime}
   #Validate invalid text on screen  
   orangeHrm.orgValidateInvalidText
   ...       textForValidation=${orgInvalidCredentials}   
   
   Log    Result2 : Validate invalid text on screen successfull
   
