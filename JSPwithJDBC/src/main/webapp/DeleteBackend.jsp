<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Delete User</title>
</head>
<body>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/Batch1133";
String user="root";
String password="root";

Connection c=null;
PreparedStatement selectStmt=null;
PreparedStatement deleteStmt=null;
ResultSet rs=null;

try {
    c = DriverManager.getConnection(url, user, password);

    String Email = request.getParameter("email");
    
    // Check if the email exists
    selectStmt = c.prepareStatement("SELECT email FROM user WHERE email=?");
    selectStmt.setString(1, Email);
    rs = selectStmt.executeQuery();

    if (rs.next()) {
        // Email exists, proceed with deletion
        deleteStmt = c.prepareStatement("DELETE FROM user WHERE email=?");
        deleteStmt.setString(1, Email);
        int rowsAffected = deleteStmt.executeUpdate();

        if (rowsAffected > 0) {
            out.println("<h1>Delete Successfully!</h1>");
        } else {
            out.println("<h1>User deletion failed!</h1>");
        }
    } else {
        out.println("<h1>User not found!</h1>");
    }
} catch (Exception e) {
    out.println("An error occurred: " + e.getMessage());

}
%>

<form action="HomePage.jsp">
    <input type="Submit" value="Home Page">
</form>

</body>
</html>
