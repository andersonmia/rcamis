<%--
  Created by IntelliJ IDEA.
  User: mia
  Date: 16.05.23
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Course</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="../cssfile.css" />

    <style type="text/css">
* {
                        font-family: Work Sans, serif;
                        color: #99154b;
                    }
    body {
            background-color: #f2f2f2;
        }

        .container {
            margin: 10% auto 50px;
            width: 400px;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            position: relative;
            justify-content: center;
            display: flex;
            flex-direction: column;
        }

        .container img {
            position: absolute;
            top: -75px;
            left: 50%;
            transform: translateX(-50%);
            width: 100px;
            height: 100px;
            border-radius: 50%;
            background-color: #ffffff;
            padding: 5px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
        }

        h2 {
            text-align: center;
            color: #333333;
            margin-top: 10px;
        }

        p, a {
            text-align: center;
            text-decoration: none;
        }
        input[type="text"], input[type="password"] , input[type="date"] , input[type="number"] {
            width: 93%;
            padding: 10px;
            margin-bottom: 20px;
            border: none;
            border-radius: 5px;
            background-color: #f2f2f2;
            color: #333333;
            font-size: 16px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #29375A;
            color: #ffffff;
            font-size: 16px;
            cursor: pointer;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
        }

        select {
            width: 98%;
            padding: 10px;
            margin-bottom: 20px;
            border: none;
            border-radius: 5px;
            background-color: #f2f2f2;
            color: #333333;
            font-size: 16px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
        }

        option {
            color: #333333;
        }

    </style>
</head>
<body>
<div class="container">
    <img src="https://media.licdn.com/dms/image/C560BAQEl6a9tUkSKfg/company-logo_200_200/0/1558604414993?e=2147483647&amp;v=beta&amp;t=liCSw94UkEjwbMZZh8N23ZMYixEAMmZNq2IftvsF97Y"
         alt="LinkedIn Logo">
    <h2>Create Course</h2>
    <p>Welcome to RCA SMIS Course Creation Please Enter Details!!</p>
    <c:if test="${error != null}">
        <p>
            <span style="color: red"> ${error}</span>
        </p>
    </c:if>
    <c:if test="${success != null}">
        <p>
            <span style="color: green"> ${success}</span>
        </p>
    </c:if>
    <form  action="createcourse.php?page=createcourse" method="post">
        <input type="text" placeholder="Course Name" required name="name">
        <input type="text" placeholder="Course Code" required name="code">
        <input type="number" placeholder="Min Students" required name="min">
        <input type="number" placeholder="Max Students" required name="max">
        <label>
            Start Date<br>
            <input type="date" placeholder="Start Date" required name="start">
        </label>
        <label>
            End Date<br>
            <input type="date" placeholder="End Date" required name="end">
        </label>
        <input type="submit" value="Create Course">
    </form>

    <p>
        <a href="listcourses.php?page=courses&&action=list">
            All Courses
        </a>
    </p>
</div>
</body>
</html>
