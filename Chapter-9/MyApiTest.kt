import androidx.test.ext.junit.runners.AndroidJUnit4; 
import org.junit.After; 
import org.junit.Before; 
import org.junit.Test; 
import org.junit.runner.RunWith; 
import static com.github.tomakehurst.wiremock.core.WireMockConfiguration.options; 

@RunWith(AndroidJUnit4.class) 
public class MyApiTest { 
    private MockApiServer mockApiServer; 
    
    @Before 
    public void setup() { 
        mockApiServer = new MockApiServer(); 
        mockApiServer.startServer(); 
        mockApiServer.setupMockResponse(); 
    } 

    @After 
    public void tearDown() { 
        mockApiServer.stopServer(); 
    } 

    @Test 
    public void testApiCall() { 
        // Write your test code here, making API calls to http://localhost:8080/api/endpoint 
        // The responses will be served by the WireMock server 
    } 
} 