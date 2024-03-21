<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
<style>
body {
	background-color: #f2f2f2;
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-image:
		url('https://t3.ftcdn.net/jpg/04/56/00/16/360_F_456001627_vYt7ZFjxEQ1sshme67JAXorKRPo8gsfN.jpg');
	background-size: cover;
}

.container {
	width: 30%;
	margin: 50px auto;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	padding: 20px;
}

h2 {
	text-align: center;
	color: #333;
}

table {
	width: 100%;
}

table, th, td {
	border: none;
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
	border-radius: 4px;
}

input[type="submit"], input[type="reset"] {
	background-color: #4CAF50;
	color: white;
	cursor: pointer;
	border-radius:20px
}

input[type="submit"]:hover, input[type="reset"]:hover {
	background-color: #45a049;
}

a {
	color: #007bff;
	text-decoration: none;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Enter Information Here</h2>
		<form method="post" action="userRegistration.jsp">
			<table>
				<tr>
					<td>First Name</td>
					<td><input type="text" name="firstName" value="" /></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><input type="text" name="lastName" value="" /></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email" value="" /></td>
				</tr>

				<tr>
					<td>Password</td>
					<td><input type="password" name="password" value="" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Submit" /></td>
					<td><input type="reset" value="Reset" /></td>
				</tr>
				<tr>
					<td colspan="2">Already registered!! <a href="index.jsp">Login
							Here</a></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
