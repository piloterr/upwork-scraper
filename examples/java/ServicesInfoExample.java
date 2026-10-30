// Upwork Services Info API – Java example (Java 11+)
// Usage: PILOTERR_API_KEY=your-key java ServicesInfoExample.java
import java.net.URI;
import java.net.URLEncoder;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.nio.charset.StandardCharsets;
import java.time.Duration;

public class ServicesInfoExample {
    static String enc(String v) {
        return URLEncoder.encode(v, StandardCharsets.UTF_8);
    }

    public static void main(String[] args) throws Exception {
        String query = "query=" + enc("https://www.upwork.com/services/product/development-it-mobile-app-developer-android-ios-flutter-application-hybrid-apps-1403673770703212544");

        HttpRequest request = HttpRequest.newBuilder()
            .uri(URI.create("https://api.piloterr.com/v2/upwork/services/info?" + query))
            .header("x-api-key", System.getenv("PILOTERR_API_KEY"))
            .timeout(Duration.ofSeconds(60))
            .GET()
            .build();

        HttpResponse<String> response = HttpClient.newHttpClient()
            .send(request, HttpResponse.BodyHandlers.ofString());

        if (response.statusCode() != 200) {
            System.err.println("Piloterr error " + response.statusCode() + ": " + response.body());
            System.exit(1);
        }
        System.out.println(response.body());
    }
}
