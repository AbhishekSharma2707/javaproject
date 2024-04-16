<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User Data</title>
<style>
h1{
background-color: red;
}
</style>
</head>
<body>
<form action="HomePage.jsp">
<%
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/Batch1133";
String user="root";
String password="root";
String Name=request.getParameter("Name");
String Password=request.getParameter("Password");
String Email=request.getParameter("Email");
String DOB=request.getParameter("DOB");
String Gender=request.getParameter("Gender");
String Address=request.getParameter("Address");
String Phone=request.getParameter("Phone");

try {
    Connection c=DriverManager.getConnection(url, user, password);
    PreparedStatement stmt1 = c.prepareStatement("SELECT email FROM user WHERE email=?");
    stmt1.setString(1, Email);
    ResultSet rs = stmt1.executeQuery();

    if (rs.next()) {
        // Email exists, proceed with updating
        PreparedStatement stmt = c.prepareStatement("update user set name=?, password=? where email=?");
        stmt.setString(1, Name);
        stmt.setString(2, Password);
        stmt.setString(3, Email);
        int rowsAffected = stmt.executeUpdate();

        if (rowsAffected > 0) {
        	%>
         <%  out.println("<h1>Data Successfully Updated!</h1>");%> 
           <img alt="" src="img/excited.gif">
            <% 
        } else {
            out.println("<h1>User update failed!</h1>");
        }
    } else {
        out.println("<h1>User not found!</h1>");
    }
} catch (Exception e) {
    out.println("An error occurred: " + e.getMessage());
}
%>
</form>

<form action="HomePage.jsp">
<input type="Submit" value="Home Page">
</form>
</body>
</html>
