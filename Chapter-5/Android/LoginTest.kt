// import the required dependencies

@RunWith(AndroidJUnit4::class) 
class LoginScreenTest { 

    @Rule 
    @JvmField 
    val activityRule = ActivityTestRule(LoginActivity::class.java) 

    @Test 
    fun loginSuccess() { 
        onView(withId(R.id.usernameEditText)).perform(typeText("username")) 
        onView(withId(R.id.passwordEditText)).perform(typeText("password")) 
        onView(withId(R.id.loginButton)).perform(click()) 
        onView(withId(R.id.welcomeTextView)).check(matches(withText("Welcome, username!"))) 
    } 

    @Test 
    fun loginFailure() { 
        onView(withId(R.id.usernameEditText)).perform(typeText("invalid_username")) 
        onView(withId(R.id.passwordEditText)).perform(typeText("invalid_password")) 
        onView(withId(R.id.loginButton)).perform(click()) 
        onView(withText("Invalid username or password")).check(matches(isDisplayed())) 
    } 
} 