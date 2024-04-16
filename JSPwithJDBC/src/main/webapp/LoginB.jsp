<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

</head>
<body>
<form action="HomePage.jsp">

<%
String a1 = request.getParameter("a");
String b1 = request.getParameter("b");

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    String url = "jdbc:mysql://localhost:3306/batch1133";
    String user = "root";
    String pass = "root";

    Connection c = DriverManager.getConnection(url, user, pass);

   PreparedStatement stmt1 = c.prepareStatement("SELECT * FROM user WHERE email=?;");
    stmt1.setString(1, a1);

    ResultSet rs = stmt1.executeQuery();

    if (rs.next()) {
        String storedPassword = rs.getString("password");
        if (storedPassword.equals(b1))  {
        	 %>
        	   <h1>Login Sucessfully!</h1><br>
        	   <img alt="" src="img/excited.gif">
        	   <style>
body{
background:aqua;

display: inline;
text-align: center;

}
p{
color: red;

margin: 0;

}
h1{
font-size: larger;

margin: 0;
}
input{
background-color: yellow;
}
</style>
        	   
          <%  out.println("<h1><p>Welcome</p></h1><br> " + rs.getString("name"));%> 
           
          
            <% 
        } else {
            out.println("Incorrect Password");
            %>
           <!--   <jsp:include page="Login.jsp"></jsp:include>-->
           <!-- <jsp:forward page="Login.jsp"></jsp:forward>-->
           <% 
        }
    } else {
        out.println("User not found");
        
       
    }

    // Close resources
    rs.close();
    stmt1.close();
    c.close();
} catch (Exception e) {
    out.println("An error occurred: " + e.getMessage());
    e.printStackTrace();
}
%>
<br><br>
<input type="submit" value="Go To Home Page">
</form>
</body>
</html>
