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
<title>Update User Data</title>
<link rel="stylesheet" type="text/css" href="Update.css">
</head>
<body>
<div class="container">
    <form action="UpdateBackend.jsp" method="post">
        <h2>Update User Data</h2>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="Email" placeholder="Enter Your Email" required>
        </div>
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="Name" placeholder="Enter Your Name" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="Password" placeholder="Enter Your Password" required>
        </div>
        <button type="submit" name="Update">Update</button>
    </form>
</div>
</body>
</html>

 
