<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Task Management System</title>

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap"
	rel="stylesheet">

<!-- CSS Styles -->
<style>
body {
	font-family: 'Poppins', sans-serif;
	margin: 0;
	padding: 0;
	background: linear-gradient(to right, #74ebd5, #ACB6E5);
	display: flex;
	flex-direction: column;
	min-height: 100vh;
	color: #2C3E50;
}

.container {
	flex-grow: 1;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	padding: 20px;
}

.section {
	width: 100%;
	padding: 60px 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

.section:nth-child(odd) {
	background-color: rgba(255, 255, 255, 0.9);
	border-radius: 15px;
	box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
}

.section:nth-child(even) {
	background-color: transparent;
}

h1, h2 {
	margin-bottom: 20px;
	color: #34495E;
	text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
}

h1 {
	font-size: 48px;
	font-weight: 600;
	text-transform: uppercase;
}

h2 {
	font-size: 30px;
	font-weight: 500;
}

p {
	font-size: 18px;
	line-height: 1.6;
	color: #555;
}

a {
	display: inline-block;
	margin: 10px;
	padding: 15px 40px;
	background: linear-gradient(to right, #6A82FB, #FC5C7D);
	color: #fff;
	text-decoration: none;
	font-size: 18px;
	font-weight: 500;
	border-radius: 30px;
	transition: transform 0.3s ease, box-shadow 0.3s ease;
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
}

a:hover {
	transform: translateY(-5px);
	box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3);
}

footer {
	background-color: #34495E;
	color: #fff;
	padding: 20px;
	text-align: center;
	position: relative;
	width: 100%;
	font-size: 14px;
}

footer p {
	margin: 0;
}

/* Responsive Design */
@media ( max-width : 768px) {
	h1 {
		font-size: 36px;
	}
	h2 {
		font-size: 24px;
	}
	a {
		font-size: 16px;
		padding: 12px 25px;
	}
}
</style>

</head>
<body>

	<div class="container">
		<!-- Section 1: Title and Subtitle -->
		<div class="section">
			<h2>Task Management System</h2>
		</div>

		<!-- Section 2: Links -->
		<div class="section">
			<p>
				<a href="${pageContext.request.contextPath}/login">Login</a> <a
					href="${pageContext.request.contextPath}/register">Registration</a>
			</p>
		</div>
	</div>

</body>
</html>
