import XCTest 

final class LoginUITests: XCTestCase { 

    var app: XCUIApplication! 

    override func setUpWithError() throws { 

        continueAfterFailure = false 

        app = XCUIApplication() 

        app.launch() 

    } 

    func testLoginFlow() throws { 

        // Find email and password text fields 

        let emailTextField = app.textFields["Email"] 

        let passwordSecureTextField = app.secureTextFields["Password"] 

        // Fill out email and password fields 

        emailTextField.tap() 

        emailTextField.typeText("user@example.com") 

        passwordSecureTextField.tap() 

        passwordSecureTextField.typeText("password") 

        // Tap the "LogIn" button 

        app.buttons["Log In"].tap() 

        // Check if the "Welcome!" title is displayed, indicating a successful login 

        XCTAssertTrue(app.staticTexts["Welcome!"].exists) 

    } 

} 