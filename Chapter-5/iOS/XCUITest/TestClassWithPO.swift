// import the required dependencies

import XCTest 

class YourAppUITests: XCTestCase { 

    var app: XCUIApplication! 

    override func setUpWithError() throws { 

        continueAfterFailure = false 

        app = XCUIApplication() 

        app.launch() 

    } 

    func testLoginFlow() throws { 

        let loginPage = LoginPage(app: app) 

    
        loginPage.enterEmail("user@example.com") 

        loginPage.enterPassword("password") 

        loginPage.tapLoginButton() 

        let welcomePage = WelcomePage(app: app) 

        XCTAssertTrue(welcomePage.isWelcomeLabelDisplayed()) 

    } 

} 