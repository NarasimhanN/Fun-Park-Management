<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Rides</title>
</head>
<body background = "Rides\11.jpg">

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
    border: 2px solid black;
    color: aqua;
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
    border: 2px solid white;
}

</style>
<%
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		//response.setHeader("Progma","no-cache")

		if(session.getAttribute("email")==null||session.getAttribute("username")==null || session.getAttribute("passw")==null)
		{response.sendRedirect("login.jsp");
		}
%>
<font color = "AQUA" color="7">
<br><h1><b>WELCOME ${username}
<font color = black><br>----------------------------------<br></b></h1></font>
</font>

<h1>

<font color = "WHITE" size = "4">
<form  action = "ride.jsp">

<p><b>BOOK A RIDE..?</b></p>
<p><input type = "submit" class = "button" value = " Click Here To Book  "></p>

</form>
</font>


<font color = "WHITE" size = "4">
<form  action = "rideDisplay.jsp">

<p><b>LIST OF RIDES..?</b></p>
<p><input type = "submit" class = "button" value = " Click Here to View  "></p>

</form>
</font>


<font color = "WHITE" size = "4">
<form action = "video.jsp">

<p><b>WANT TO SEE HOW IT WORKS..?</b></p>
<p><input type = "submit" class = "button" value = " Click Here to Watch Video  "></p>

</form>
</font>


<font color = "WHITE" size = "4">
<form  action = "logout"  method="post">

<p><b>WANT TO GET OUT..?</b></p>
<p><input type = "submit" class = "button" value = " Bye Bye "></p>

</form>
</font>

</h1>

</body>
</html>