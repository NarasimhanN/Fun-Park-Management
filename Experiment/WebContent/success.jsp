<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success</title>
</head>
<br><br><Br>
<font color = "BLUE" size = 7>
<body background = "Rides/smile1.jpg">

<%
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		//response.setHeader("Progma","no-cache")

		if(session.getAttribute("email")==null || session.getAttribute("username")==null || session.getAttribute("passw")==null)
		{response.sendRedirect("login.jsp");
		}
%>


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
    background-color: blue;
    border: 2px solid blue;
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

<h1>	SUCCESSFULLY BOOKED....!!!
</font>
<BR><br><Br>
<font size =4>
<form action = "login.jsp">
<input type = "submit" class= "button" value = "Click to LOGOUT">
</form>
</font>

	<%
	session.removeAttribute("username");
	session.invalidate();
	 %>
	</h1>
</body>
</html>