*** Settings ***
Library    SeleniumLibrary
Resource   ../lab/labConfiguration.resource
Resource   orangeHrmLocators.resource
Resource   ../common.resource




*** Keywords ***
orangeHrmLogin
   [Documentation]   This keyword is used for login purpose to orange hrm website
   ...    
   ...       ====   Arguments   ===  
   ...       | orgUserName  | Mandatory |  This is username variable | Example:'admin' |   
   ...       | orgPassword  | Mandatory |  This is password variable | Example:'*****' |
   ...    
   [Arguments]
   ...    ${orgUrl}
   ...    ${orgUserName} 
   ...    ${orgPassword}
   ...    ${BrowserType}
   
   IF  "${BrowserType}" == "headlesschrome"
        Open Browser      ${orgUrl}    ${BrowserType}
   ELSE IF   "${BrowserType}" == "headlessfirefox"
        Open Browser      ${orgUrl}    ${BrowserType}
   ELSE IF   "${BrowserType}" == "headlessedge"
        Open Browser      ${orgUrl}    ${BrowserType}
   ELSE IF   "${BrowserType}" == "chrome"
        Open Browser      ${orgUrl}    ${BrowserType}
   ELSE IF   "${BrowserType}" == "firefox"
        Open Browser      ${orgUrl}    ${BrowserType}
   ELSE IF   "${BrowserType}" == "edge"
        Open Browser      ${orgUrl}    ${BrowserType}    
   END


   Log To Console   Login into orangeHrm application
   Sleep            ${waitTime}
   Input Text       ${orgUserNameLocator}      ${orgUserName} 
   Input Text       ${orgPasswordLocator}      ${orgPassword}
   Click Button     ${orgSubmitButtonLocator}

orgValidateInvalidText
   [Documentation]   This keyword will validate invalid text on login page
   ...    
   ...       ====   Arguments   ===  
   ...       | textForValidation  | Mandatory |  This variable will be used to validate text on screen | Example:'Invalid credentials' |   
   ...    
   [Arguments]
   ...       ${textForValidation}
   Log       ${textForValidation}   
   Page Should Contain    ${textForValidation}



orgValidateUserManagementText
   [Documentation]   This keyword will validate user management text on landing page
   ...    
   ...       ====   Arguments   ===  
   ...       | textForValidation  | Mandatory |  This variable will be used to validate text on screen after successful login | Example:'Invalid credentials' |   
   ...    
   [Arguments]
   ...       ${textForValidation}
   
   Page Should Contain    ${textForValidation}


orgNavigateToAdmin
   [Documentation]   This keyword will click on admin menu
   ...    
   ...       ====   Arguments   ===  
   ...       ----  No Arguments -------
      
   Click Element    ${orgClickOnAdmin}