<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="LoginS.css">
</head>
<body>
    <div class="container">
        <h1>Login Page</h1>
        <form action="LoginB.jsp">
            <label for="email">Email:</label><br>
            <input type="text" placeholder="Enter Your Email" name="a"><br><br>
            <label for="password">Password:</label><br>
            <input type="password" placeholder="Enter Your Password" name="b"><br><br>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>

    
