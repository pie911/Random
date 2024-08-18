<!DOCTYPE html>
<html>
<head>
    <title>Coin Toss Calculator</title>
</head>
<body>
    <h1>Coin Toss Calculator</h1>
    <form action="coin_toss.jsp" method="post">
        <label for="initialVelocity">Initial Velocity (m/s):</label>
        <input type="number" id="initialVelocity" name="initialVelocity" required><br>
        <label for="angle">Angle of Projection (degrees):</label>
        <input type="number" id="angle" name="angle" required><br>
        <label for="height">Height (meters):</label>
        <input type="number" id="height" name="height" required><br>
        <input type="submit" value="Calculate">
    </form>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
    double initialVelocity = Double.parseDouble(request.getParameter("initialVelocity"));
    double angleDegrees = Double.parseDouble(request.getParameter("angle"));
    double height = Double.parseDouble(request.getParameter("height"));

    // Convert angle to radians
    double angleRadians = Math.toRadians(angleDegrees);

    // Calculate time of flight
    double g = 9.8; // acceleration due to gravity
    double timeOfFlight = (2 * initialVelocity * Math.sin(angleRadians)) / g;

    // Display the result
%>
<!DOCTYPE html>
<html>
<head>
    <title>Coin Toss Result</title>
</head>
<body>
    <h1>Coin Toss Result</h1>
    <p>Time of Flight: <%= timeOfFlight %> seconds</p>
</body>
</html>
