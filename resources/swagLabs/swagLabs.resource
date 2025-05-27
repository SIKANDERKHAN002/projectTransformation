*** Settings ***
Library    SeleniumLibrary
Resource   ../lab/labConfiguration.resource
Resource   swagLabsLocators.resource
Resource   ../common.resource





*** Keywords ***
swagLabsLogin
   [Documentation]   This keyword is used for login purpose to orange hrm website
   ...    
   ...       ====   Arguments   ===  
   ...       | orgUserName  | Mandatory |  This is username variable | Example:'admin' |   
   ...       | orgPassword  | Mandatory |  This is password variable | Example:'*****' |
   ...    
   [Arguments]
   ...    ${swagLabsUrl}
   ...    ${swagLabsUserName} 
   ...    ${swagLabsPassword}
   
   
   Log To Console   Login into orangeHrm application
   Open Browser     ${swagLabsUrl}                       ${browserChrome}
   Sleep            ${waitTime}
   Input Text       ${swagLabsUserNameLocator}           ${swagLabsUserName} 
   Input Text       ${swagLabsPasswordLocator}           ${swagLabsPassword}
   Click Button     ${swagLabsSubmitButtonLocator}

swagLabsValidateInvalidText
   [Documentation]   This keyword will validate invalid text on login page
   ...    
   ...       ====   Arguments   ===  
   ...       | textForValidation  | Mandatory |  This variable will be used to validate text on screen | Example:Swag Labs' |   
   ...    
   [Arguments]
   ...       ${textForValidation}
   
   Page Should Contain    ${textForValidation}



swagLabsValidateTextOnScreen
   [Documentation]   This keyword will validate text on landing page
   ...    
   ...       ====   Arguments   ===  
   ...       | textForValidation  | Mandatory |  This variable will be used to validate text on screen after successful login | Example:Swag Labs' |   
   ...    
   [Arguments]
   ...       ${textForValidation}
   
   Page Should Contain    ${textForValidation}
