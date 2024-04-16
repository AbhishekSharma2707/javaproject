<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
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
<h1>Welcome</h1>
<%
String a1 = request.getParameter("a");
String b1 = request.getParameter("b"); %>
<% 
try {

	Class.forName("com.mysql.cj.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/batch1133";
	String user = "root";
	String pass = "root";

	Connection c = DriverManager.getConnection(url, user, pass);

	PreparedStatement stmt1 = c.prepareStatement("SELECT * FROM user WHERE email=? AND password=?;");
	stmt1.setString(1, a1);
	stmt1.setString(2, b1);
	//PrintWriter p = response.getWriter();

	ResultSet rs = stmt1.executeQuery();

	String storedPassword = rs.getString("password");
	String storedEmail = rs.getString("email");
	//System.out.println("############## " + rs.getRow());

	while (rs.next()) {
		// if (rs.next()) {

		if (storedEmail.equals(a1) && storedPassword.equals(b1)) {

		//	System.out.println("2");
		out.println("welcome" + rs.getString("name"));

			//RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			//rd.forward(request, response);
			
		} else {
			out.println("Incorrect Email And Password");
		}
	}
} 
	catch (Exception e) {
	e.printStackTrace();
}

%>
</body>
</html>