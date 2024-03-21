<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Status</title>
    <style>
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            text-align: center;
        }
        .container {
            width: 40%;
            margin: 50px auto;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        h2 {
            color: #333;
        }
        p {
            margin-bottom: 20px;
        }
        a {
            color: #007bff;
            text-decoration: none;
            margin-right: 10px;
        }
        button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        /* Search Bar Styles */
        form {
            margin-top: 20px;
        }
        input[type="text"] {
            width: 200px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-right: 10px;
        }
        button[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            padding: 8px 16px;
        }
        button[type="submit"]:hover {
            background-color: #45a049;
        }
        /* Search Results Styles */
        #searchResults {
            margin-top: 20px;
            text-align: left;
        }
        #searchResults ul {
            list-style-type: none;
            padding: 0;
        }
        #searchResults ul li {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Login Status</h2>
        <% if ((session.getAttribute("email") == null) || (session.getAttribute("email") == "")) { %>
        <p>You are not logged in</p>
        <a href="index.jsp">Please Login</a>
        <% } else { %>
        <p>Welcome <%=session.getAttribute("email")%></p>
        <a href='logout.jsp'>Log out</a>
        <button onclick="window.location.href='insuranceform.jsp'">Insurance Form</button>
        <% } %>
        
        <!-- Search Bar -->
        <h3>Search</h3>
        <form action="search.jsp" method="GET">
            <input type="text" name="name" placeholder="Search by name">
            <button type="submit">Search</button>
        </form>
        
        <!-- Search Results -->
        <div id="searchResults">
            <%-- Search results will be displayed here --%>
        </div>
    </div>
</body>
</html>
