<%--
  Created by IntelliJ IDEA.
  User: Jiwan
  Date: 4/6/2023
  Time: 9:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Policy_details</title>
  <style>
    form {
      max-width: 600px;
      margin: 0 auto;
      padding: 20px;
      background-color: #f2f2f2;
      border-radius: 5px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }

    label {
      display: block;
      margin-bottom: 10px;
      font-weight: bold;
      color: #555;
    }

    input[type="text"],
    input[type="email"],
    input[type="date"],
    input[type="tel"] {
      display: block;
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
      box-sizing: border-box;
      margin-bottom: 20px;
      font-size: 16px;
      color: #333;
    }

    button[type="submit"] {
      background-color: #4CAF50;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 16px;
    }

    button[type="submit"]:hover {
      background-color: #3e8e41;
    }

    button[type="submit"]:focus {
      outline: none;
    }

  </style>
</head>

<body>
<form method="post" action="user?page=finaledit">
  <input type="hidden" name="id" value="${student.id}">
  <label for="name">Name:</label>
  <input type="text" id="name" name="name" value="${student.userName}">
  <br>
  <label for="email">Address:</label>
  <input type="text" id="email" name="address" value="${student.address}">
  <br>
  <label for="dob">Phone Number:</label>
  <input type="number" id="dob" name="number" value="${student.phoneNumber}">
  <br>
  <br>
  <br>
  <label>Destination</label>
  <select name="location"  required>
    <option>Select Destination</option>
    <option>Rara, Nepal</option>
    <option>Darjeeling</option>
    <option>Sauraha, Chitwan</option>
    <option>Dhorpatan, Nepal</option>
    <option>Pokhara, Nepal</option>
    <option>Tibet</option>
  </select>
  <br>
  <label for="occupation">No of Tickets</label>
  <input type="number" id="occupation" name="ticket" value="${student.tickets}">
  <br>
  <label for="idtype">Total Cost</label>
  <input type="number" id="idtype" name="price" value="${student.price}" readonly>
  <br>
  <label for="idnumber">Stay Time</label>
  <input type="text" id="idnumber" name="stay" value="${student.stay_time}" readonly>
  <br>

  <button type="submit">Update</button>
</form>

</body>
</html>
