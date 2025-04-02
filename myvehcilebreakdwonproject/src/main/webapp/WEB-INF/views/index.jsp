<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Vehicle Breakdown Support</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/styles.css">
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
        a {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            text-decoration: none;
            color: white;
            background-color: #007bff;
            border-radius: 5px;
        }
        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Welcome to Vehicle Breakdown Emergency Support</h2>
    
    <a href="<%= request.getContextPath() %>/users/register">Register</a> 
    <a href="<%= request.getContextPath() %>/users/login">Login</a>
</body>
</html>