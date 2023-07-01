
// import the required dependencies

@RunWith(AndroidJUnit4::class) 
class LoginScreenTest { 

    @Rule 
    @JvmField 
    val activityRule = ActivityTestRule(LoginActivity::class.java) 

    @Test 
    fun loginSuccess() { 
        val loginPage = LoginPage() 
        loginPage.enterUsername("username") 
        loginPage.enterPassword("password") 
        loginPage.clickLoginButton() 
        loginPage.checkWelcomeMessage("Welcome, username!") 

    } 

    @Test 
    fun loginFailure() { 

        val loginPage = LoginPage() 
        loginPage.enterUsername("invalid_username") 
        loginPage.enterPassword("invalid_password") 
        loginPage.clickLoginButton() 
        loginPage.checkErrorMessage("Invalid username or password") 
    } 
} 