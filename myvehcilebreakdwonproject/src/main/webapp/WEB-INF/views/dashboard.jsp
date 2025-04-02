<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.vechicle.breakdown.model.Breakdown" %>
<%
    Object userObj = session.getAttribute("user");
    List<Breakdown> breakdowns = (List<Breakdown>) session.getAttribute("breakdowns");
%>
<!DOCTYPE html>
<html>
<head>
    <title>User Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
            text-align: center;
        }
        h2, h3 {
            color: #333;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        input, button {
            padding: 8px;
            margin: 5px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }
        button {
            background-color: #28a745;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
        }
        .logout-button {
            background-color: #dc3545;
        }
        .logout-button:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <h2>Welcome, <%= (userObj != null) ? ((com.vechicle.breakdown.model.Users) userObj).getName() : "Guest" %>!</h2>
    <p>Email: <%= (userObj != null) ? ((com.vechicle.breakdown.model.Users) userObj).getEmail() : "N/A" %></p>
    <p>Phone: <%= (userObj != null) ? ((com.vechicle.breakdown.model.Users) userObj).getPhone() : "N/A" %></p>

    <h3>Submit Breakdown Request</h3>
    <form action="submit-breakdown" method="post">
        <label>Location:</label> <input type="text" name="location" required /><br>
        <label>Vehicle Type:</label> <input type="text" name="vehicleType" required /><br>
        <label>Issue:</label> <input type="text" name="issue" required /><br>
        <button type="submit">Submit Request</button>
    </form>

    <h3>Your Breakdown Requests</h3>
    <table>
        <tr>
            <th>Location</th>
            <th>Vehicle Type</th>
            <th>Issue</th>
            <th>Status</th>
        </tr>
        <% if (breakdowns != null) { 
            for (Breakdown breakdown : breakdowns) { %>
                <tr>
                    <td><%= breakdown.getLocation() %></td>
                    <td><%= breakdown.getVehicleType() %></td>
                    <td><%= breakdown.getIssue() %></td>
                    <td><%= breakdown.getStatus() %></td>
                </tr>
        <%  } 
        } else { %>
            <tr><td colspan="4">No breakdown requests found.</td></tr>
        <% } %>
    </table>

    <form action="index.jsp">
        <button type="submit" class="logout-button">LOGOUT</button>
    </form>
</body>
</html>