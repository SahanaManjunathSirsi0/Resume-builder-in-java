<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
    <style>
        body { 
            font-family: Arial, sans-serif; 
            padding: 20px; 
            background-color: #fff3f3; 
        }
        h2 { 
            color: red; 
        }
        a { 
            text-decoration: none; 
            color: blue; 
        }
    </style>
</head>
<body>
    <h2>Oops! Something went wrong.</h2>
    <p>${errorMessage}</p>
    <a href="index.jsp">← Go Back to Home</a>
</body>
</html>
