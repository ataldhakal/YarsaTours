<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 26/04/2023
  Time: 4:31 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
 <title>Booking Process</title>
    <style>
        body {
            background-color: #f2f2f2; /* set the background color for the entire page */
        }

        form {
            max-width: 500px; /* set a maximum width for the form */
            margin: 0 auto; /* center the form horizontally */
            background-color: #fff; /* set a background color for the form */
            padding: 20px; /* add some padding to the form */
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); /* add a subtle box-shadow effect to the form */
            border-radius: 10px; /* add some rounded corners to the form */
        }

        label {
            display: block; /* make each label a block element to add some vertical spacing */
            margin-bottom: 10px; /* add some bottom margin to each label */
            font-weight: bold; /* make each label text bold */
        }

        input[type="text"],
        input[type="tel"],
        input[type="number"] {
            width: 100%; /* set the input fields to take up the full width of the form */
            padding: 10px; /* add some padding to the input fields */
            border-radius: 5px; /* add some rounded corners to the input fields */
            border: none; /* remove the default border of the input fields */
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1); /* add a subtle box-shadow effect to the input fields */
            margin-bottom: 20px; /* add some bottom margin to each input field */
        }

        input[type="submit"] {
            background-color: #4CAF50; /* set a background color for the submit button */
            color: #fff; /* set a text color for the submit button */
            padding: 10px 20px; /* add some padding to the submit button */
            border: none; /* remove the default border of the submit button */
            border-radius: 5px; /* add some rounded corners to the submit button */
            cursor: pointer; /* add a pointer cursor to the submit button */
            transition: all 0.3s ease-in-out; /* add a smooth transition effect to the submit button */
        }

        input[type="submit"]:hover {
            background-color: #3e8e41; /* change the background color of the submit button on hover */
        }

    </style>
</head>

<body>

<form action="user?page=savebooking" method="post">


    <input type="hidden" name="id" value="${id}">

    <label for="username">Username:</label>
    <input type="text" id="username" name="username"><br><br>

    <label for="address">Address:</label>
    <input type="text" id="address" name="address"><br><br>

    <label for="phone">Phone Number:</label>
    <input type="tel" id="phone" name="phone"><br><br>

    <label for="destination">Destination:</label>
    <input type="text" id="destination" name="destination" value="${userList.get(0).location}"><br><br>

    <label for="tickets">Number of Tickets:</label>
    <input type="number" id="tickets" name="tickets"><br><br>

    <label for="staytime">Stay Time:</label>
    <input type="text" id="staytime" name="staytime" value="${userList.get(0).stay_time}"><br><br>

    <input type="hidden" name="status" value="pending">



    <input type="submit" value="Submit">
</form>

</body>
</html>
