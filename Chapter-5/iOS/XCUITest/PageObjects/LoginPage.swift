import XCTest 

class LoginPage { 
    private let app: XCUIApplication  

    init(app: XCUIApplication) { 
        self.app = app 
    } 

    var emailTextField: XCUIElement { 
        return app.textFields["Email"] 
    } 

    var passwordTextField: XCUIElement { 
        return app.secureTextFields["Password"] 
    } 

    var loginButton: XCUIElement { 
        return app.buttons["Log In"] 
    }
       
    func enterEmail(_ email: String) { 
        emailTextField.tap() 
        emailTextField.typeText(email) 
    } 

    func enterPassword(_ password: String) { 
        passwordTextField.tap() 
        passwordTextField.typeText(password) 
    } 

    func tapLoginButton() { 
        loginButton.tap() 
    }
  } 