<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Employee Details</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
	text-align: center;
}

table {
	width: 50%;
	margin: 20px auto;
	border-collapse: collapse;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

th, td {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: left;
}

th {
	background-color: #333;
	color: #fff;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

a {
	text-decoration: none;
	color: #007BFF;
}

button {
	padding: 10px;
	background-color: #007BFF;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

button a {
	color: #fff;
	text-decoration: none;
}

button:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
<h2>DISPLAYING THE SEARCHED EMPLOYEE</h2>

	<br>
	<br>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>DESIGNATION</th>
			<th>PHONE NUMBER</th>
		</tr>
		<tr>
			<td>${employee.getId()}</td>
			<td>${employee.getName()}</td>
			<td>${employee.getDesignation()}</td>
			<td>${employee.getPhone_number()}</td>
		</tr>
	</table>

	<br>
	<br>

	<button>
		<a href="index.jsp">HOME</a>
	</button>

</body>
</html>
