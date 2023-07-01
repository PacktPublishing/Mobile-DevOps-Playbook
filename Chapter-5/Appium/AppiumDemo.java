// import the required dependencies

public class AppiumDemo { 

    public static AppiumDriver driver; 

    @BeforeClass 
    public void Android_setUp() throws MalformedURLException { 
        DesiredCapabilities capabilities = new DesiredCapabilities(); 
        capabilities.setCapability("automationName", "espresso"); 
        capabilities.setCapability("platformVersion", "10.0"); 
        capabilities.setCapability("deviceName", "Android Emulator"); 
        capabilities.setCapability("platformName", "Android"); 
        capabilities.setCapability("showGradleLog",true); 
        capabilities.setCapability("app", 
                System.getProperty("user.dir") + "/apps/app-debug.apk"); 
        driver = new AndroidDriver(new URL("http://localhost:4723/wd/hub"), capabilities); 
    } 

    @Test 
    public void calcDemo(){ 
        driver.findElementById("buttonOne").click(); 
        driver.findElementById("buttonAdd").click(); 
        driver.findElementById("buttonTwo").click(); 
        driver.findElementById("buttonEqual").click(); 
        Assert.assertEquals(driver.findElementById("editText").getText(),"3"); 
    } 

    @AfterClass 
    public static void tearDown() { 

        if (null != driver) { 
            driver.quit(); 
        } 
    } 
} 