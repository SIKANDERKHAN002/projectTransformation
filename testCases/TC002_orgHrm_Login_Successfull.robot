*** Settings ***
Documentation    TC002_orgHrm_Login_Successfull
...
Metadata         1) Test Description
...                 The test case is used to login into orangeHrm application
...    
Metadata         2) Prerequisites
...                 ${None}
...  
Metadata         3) Test Steps
...              The following test steps will be executed by this test case:\n\n
...              Action1 :  Login to orangeHrm application\n\n
...              Result1 :  Login to orangeHrm application successfull\n\n
...    
Metadata         4) Test Case ID  ${testCaseId}
Metadata         5) Version  1.0
Metadata         6) Author   Robot Framework
Metadata         7) Approver Robot Framework
Metadata         8) Modified     2023-10-01YYYY
Metadata         9) Comments

Test Timeout     ${testTimeout}
Resource  ../resources/common.resource
Library         DataDriver   file=../testData/defaultBrowserData.csv       


Test Teardown    Close All Browsers
Suite Teardown   Close All Browsers

Force Tags       orgHrm    regression  Login  Successfull

#Library          DataDriver
Test Template     TC002_orgHrm_Login_Successfull_Template


*** Variables***
${testCaseId}               TC002




*** Test Cases ***
TC002_orgHrm_Login_Successfull_${defaultBrowsers} 
       [Documentation]   ${testCAseDescription}
   


*** Keywords ***
TC002_orgHrm_Login_Successfull_Template
   [Documentation]    This keyword will login into orangeHrm
   ...
   ...  === Arguments ===
   ...
   [Arguments]   
   ...   ${defaultBrowsers}  
   

   Log    Action1 : Login to orangeHrm application
   
   #Open browser and login
   orangeHrm.orangeHrmLogin
   ...       ${orgUrl}
   ...       ${orgUserName}   
   ...       ${orgPassword}    
   
   Log    Result1 : Login to orangeHrm application successfull