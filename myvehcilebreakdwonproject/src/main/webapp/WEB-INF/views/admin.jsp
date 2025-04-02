<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
            text-align: center;
        }
        h2 {
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
        select, button {
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
    </style>
</head>
<body>
    <h2>Admin Dashboard - Breakdown Requests</h2>
    <table>
        <thead>
            <tr>
                <th>User</th>
                <th>Location</th>
                <th>Vehicle Type</th>
                <th>Issue</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="breakdown" items="${breakdowns}">
                <tr>
                    <td>${breakdown.user.name}</td>
                    <td>${breakdown.location}</td>
                    <td>${breakdown.vehicleType}</td>
                    <td>${breakdown.issue}</td>
                    <td>${breakdown.status}</td>
                    <td>
                        <form action="update-status" method="post">
                            <input type="hidden" name="id" value="${breakdown.id}" />
                            <select name="status">
                                <option value="Pending" <c:if test="${breakdown.status == 'Pending'}">selected</c:if>>Pending</option>
                                <option value="In Progress" <c:if test="${breakdown.status == 'In Progress'}">selected</c:if>>In Progress</option>
                                <option value="Resolved" <c:if test="${breakdown.status == 'Resolved'}">selected</c:if>>Resolved</option>
                            </select>
                            <button type="submit">Update</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>