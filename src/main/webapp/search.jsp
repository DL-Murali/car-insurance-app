<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Results</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	margin: 0;
	padding: 0;
	text-align: center;
}

h2 {
	color: #333;
}

table {
	border-collapse: collapse;
	width: 80%;
	margin: 20px auto;
}

th, td {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #ddd;
}
</style>
</head>
<body>
	<h2>Search Results</h2>
	<div id="searchResults">
		<%
		String name = request.getParameter("name");

		// Perform database connection and query
		String url = "jdbc:mysql://localhost:3306/jsp";
		String username = "root";
		String password = "panni0310";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			Statement stmt = con.createStatement();
			String query = "SELECT * FROM insurance WHERE name = '" + name + "'";

			ResultSet rs = stmt.executeQuery(query);
		%>

		<table>
			<thead>
				<tr>
					<%
					ResultSetMetaData metaData = rs.getMetaData();
					int columnCount = metaData.getColumnCount();
					for (int i = 1; i <= columnCount; i++) {
						out.println("<th>" + metaData.getColumnName(i) + "</th>");
					}
					%>
				</tr>
			</thead>
			<tbody>
				<%
				while (rs.next()) {
					out.println("<tr>");
					for (int i = 1; i <= columnCount; i++) {
						out.println("<td>" + rs.getString(i) + "</td>");
					}
					out.println("</tr>");
				}
				%>
			</tbody>
		</table>

		<%
		// Close connections
		rs.close();
		stmt.close();
		con.close();
		} catch (Exception e) {
		out.println("Error: " + e.getMessage());
		}
		%>
	</div>
</body>
</html>
