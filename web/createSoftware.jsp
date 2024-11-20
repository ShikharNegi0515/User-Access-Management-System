<!DOCTYPE html>
<html>
<head>
    <title>Create Software</title>
</head>
<body>
    <h2>Create Software</h2>
    <form action="createSoftware" method="post">
        <label for="name">Software Name:</label>
        <input type="text" id="name" name="name" required><br><br>
        <label for="description">Description:</label>
        <textarea id="description" name="description" required></textarea><br><br>
        <label for="access_levels">Access Levels (comma-separated):</label>
        <input type="text" id="access_levels" name="access_levels" required><br><br>
        <button type="submit">Create</button>
    </form>
</body>
</html>
