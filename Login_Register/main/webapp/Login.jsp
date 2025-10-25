<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>User Login</title>
<style>
/* Reset & base */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	background: linear-gradient(135deg, #667eea, #764ba2);
}

/* Login card */
.login-container {
	background: #ffffff;
	padding: 40px 30px;
	border-radius: 12px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
	width: 350px;
	text-align: center;
}

.login-container h2 {
	color: #333;
	margin-bottom: 25px;
	font-size: 24px;
	font-weight: 700;
}

.login-container form {
	display: flex;
	flex-direction: column;
	gap: 15px;
}

.login-container input[type="email"], .login-container input[type="password"]
	{
	padding: 12px 15px;
	border: 1px solid #ccc;
	border-radius: 8px;
	outline: none;
	font-size: 16px;
	transition: 0.3s;
}

.login-container input[type="email"]:focus, .login-container input[type="password"]:focus
	{
	border-color: #667eea;
	box-shadow: 0 0 5px rgba(102, 126, 234, 0.5);
}

.login-container input[type="submit"] {
	padding: 12px;
	background: #667eea;
	color: white;
	font-weight: 600;
	border: none;
	border-radius: 8px;
	cursor: pointer;
	transition: 0.3s;
	font-size: 16px;
}

.login-container input[type="submit"]:hover {
	background: #5a67d8;
}

.login-container .error-msg {
	color: red;
	font-size: 14px;
	margin-top: 5px;
}

.login-container .link {
	margin-top: 10px;
	font-size: 14px;
}

.login-container .link a {
	color: #667eea;
	text-decoration: none;
	font-weight: 500;
}

.login-container .link a:hover {
	text-decoration: underline;
}

@media ( max-width : 400px) {
	.login-container {
		width: 90%;
		padding: 30px 20px;
	}
}
</style>
</head>
<body>
	<div class="login-container">
		<h2>User Login</h2>

		<form action="loginForm" method="post">
			<input type="email" name="email" placeholder="Email" required>
			<input type="password" name="password" placeholder="Password"
				required> <input type="submit" value="Login">
		</form>

		<div>
			<%= session.getAttribute("link") != null ? session.getAttribute("link") : "" %>
		</div>

		<div class="link">
			<span>Don't have an account? <a href="registerFront.jsp">Register
					here</a></span>
		</div>
	</div>
</body>
</html>
