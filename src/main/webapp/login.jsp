<%@ page import="java.sql.*"%>
<%
    String email = request.getParameter("Email");    
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp","root", "panni0310");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from details where email='" +email + "' and password='" +password + "'");
    if (rs.next()) {
        session.setAttribute("email", email);
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>
