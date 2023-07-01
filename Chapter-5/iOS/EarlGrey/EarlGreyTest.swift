import XCTest 

import EarlGrey 

class YourAppEarlGreyUITests: XCTestCase { 

    override func setUpWithError() throws { 

        super.setUp() 

    } 

    func testLoginFlow() throws { 

        // Find email and password text fields 

        let emailTextField = GREYMatchers.matcher(forAccessibilityLabel: "Email") 

        let passwordSecureTextField = GREYMatchers.matcher(forAccessibilityLabel: "Password") 

        // Fill out email and password fields 

        EarlGrey.selectElement(with: emailTextField) 

            .perform(GREYActions.typeText("user@example.com")) 

        EarlGrey.selectElement(with: passwordSecureTextField) 

            .perform(GREYActions.typeText("password")) 

        // Tap the "LogIn" button 

        EarlGrey.selectElement(with: GREYMatchers.matcher(forAccessibilityLabel: "Log In")) 

            .perform(GREYActions.tap()) 

        // Check if the "Welcome!" title is displayed, indicating a successful login 

        EarlGrey.selectElement(with: GREYMatchers.matcher(forText: "Welcome!")).assertWithTimeout(5, GREYAssertBlockNotNil) 

    } 

} 