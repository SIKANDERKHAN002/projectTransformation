*** Variables ***
${orgUserNameLocator}                       //input[@placeholder='Username']
${orgPasswordLocator}                       //input[@placeholder='Password' and @name='password']
${orgSubmitButtonLocator}                   //button[@type='submit']
${orgValidateInvalidText}                   //*[text()='Invalid credentials']
${orgValidateUserManagement}                //*[@class='oxd-topbar']//*[contains(text(),'User Management')]
${orgClickOnAdmin}                          //span[text()='Admin']