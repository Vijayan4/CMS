<%@ page contentType="text/html;charset=ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Course List</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #121212;
            color: #e0e0e0;
            margin: 20px;
        }

        h2 {
            text-align: center;
            color: #ffffff;
        }

        a {
            text-decoration: none;
            padding: 8px 14px;
            background-color: #bb86fc;
            color: black;
            border-radius: 5px;
            font-weight: bold;
        }

        a:hover {
            background-color: #9a67ea;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #1e1e1e;
            box-shadow: 0 2px 10px rgba(0,0,0,0.8);
            border-radius: 8px;
            overflow: hidden;
        }

        th {
            background-color: #272727;
            color: #bb86fc;
            padding: 12px;
        }

        td {
            padding: 12px;
            text-align: center;
        }

        tr {
            border-bottom: 1px solid #333;
        }

        tr:nth-child(even) {
            background-color: #181818;
        }

        .action a {
            background-color: #03dac6;
            color: black;
        }

        .action a:hover {
            background-color: #00bfa5;
        }

        .top-bar {
            text-align: center;
            margin-bottom: 15px;
        }

        p {
            text-align: center;
            color: #aaa;
        }
    </style>
</head>
<body>

<h2>Course List</h2>

<div class="top-bar">
    <a href="${pageContext.request.contextPath}/addcourse">Add Course</a>
</div>

<c:if test="${empty courses}">
    <p>No courses available</p>
</c:if>

<table>
<tr>
  <th>ID</th>
  <th>Name</th>
  <th>Instructor</th>
  <th>Action</th>
</tr>

<c:forEach var="c" items="${courses}">
<tr>
  <td>${c.id}</td>
  <td>${c.name}</td>
  <td>${c.instructor}</td>
  <td class="action">
    <a href="${pageContext.request.contextPath}/edit?id=${c.id}">Edit</a>
    |
    <a href="${pageContext.request.contextPath}/delete?id=${c.id}">Delete</a>
</td>
</tr>
</c:forEach>

</table>

</body>
</html>