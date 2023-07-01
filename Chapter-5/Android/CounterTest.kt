// import the required dependencies

@RunWith(AndroidJUnit4::class) 
class CounterTest { 

    @get:Rule 
    val composeTestRule = createAndroidComposeRule() 

    @Test 
    fun counter_init() { 
        val textClicks = composeTestRule.activity.getString(R.string.clicks, 0) 
        composeTestRule 
            .onNodeWithText(textClicks) 
            .assertExists() 
    } 

    @Test 
    fun counter_increment() { 

        val textIncrement = composeTestRule.activity.getString(R.string.increment_counter) 
        val textClicks = composeTestRule.activity.getString(R.string.clicks, 1) 

        composeTestRule 
            .onNodeWithText(textIncrement) 
            .performClick() 

        composeTestRule 
            .onNodeWithText(textClicks) 
            .assertExists() 
    } 
} 