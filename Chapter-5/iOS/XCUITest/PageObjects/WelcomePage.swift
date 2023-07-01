import XCTest 

class WelcomePage { 

    private let app: XCUIApplication 
    init(app: XCUIApplication) { 
        self.app = app 
    } 

    var welcomeLabel: XCUIElement { 
        return app.staticTexts["Welcome!"] 
    } 
    func isWelcomeLabelDisplayed() -> Bool { 
        return welcomeLabel.exists 
    } 
} 