<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.avcoe.model.*" %>
<%@ page import="java.util.*" %><%@ page import="java.util.List" %>
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
    <title>Delete Faculty</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f4f6;
            padding: 20px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        table {
            width: 70%;
            margin: 20px auto;
            border-collapse: collapse;
            background: white;
            box-shadow: 0 0 10px #ccc;
        }
        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        a.delete-link {
            color: red;
            text-decoration: none;
            font-weight: bold;
        }
        a.delete-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<h2>Delete Faculty</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Department</th>
        <th>Action</th>
    </tr>
    <%
        for (Faculty f : list) {
    %>
        <tr>
            <td><%= f.getId() %></td>
            <td><%= f.getName() %></td>
            <td><%= f.getDepartment() %></td>
            <td>
                <a href="DeleteFacultyServlet?id=<%= f.getId() %>" class="delete-link">Delete</a>
            </td>
        </tr>
    <%
        }
    %>
</table>

</body>
</html>
