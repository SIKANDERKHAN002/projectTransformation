*** Settings ***
Documentation    TC003_OrangeHrm_ValidateUserManagementText
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
...              Action2 :  Navigate to admin page\n\n
...              Result2 :  Navigate to admin page successfull\n\n  
...
...              Action3 :  Validate user management text on screen\n\n
...              Result3 :  Validate user management text on screen successfull\n\n    
...    
Metadata         4) Test Case ID  ${testCaseId}
Metadata         5) Version  1.0
Metadata         6) Author   Robot Framework
Metadata         7) Approver Robot Framework
Metadata         8) Modified     2023-10-01
Metadata         9) Comments

Test Tags       orgHrm    regression  Login  UserManagement
Resource        ../resources/common.resource
Library         DataDriver   file=../testData/defaultBrowserData.csv
Test Timeout     ${testTimeout}

Test Template   TC003_OrangeHrm_ValidateUserManagementText



*** Variables***
${UserManagement}          User Management
${testCaseId}              TC003



*** Test Cases ***
TC003_OrangeHrm_ValidateUserManagementTextTestCaseName_${defaultBrowsers} 
[Documentation]    This test case will login into orangeHrm application

*** Keywords ***
TC003_OrangeHrm_ValidateUserManagementText
   [Documentation]    This keyword will login into orangeHrm
   ...
   ...  === Arguments ===
   ...
   [Arguments]   
   ...    ${defaultBrowsers} 

   


    Log    Action1 : Login to orangeHrm application


   #Open browser and login
   orangeHrm.orangeHrmLogin
   ...       ${orgUrl}
   ...       ${orgUserName}   
   ...       ${orgPassword}    
   
   Log    Result1 : Login to orangeHrm application successfull
 
   ########################

   Log    Action2 : Navigate to admin page

   sleep     ${waitTime} 
   orangeHrm.orgNavigateToAdmin

   Log    Result2 : Navigate to admin page successfull  

   
   ########################
   
   Log    Action3 : Validate user management text on screen

   Sleep     ${waitTime}
   #Validate user management text on screen
   orangeHrm.orgValidateUserManagementText
   ...       textForValidation=${UserManagement}
   Sleep     ${waitTime}
    
   Log    Result3 : Validate user management text on screen successfull
     