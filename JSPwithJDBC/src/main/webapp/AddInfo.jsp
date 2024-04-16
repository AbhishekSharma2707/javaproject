<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Register</title>
<link rel="stylesheet" type="text/css" href="AddInfo.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style type="text/css">
.input-box .input-field i{
	position: absolute;
	left:15px;
	top: 50%;
	transform:traslateY(-50%);
	font-size: 20px;
	
}
 
input[type=submit]{
 width: 100%;
 height: 45px;
 background: #fff;
 border: none;
 outline: none;
 border-radius: 6px;
 cursor: pointer;
 color: #333;
 font-weight: 600;
}
lable{
	display: inline-block;
	font-size: 14.5px;
	margin: 10px 0 23px;
}
 lable input{
	margin-left: 5px;
}

</style>

</head>
<body>

<div class="wrapper">
<form action="AddBackend.jsp">
<h1>Registration</h1>
<div class="input-box">
<div class="input-field">
<input type="text" placeholder="Enter Your Name" name="Name" required><i class="fa-solid fa-user"></i>
</div>
<div class="input-field">
<input type="password" placeholder="Enter Your Password" name="Password" required><i class="fa-solid fa-lock"></i>
</div>
</div>
<div class="input-box">
<div class="input-field">
<input type="email" placeholder="Enter Your Email" name="Email" required><i class="fa-solid fa-envelope"></i>
</div>
<div class="input-field">
<i class="fa-solid fa-calendar-days"></i><input type="date" placeholder="Enter Your Date Of Birth" name="DOB" required>
</div>
</div>

<div class="input-box">
<div class="input-field">
<i class="fa-solid fa-phone"> </i><input type="number" placeholder="Enter Your Phone No" name="Phone" required>
</div>
<div class="input-field">
<i class="fa-solid fa-location-dot"></i> <input type="text" placeholder="Enter Your Address" name="Address" required></div>
</div>
<div class="input-box">
<div class="input-field">
<div class="xyz">
Gender:-<input type="radio" placeholder="Male Check" value="Male" name="Gender" required>M
<input type="radio" placeholder="Female Check " value="Female" name="Gender" >F
<input type="radio" placeholder="Others Check" value="Others" name="Gender" >O</div></div>
</div>


<div class="abc">
<label><input type="checkbox" required>I hereby declare that the above information provided is true and correct</label>
<input type="Submit" value="Register" >
</div>
</form>
</div>
</body>
</html>