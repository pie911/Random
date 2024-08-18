<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
    double initialVelocity = Double.parseDouble(request.getParameter("initialVelocity"));
    double angleDegrees = Double.parseDouble(request.getParameter("angle"));
    double height = Double.parseDouble(request.getParameter("height"));
    String initialSide = request.getParameter("initialSide");

    // Convert angle to radians
    double angleRadians = Math.toRadians(angleDegrees);

    // Calculate time of flight
    double g = 9.8; // acceleration due to gravity
    double timeOfFlight = (2 * initialVelocity * Math.sin(angleRadians)) / g;

    // Determine outcome based on initial side
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
    <title>Coin Toss Result</title>
</head>
<body>
    <h1>Coin Toss Result</h1>
    <p>Time of Flight: <%= timeOfFlight %> seconds</p>
    <p><%= outcome %></p>
</body>
</html>
