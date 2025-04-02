<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String errorMessage = (String) request.getAttribute("errorMessage");
    String successMessage = (String) request.getAttribute("successMessage");
%>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
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
        form {
            background: #fff;
            padding: 20px;
            width: 300px;
            margin: 0 auto;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        label, input {
            display: block;
            width: 100%;
            margin-bottom: 10px;
        }
        input {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            background-color: #28a745;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        button:hover {
            background-color: #218838;
        }
        .error {
            color: red;
        }
        .success {
            color: green;
        }
        a {
            color: #007bff;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h2>Register</h2>

    <% if (errorMessage != null) { %>
        <p class="error"><%= errorMessage %></p>
    <% } %>

    <% if (successMessage != null) { %>
        <p class="success"><%= successMessage %></p>
        <script>
            setTimeout(function() {
                window.location.href = "<%= request.getContextPath() %>/login";
            }, 2000);
        </script>
    <% } %>

    <form action="<%= request.getContextPath() %>/users/register" method="post">
        <label>Name:</label>
        <input type="text" name="name" required />
        
        <label>Email:</label>
        <input type="email" name="email" required />
        
        <label>Phone:</label>
        <input type="text" name="phone" required />
        
        <label>Password:</label>
        <input type="password" name="password" required />
        
        <label>Confirm Password:</label>
        <input type="password" name="confirmPassword" required />
        
        <button type="submit">Register</button>
    </form>

    <p>Already have an account? <a href="<%= request.getContextPath() %>/login">Login here</a></p>
</body>
</html>
