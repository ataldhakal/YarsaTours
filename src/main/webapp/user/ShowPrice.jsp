
<%@ page import="Model.Student" %>
<%@ page import="Service.UserService" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 26/04/2023
  Time: 5:56 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Show Price</title>
    <style>
        body {
            background-color: #d9ead3;
        }
        .container {
            margin: 50px auto;
            padding: 20px;
            max-width: 600px;
            border: 1px solid #ccc;
            border-radius: 10px;
            text-align: center;
            background-color: #fff;
        }

        h1 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
        }

        button:hover {
            background-color: #3e8e41;
        }

        /* Add styles for the popup window */
        .popup {
            display: none; /* Hidden by default */
            position: fixed; /* Fixed position */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgba(0,0,0,0.4); /* Black background with opacity */
        }

        /* Add styles for the popup window content */
        .popup-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 80%; /* 80% of the width of the container */
        }

        /* Add styles for the close button */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

    </style>
</head>
<body>

<div class="container">
    <h1>Travel Details</h1>


<%--    <p>Username: <span>${s[0].userName}</span></p>--%>
<%--    <p>Phone: <span>${s[0].phoneNumber}</span></p>--%>
<%--    <p>Destination: <span>${s[0].location}</span></p>--%>
<%--    <p>No. of Tickets: <span>${s[0].tickets}</span></p>--%>
<%--    <p>Stay Time: <span>${s[0].stay_time}</span></p>--%>
<%--    <p>Price: Rs<span>${s[0].price}</span></p>--%>
<%--    <button onclick="showPopup()">Confirm</button>--%>


    <p>Username: <span>${username}</span></p>
    <p>Phone: <span>${number}</span></p>
    <p>Destination: <span>${location}</span></p>
    <p>No. of Tickets: <span>${ticket}</span></p>
    <p>Stay Time: <span>${time}</span></p>
    <p>Price: Rs<span>${newprice}</span></p>
    <button onclick="showPopup()">Confirm</button>


</div>

<!-- Add the popup window HTML code -->
<div id="popup" class="popup">
    <div class="popup-content">
        <span class="close" onclick="hidePopup()">&times;</span>
        <h2>Your Package is submitted!</h2>
        <p>Please contact us for payment and ticket options.</p>
    </div>
</div>

<script>
    function showPopup() {
        // Display the popup window
        document.getElementById("popup").style.display = "block";
    }

    function hidePopup() {
        // Hide the popup window
        document.getElementById("popup").style.display = "none";
        // Redirect to the page given in the form
        window.location.href = "user?page=return";
    }
</script>

</body>

</html>
