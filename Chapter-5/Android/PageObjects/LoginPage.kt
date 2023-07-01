// import the required dependencies

class LoginPage { 

    private val usernameEditText = onView(withId(R.id.usernameEditText)) 
    private val passwordEditText = onView(withId(R.id.passwordEditText)) 
    private val loginButton = onView(withId(R.id.loginButton)) 
    private val welcomeTextView = onView(withId(R.id.welcomeTextView)) 
    private val errorMessage = onView(withText("Invalid username or password")) 


    fun enterUsername(username: String) { 
        usernameEditText.perform(typeText(username)) 
    } 

    fun enterPassword(password: String) { 
        passwordEditText.perform(typeText(password)) 
    } 

    fun clickLoginButton() { 
        loginButton.perform(click()) 
    } 

    fun checkWelcomeMessage(message: String) { 
        welcomeTextView.check(matches(withText(message))) 
    } 

    fun checkErrorMessage(message: String) { 
        errorMessage.check(matches(isDisplayed())) 
    } 
} 