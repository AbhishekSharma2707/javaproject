<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="HomePage.jsp">
<%

String Name=request.getParameter("Name");
String Password=request.getParameter("Password");
String Email=request.getParameter("Email");
String DOB=request.getParameter("DOB");
String Gender=request.getParameter("Gender");
String Address=request.getParameter("Address");
String Phone=request.getParameter("Phone");
 
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/Batch1133";
String user="root";
String password="root";

Connection c=DriverManager.getConnection(url, user, password);
if(c!=null){
	PreparedStatement stmt=c.prepareStatement("insert into user values(?,?,?,?,?,?,?);");
	stmt.setString(1, Name);
	stmt.setString(2, Password);
	stmt.setString(3, Email);
	stmt.setString(4, DOB);
	stmt.setString(5, Gender);
	stmt.setString(6, Address);
	stmt.setString(7, Phone);
	stmt.executeUpdate();
	
   
%>


   <%
out.println("Database Connected!");
}
else{
	out.println("Not Connected!");
}
		%>
<input type="Submit" value="Home Page">
</form>
<!--<jsp:forward page="HomePage.jsp"></jsp:forward>-->
</body>
</html>