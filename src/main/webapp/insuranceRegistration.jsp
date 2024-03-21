<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
String applicantName = request.getParameter("applicantName");
Integer age = null;
if (!request.getParameter("age").isEmpty()) {
    age = Integer.parseInt(request.getParameter("age"));
}
String gender = request.getParameter("gender");
Long mobile = null;
if (!request.getParameter("mobile").isEmpty()) {
    mobile = Long.parseLong(request.getParameter("mobile"));
}
String address = request.getParameter("address");
String insuranceType = request.getParameter("insuranceType");
String carType = request.getParameter("carType");
Long modelNumber = null;
if (!request.getParameter("modelNumber").isEmpty()) {
    modelNumber = Long.parseLong(request.getParameter("modelNumber"));
}
String expiryDate = request.getParameter("expiryDate");

// Database connectivity
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    String url = "jdbc:mysql://localhost:3306/jsp?autoReconnect=true&useSSL=false&useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
    String username = "root";
    String dbPassword = "panni0310";

    try (Connection con = DriverManager.getConnection(url, username, dbPassword)) {
        String sql = "INSERT INTO insurance (name, age, gender, mobile, address, insurancetype, cartype, modelnumber, expirydate) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement statement = con.prepareStatement(sql)) {
            statement.setString(1, applicantName);
            statement.setObject(2, age);
            statement.setString(3, gender);
            statement.setObject(4, mobile);
            statement.setString(5, address);
            statement.setString(6, insuranceType);
            statement.setString(7, carType);
            statement.setObject(8, modelNumber);
            statement.setString(9, expiryDate);

            int i = statement.executeUpdate();
            if (i > 0) {
                response.sendRedirect("insurancesuccess.jsp");
            } else {
                response.sendRedirect("insurancefailure.jsp");
            }
        }
    }
} catch (ClassNotFoundException | SQLException e) {
    e.printStackTrace();
    response.sendRedirect("insurancefailure.jsp");
}
%>
