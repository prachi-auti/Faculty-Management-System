<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Faculty</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #f5f5f5;
            padding: 0;
            margin: 0;
        }

        .container {
            width: 40%;
            margin: 80px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            margin-bottom: 25px;
            color: #333;
        }

        input[type="text"] {
            width: 80%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        input[type="submit"] {
            padding: 12px 25px;
            font-size: 16px;
            background-color: #28a745;
            color: #fff;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            margin-top: 15px;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            background-color: #0077cc;
            color: #fff;
            padding: 10px 20px;
            border-radius: 8px;
        }

        a:hover {
            background-color: #005fa3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add Faculty</h2>
        <form action="AddFacultyServlet" method="post">
            <input type="text" name="id" placeholder="Faculty ID" required><br>
            <input type="text" name="name" placeholder="Faculty Name" required><br>
            <input type="text" name="department" placeholder="Department" required><br>
            <input type="submit" value="Add Faculty">
        </form>
        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>
