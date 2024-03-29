<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Form</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        form {
            display: inline-block;
            margin-top: 20px;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        form label {
            display: block;
            margin-bottom: 8px;
            color: #333;
        }

        form input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<h2>UPDATE THE EMPLOYEE DETAILS</h2>

	<br>
	<br>
    <form:form action="edit" modelAttribute="employee">
    	<form:label path="id">ID :</form:label>
        <form:input path="id" />
        
        <form:label path="name">NAME :</form:label>
        <form:input path="name" />

        <form:label path="designation">DESIGNATION :</form:label>
        <form:input path="designation" />

        <form:label path="phone_number">PHONE NUMBER :</form:label>
        <form:input path="phone_number" />

        <input type="submit" value="UPDATE">

    </form:form>

</body>
</html>
