<!DOCTYPE html>
<html>
<head>
    <title>Request Access</title>
</head>
<body>
    <h2>Request Access</h2>
    <form action="requestAccess" method="post">
        <label for="software_id">Software ID:</label>
        <input type="number" id="software_id" name="software_id" required><br><br>
        <label for="access_type">Access Type:</label>
        <select id="access_type" name="access_type" required>
            <option value="Read">Read</option>
            <option value="Write">Write</option>
            <option value="Admin">Admin</option>
        </select><br><br>
        <label for="reason">Reason for Access:</label>
        <textarea id="reason" name="reason" required></textarea><br><br>
        <button type="submit">Submit Request</button>
    </form>
</body>
</html>
