<%@ page contentType="text/html;charset=ISO-8859-1" %>

<html>
<head>
    <title>Add / Edit Course</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #121212;
            color: #e0e0e0;
            margin: 20px;
        }

        h1 {
            text-align: center;
            color: #ffffff;
        }

        .container {
            width: 400px;
            margin: auto;
            background-color: #1e1e1e;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.8);
        }

        label {
            display: block;
            margin-top: 10px;
            margin-bottom: 5px;
        }

        input {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #2c2c2c;
            color: white;
        }

        input:focus {
            outline: none;
            border: 1px solid #bb86fc;
        }

        button {
            width: 100%;
            margin-top: 15px;
            padding: 10px;
            background-color: #bb86fc;
            border: none;
            border-radius: 5px;
            color: black;
            font-weight: bold;
            cursor: pointer;
        }

        button:hover {
            background-color: #9a67ea;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #03dac6;
            text-decoration: none;
        }

        a:hover {
            color: #00bfa5;
        }
    </style>
</head>

<body>

<h1>Add / Edit Course</h1>

<div class="container">

    <form action="${pageContext.request.contextPath}/save" method="post">

        <!-- Hidden ID -->
        <input type="hidden" name="id" value="${course.id}" />

        <label>Course Name:</label>
        <input type="text" name="name" value="${course.name}" required>

        <label>Instructor:</label>
        <input type="text" name="instructor" value="${course.instructor}" required>

        <button type="submit">Save Course</button>
    </form>

    <a href="${pageContext.request.contextPath}/">Back to Course List</a>

</div>

</body>
</html>