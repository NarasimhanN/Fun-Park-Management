<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cancel Ride</title>
</head>
<body background = "Rides\10.jpg">
<style>
h1 {
    text-align: center;
}

h2 {
    text-align: left;
}

h3 {
    text-align: right;
} 

.button {
    background-color: black;
    border: 2px solid white;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius : 8px
}

.button:hover {
    background-color: white ; 
    color: black; 
    border: 2px solid black;
}
</style>

<h1><b>
<% String s = (String)session.getAttribute("username");
String e = (String)session.getAttribute("email");

%><BR>
<BR><BR><BR><BR><BR>
SORRY  <%=s %>...........U ALREADY HAVE A SLOT RESERVED
 
<BR>
DO U WANT TO CANCEL ???<br>
<form action = "cancel">
<input type="submit" class = "button" value="YES">

	   <input type = "hidden" name="uname" value="<%=s%>">
	   <input type = "hidden" name="em" value="<%=e%>">
</form>		
</b>

<form action = "login.jsp">
<input type = "submit" class = "button" value = "NO ">


</form>
</h1>
</body>
</html>