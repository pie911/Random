<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.io.BufferedReader, java.io.InputStreamReader, java.net.HttpURLConnection, java.net.URL" %>
<%
    // Retrieve form parameters
    String material = request.getParameter("material");
    double height = Double.parseDouble(request.getParameter("height"));
    double diameter = Double.parseDouble(request.getParameter("diameter"));
    double releaseHeight = Double.parseDouble(request.getParameter("releaseHeight"));
    double angleDegrees = Double.parseDouble(request.getParameter("angle"));
    String initialSide = request.getParameter("initialSide");
    double motorPower = Double.parseDouble(request.getParameter("motorPower"));

    // Convert angle to radians
    double angleRadians = Math.toRadians(angleDegrees);

    // Calculate volume of the coin
    double volume = (Math.PI * diameter * diameter * height) / 4.0;

    // Density based on material (you can adjust these values)
    double density;
    switch (material) {
        case "iron":
            density = 7.87; // g/cm³
            break;
        case "brass":
            density = 8.4; // g/cm³
            break;
        case "copper":
            density = 8.96; // g/cm³
            break;
        case "gold":
            density = 19.3; // g/cm³
            break;
        case "silver":
            density = 10.5; // g/cm³
            break;
        default:
            density = 7.87; // Default to iron
    }

    // Calculate mass of the coin
    double mass = density * volume;
    // Fetch real-time airspeed using OpenWeatherMap API
    double airSpeed = getRealTimeAirSpeed(); // Implement this method

    // Other calculations (speed, flips, etc.) go here

    // Determine the final coin side
    String outcome = (Math.random() < 0.5) ? "Head" : "Tail";
    if (initialSide.equals(outcome)) {
        outcome = "You got " + outcome;
    } else {
        outcome = "You got the opposite side (" + outcome + ")";
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coin Toss Result</title>
</head>
<body>
    <h1>Coin Toss Result</h1>
    <p>Material: <%= material %></p>
    <p>Coin Height: <%= height %> mm</p>
    <p>Coin Diameter: <%= diameter %> mm</p>
    <p>Release Height: <%= releaseHeight %> meters</p>
    <p>Angle of Projection: <%= angleDegrees %> degrees</p>
    <p>Initial Side: <%= initialSide %></p>
    <p>Custom Motor Power: <%= motorPower %> (force)</p>
    <p>Air Speed: <%= airSpeed %> m/s</p>

    <!-- Add other parameters and calculations here -->
    <%
    // Implement the method to fetch real-time airspeed from OpenWeatherMap API
    private double getRealTimeAirSpeed() {
        try {
            String apiKey = "30457e303baf5ff320f8f8e53aff1c0f"; // Replace with your actual API key
            String apiUrl = "http://api.openweathermap.org/geo/1.0/direct?q={city name},{state code},{country code}&limit={limit}&appid={30457e303baf5ff320f8f8e53aff1c0f}
            URL url = new URL(apiUrl);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");
    
            BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            String response = reader.readLine();
            reader.close();
    
            // Parse the response and extract airspeed (example: "wind": {"speed": 5.1})
            // Adjust the parsing logic based on the actual API response structure
            return 5.1; // Example value (replace with actual data)
        } catch (Exception e) {
            e.printStackTrace();
            return 0.0; // Default value if API request fails
        }
    }
    %>
    
    <!-- Determine the final coin side -->
    <%
        String finalOutcome = (Math.random() < 0.5) ? "Head" : "Tail";
        if (initialSide.equals(finalOutcome)) {
            finalOutcome = "You got " + finalOutcome;
        } else {
            finalOutcome = "You got the opposite side (" + finalOutcome + ")";
        }
    %>
    <p><%= finalOutcome %></p>
</body>
</html>
