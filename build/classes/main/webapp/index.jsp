<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Faculty Management System</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f0f4f7;
            margin: 0;
            padding: 0;
        }

        .container {
            text-align: center;
            margin-top: 80px;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        .card {
            background-color: #ffffff;
            display: inline-block;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }

        .btn {
            display: block;
            width: 200px;
            margin: 15px auto;
            padding: 12px;
            border: none;
            background-color: #0077cc;
            color: white;
            font-size: 16px;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none;
        }

        .btn:hover {
            background-color: #005fa3;
        }

        footer {
            margin-top: 50px;
            color: #888;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Faculty Management System</h1>
        <div class="card">
            <a href="add.jsp" class="btn">Add Faculty</a>
            <a href="view.jsp" class="btn">View All Faculty</a>
            <a href="delete.jsp" class="btn">Delete Faculty</a>
        </div>
        <footer>
            <p>&copy; 2025 AVCOE | Made with *</p>
        </footer>
    </div>
</body>
</html>
