<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coin Toss Calculator</title>
    <style>
        /* Add your custom CSS styles here */
    </style>
</head>
<body>
    <h1>Coin Toss Calculator</h1>
    <form action="Flips.jsp" method="post">
        <!-- Material selection -->
        <label for="material">Select Material:</label>
        <select id="material" name="material" required>
            <option value="iron">Iron</option>
            <option value="brass">Brass</option>
            <option value="copper">Copper</option>
            <option value="gold">Gold</option>
            <option value="silver">Silver</option>
        </select><br>

        <!-- Coin Height (mm) -->
        <label for="height">Coin Height (mm):</label>
        <input type="number" id="height" name="height" required><br>

        <!-- Coin Diameter (mm) -->
        <label for="diameter">Coin Diameter (mm):</label>
        <input type="number" id="diameter" name="diameter" required><br>

        <!-- Release Height (meters) -->
        <label for="releaseHeight">Release Height (meters):</label>
        <input type="number" id="releaseHeight" name="releaseHeight" required><br>

        <!-- Angle of Projection (degrees) -->
        <label for="angle">Angle of Projection (degrees):</label>
        <input type="number" id="angle" name="angle" min="0" max="180" value="180" required><br>

        <!-- Initial Side -->
        <label for="initialSide">Initial Side:</label>
        <input type="radio" id="head" name="initialSide" value="head" required>
        <label for="head">Head</label>
        <input type="radio" id="tail" name="initialSide" value="tail" required>
        <label for="tail">Tail</label><br>

        <!-- Custom Motor Power (force) -->
        <label for="motorPower">Custom Motor Power (force):</label>
        <input type="number" id="motorPower" name="motorPower"><br>

        <!-- Calculate Weight Button -->
        <input type="submit" value="Position">
    </form>
</body>
</html>
