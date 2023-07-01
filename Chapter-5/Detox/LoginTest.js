describe('Login screen', () => { 

    beforeEach(async () => {   
      await device.reloadReactNative(); 
    }); 
  
    it('should show error message for invalid credentials', async () => { 
  
      await element(by.id('usernameInput')).typeText('invalid_username'); 
      await element(by.id('passwordInput')).typeText('invalid_password'); 
      await element(by.id('loginButton')).tap(); 
      await expect(element(by.text('Invalid username or password'))).toBeVisible(); 
  
    }); 
  
    it('should log in with valid credentials', async () => { 
  
      await element(by.id('usernameInput')).typeText('valid_username'); 
      await element(by.id('passwordInput')).typeText('valid_password'); 
      await element(by.id('loginButton')).tap(); 
      await expect(element(by.id('welcomeText'))).toHaveText('Welcome, valid_username!'); 
  
    }); 
  });   