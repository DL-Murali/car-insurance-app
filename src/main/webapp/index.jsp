<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
<style>
body {
	background-color: #f2f2f2;
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-image:
		url('https://img.freepik.com/premium-photo/blurred-colorful-wallpaper-background_976742-179.jpg');
	background-size: cover;
}

.container {
	width: 30%;
	margin: 20px auto; /* Decreased margin */
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	padding: 20px;
	border: 2px solid #ddd; /* Added border */
}

h1 {
	text-align: center; /* Centered heading */
	color: #333;
	margin-top: 20px; /* Decreased margin */
}

h2 {
	text-align: center;
	color: #333;
}

table {
	width: 100%;
	height: 40vh;
}

table, th, td {
	border: none; /* Removed border */
	border-collapse: collapse;
}

th, td {
	padding: 10px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
	font-weight: bold;
}

input[type="text"], input[type="password"], input[type="submit"], input[type="reset"]
	{
	width: calc(100% - 20px);
	padding: 10px;
	margin: 5px;
	border: 1px solid #ddd;
	border-radius: 20px;
	border: 2px solid;
}

input[type="submit"], input[type="reset"] {
	background-color: #4CAF50;
	color: white;
	cursor: pointer;
	margin-top: 10px height: 10vh;
}

input[type="submit"]:hover, input[type="reset"]:hover {
	background-color: #45a049;
}

a {
	color: #007bff;
	text-decoration: none;
}

/* Added style for username and password inputs */
input[type="text"], input[type="password"] {
	margin-top: 10px;
}
</style>
</head>
<body>
	<h1>Car Insurance Application</h1>
	<div class="container">
		<form method="post" action="login.jsp">

			<table>
				<tr>
					<td colspan="2" style="text-align: center;">
						<!-- Centered --> <input type="text" name="Email" value=""
						placeholder="Email" /><br> <!-- Updated placeholder and added line break -->
						<input type="password" name="password" value=""
						placeholder="Password" /> <!-- Updated placeholder -->
					</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Login" /> <input
						type="reset" value="Reset" /></td>
				</tr>
				<tr>
					<td colspan="2">New User ? <a href="register.jsp">Register
							Here</a></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
