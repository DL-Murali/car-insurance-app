<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
/* create table insurance (id int primary key auto_increment,name varchar(20),age int, gender varchar(5),mobile long,address varchar(200),insurancetype varchar(10),cartype varchar(20),modelnumber long, expirydate date);

create table details(id int primary key auto_increment, firstname varchar(20), lastname varchar(20), email varchar(30), password varchar(20), regdate date); */

String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String email = request.getParameter("email");
String password = request.getParameter("password");

// Database connectivity
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/jsp?autoReconnect=true&useSSL=false&useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
	String username = "root";
	String dbPassword = "panni0310";

	try (Connection con = DriverManager.getConnection(url, username, dbPassword)) {
		String sql = "INSERT INTO details (firstname, lastname, email, password, regdate) VALUES (?, ?, ?, ?, CURDATE())";
		try (PreparedStatement statement = con.prepareStatement(sql)) {
	statement.setString(1, firstName);
	statement.setString(2, lastName);
	statement.setString(3, email);
	statement.setString(4, password);

	int i = statement.executeUpdate();
	if (i > 0) {
		response.sendRedirect("welcome.jsp");
	} else {
		response.sendRedirect("index.jsp");
	}
		}
	}
} catch (ClassNotFoundException | SQLException e) {
	e.printStackTrace();
	response.sendRedirect("index.jsp");

}
%>
