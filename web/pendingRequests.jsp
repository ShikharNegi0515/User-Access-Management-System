<!DOCTYPE html>
<html>
<head>
    <title>Pending Requests</title>
</head>
<body>
    <h2>Pending Access Requests</h2>
    <%
        try (Connection conn = DBUtil.getConnection()) {
            String query = "SELECT r.id, u.username, s.name, r.access_type, r.reason, r.status FROM requests r " +
                           "JOIN users u ON r.user_id = u.id " +
                           "JOIN software s ON r.software_id = s.id WHERE r.status = 'Pending'";
            try (PreparedStatement stmt = conn.prepareStatement(query)) {
                ResultSet rs = stmt.executeQuery();
    %>
        <table border="1">
            <tr>
                <th>Request ID</th>
                <th>Username</th>
                <th>Software Name</th>
                <th>Access Type</th>
                <th>Reason</th>
                <th>Action</th>
            </tr>
            <%
                while (rs.next()) {
            %>
                <tr>
                    <td><%= rs.getInt("id") %></td>
                    <td><%= rs.getString("username") %></td>
                    <td><%= rs.getString("name") %></td>
                    <td><%= rs.getString("access_type") %></td>
                    <td><%= rs.getString("reason") %></td>
                    <td>
                        <form action="approveRequest" method="post" style="display: inline;">
                            <input type="hidden" name="request_id" value="<%= rs.getInt("id") %>">
                            <button type="submit" name="action" value="Approved">Approve</button>
                        </form>
                        <form action="approveRequest" method="post" style="display: inline;">
                            <input type="hidden" name="request_id" value="<%= rs.getInt("id") %>">
                            <button type="submit" name="action" value="Rejected">Reject</button>
                        </form>
                    </td>
                </tr>
            <%
                }
            %>
        </table>
    <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>
