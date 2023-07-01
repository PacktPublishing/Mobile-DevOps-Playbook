import com.github.tomakehurst.wiremock.WireMockServer; 
import static com.github.tomakehurst.wiremock.client.WireMock.*; 

public class MockApiServer { 

    private WireMockServer wireMockServer; 

    public void startServer() { 
        wireMockServer = new WireMockServer(); // Default port: 8080 
        wireMockServer.start(); 
    } 

    public void stopServer() { 
        wireMockServer.stop(); 
    } 

    public void setupMockResponse() { 

        wireMockServer.stubFor(get(urlEqualTo("/api/endpoint")) 
                .willReturn(aResponse() 
                        .withHeader("Content-Type", "application/json") 
                        .withBody("{ \"message\": \"Mock response\" }"))); 
    } 
} 