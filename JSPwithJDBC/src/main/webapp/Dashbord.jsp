<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Table Page</title>
<link rel="stylesheet" type="text/css" href="Table.css">
</head>
<body>
<center>
 <div class="container">
<form action="AddBackend.jsp">
 <h1>User Records</h1>
<table class="user-table">
    <th>Name</th><th>Password</th><th>Email</th><th>DOB</th><th>Gender</th><th>Address</th><th>Phone</th>
    <%
    Class.forName("com.mysql.cj.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/Batch1133";
    String user="root";
    String password="root";

    Connection c=DriverManager.getConnection(url, user, password);
    PreparedStatement stmt1=c.prepareStatement("Select* from user;");
    ResultSet rs=stmt1.executeQuery();
    while(rs.next()){
    	%>
    	<tr>
    	<td><% out.println(rs.getString("name"));%></td>
    	<td><% out.println(rs.getString("password"));%></td>
    	<td><% out.println(rs.getString("email"));%></td>
    	<td><% out.println(rs.getString("DOB"));%></td>
    	<td><% out.println(rs.getString("gender"));%></td>
    	<td><% out.println(rs.getString("address"));%></td>
    	<td><% out.println(rs.getString("phone"));%></td>

   </tr>
   <%  }%>
   </center>
   </table>
   </form>
   </div>
</body>
</html>