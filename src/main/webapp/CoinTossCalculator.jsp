<!DOCTYPE html>
<html>
<head>
    <title>Coin Toss Calculator</title>
</head>
<body>
    <h1>Coin Toss Calculator</h1>
    <form action="Flips.jsp" method="post">
        <label for="initialVelocity">Initial Velocity (m/s):</label>
        <input type="number" id="initialVelocity" name="initialVelocity" required><br>
        <label for="angle">Angle of Projection (degrees):</label>
        <input type="number" id="angle" name="angle" required><br>
        <label for="height">Height (meters):</label>
        <input type="number" id="height" name="height" required><br>
        <label for="initialSide">Initial Side:</label>
        <input type="radio" id="head" name="initialSide" value="head" required>
        <label for="head">Head</label>
        <input type="radio" id="tail" name="initialSide" value="tail" required>
        <label for="tail">Tail</label><br>
        <input type="submit" value="Calculate">
    </form>
</body>
</html>
