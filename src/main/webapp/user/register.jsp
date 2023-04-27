<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/04/2023
  Time: 11:09 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head>
    <title>Registration Form</title>

    <style type="text/css">
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
        }

        .container {
            margin: auto;
            margin-top: 50px;
            max-width: 500px;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.3);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        input {
            padding: 10px;
            margin-bottom: 20px;
            border: none;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        button {
            padding: 10px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
        }

        button:hover {
            background-color: #3e8e41;
        }

    </style>
</head>
<body>
<div class="container">
    <form action="user?page=register" method="post">
        <h1>Registration Form</h1>

        <label for="name">Full Name</label>
        <input type="text" placeholder="Enter your name" id="name" name="username" required>

        <label for="email">Email</label>
        <input type="email" placeholder="Enter your email" id="email" name="email" required>

        <label for="password">Password</label>
        <input type="password" placeholder="Enter your password" id="password" name="password" required>

        <label for="confirm-password">Confirm Password</label>
        <input type="password" placeholder="Confirm your password" id="confirm-password"  required>

        <button type="submit">Register</button>
    </form>
</div>
</body>
</html>

