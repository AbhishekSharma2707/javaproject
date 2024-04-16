<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!--  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="DeleteBackend.jsp">
Enter Your Email:<input type="text" name="email">
<input type ="submit" value="Delete">
</form>
</body>
</html>
-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete User</title>
<link rel="stylesheet" type="text/css" href="Delete.css">
   
</head>
<body>
    <div class="container">
        <form action="DeleteBackend.jsp" class="form">
            <h2>Delete User</h2>
            <label for="email">Enter Your Email:</label>
            <input type="text" id="email" name="email" required>
            <input type="submit" value="Delete" class="btn">
        </form>
    </div>
</body>
</html>
