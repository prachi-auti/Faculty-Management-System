<%@ page import="java.util.*, com.avcoe.model.*" %>
<%@ page import="java.util.List" %>
<%@ page import="com.avcoe.model.Faculty" %>
<%@ page import="com.avcoe.model.FacultyRepo" %>

<%
    FacultyRepo repo = new FacultyRepo();
    List<Faculty> list = repo.getAll();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Faculty</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #f5f7fa;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 50px auto;
            text-align: center;
        }

        h2 {
            margin-bottom: 30px;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }

        th, td {
            padding: 14px;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #0077cc;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
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
        <h2>All Faculty Members</h2>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Department</th>
            </tr>
            <%
                for (Faculty f : list) {
            %>
                <tr>
                    <td><%= f.getId() %></td>
                    <td><%= f.getName() %></td>
                    <td><%= f.getDepartment() %></td>
                </tr>
            <%
                }
            %>
        </table>
        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>
