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
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: sans-serif;
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
        }

        .login-box {
            width: 320px;
            height: 420px;
            background: #ffffff;
            color: #000000;
            top: 50%;
            left: 50%;
            position: absolute;
            transform: translate(-50%, -50%);
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.5);
            padding: 70px 30px;
            border-radius: 20px;
        }

        .avatar {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            position: absolute;
            top: -50px;
            left: calc(50% - 50px);
        }

        h1 {
            margin: 0;
            padding: 0 0 20px;
            text-align: center;
            font-size: 30px;
        }

        .login-box p {
            margin: 0;
            padding: 0;
            font-weight: bold;
        }

        .login-box input {
            width: 100%;
            margin-bottom: 20px;
        }

        .login-box input[type="text"],
        .login-box input[type="password"] {
            border: none;
            border-bottom: 1px solid #000000;
            background: transparent;
            outline: none;
            height: 40px;
            color: #000000;
            font-size: 16px;
        }

        .login-box input[type="submit"] {
            border: none;
            outline: none;
            height: 40px;
            background: #4CAF50;
            color: #ffffff;
            font-size: 18px;
            border-radius: 20px;
        }

        .login-box input[type="submit"]:hover {
            cursor: pointer;
            background: #FFA500;
            color: #000000;
        }

        .login-box a {
            text-decoration: none;
            font-size: 14px;
            color: #000000;
        }

        .login-box a:hover {
            color: #FFA500;
        }

    </style>
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="assets/style.css">
</head>
<body>
<div class="login-box">
    <img src="user.png" class="avatar">
    <h1>Login Here</h1>
    <form action="admin?page=login"  method="post">
        <p>Username</p>
        <input type="text" name="username" placeholder="Enter Username">
        <p>Password</p>
        <input type="password" name="password" placeholder="Enter Password">
        <input type="submit" name="submit">

    </form>
</div>
</body>
</html>
