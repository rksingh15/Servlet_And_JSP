<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hello Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h1 {
            color: #007BFF;
            transition: color 0.3s ease, transform 0.3s ease;
        }

        h1:hover {
            color: #0056b3;
            transform: scale(1.1);
        }
    </style>
</head>
<body>
    <h1>
        Hello <%= session.getAttribute("name") != null ? session.getAttribute("name")+" Welcome" : "Technology" %>
    </h1>
</body>
</html>
