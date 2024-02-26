<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Employee Management System</title>
<style type="text/css">
body {
	margin: 0;
	font-family: 'Arial', sans-serif;
	overflow: hidden;
}

.split {
	height: 100vh;
	width: 50vw;
	position: fixed;
	z-index: 1;
	top: 0;
	overflow-x: hidden;
	padding-top: 20px;
	display: flex;
	align-items: center;
	justify-content: center;
	transition: 0.5s;
}

.left {
	left: 0;
	background: linear-gradient(to right, #4CAF50, #45a049),
		url('https://via.placeholder.com/800x1200') no-repeat center center
		fixed;
	background-size: cover;
}

.right {
	right: 0;
	background: linear-gradient(to bottom, #3498db, #2980b9);
}

.centered {
	text-align: center;
	color: white;
	transition: 0.3s;
}

.centered h2 {
	margin-bottom: 10px;
}

.right a {
	text-decoration: none;
	color: white;
	display: block;
	padding: 10px;
	margin: 10px;
	border-radius: 5px;
	transition: background-color 0.3s, color 0.3s;
}

.right a:hover {
	background-color: #2980b9;
	color: #fff;
	transform: translateY(-5px);
}
</style>
</head>
<body>
	<div class="split left">
		<div class="centered">
			<h2>
				WELCOME<br>To
			</h2>
			<h1>Employee Management System</h1>
		</div>
	</div>

	<div class="split right">
		<div class="centered">
			<a href="display">DISPLAY ALL EMPLOYEES</a> 
			<a href="add">ADD EMPLOYEE</a> 
			<a href="search">SEARCH</a> 
			
			<a href="delete">DELETE</a> 
			<a href="update">UPDATE</a>
		</div>
	</div>
</body>
</html>
