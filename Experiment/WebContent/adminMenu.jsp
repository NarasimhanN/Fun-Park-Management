<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Menu</title>
</head>
<body background = "Rides/c.png">

<%
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		//response.setHeader("Progma","no-cache")

		if(session.getAttribute("email")==null || session.getAttribute("username")==null || session.getAttribute("passw")==null)
		{response.sendRedirect("login.jsp");
		}
%>

<% String s1 = (String)session.getAttribute("email"); %>
<%  if(s1.equals("admin@97"))
{
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
    background-color: white;
    border: 2px solid black;
    color: black;
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
    background-color: black; 
    color: white; 
    border: 2px solid white;
}










</style>


<h1><br>
WELCOME ADMIN </b>

<br><BR>
<br>
<form action = "adminTable.jsp" >
<input type = "Submit" class = "button" value = "VIEW LIST OF RIDES ">
</form>

<br>
<form action = "adminDelete.jsp" >
<input type = "Submit" class = "button" value = "DELETE CUSTOMER ENTRIES ">
</form>

<br>
<form action = "welcomePage.jsp" method = "post">
<input type = "Submit" class = "button"  value = "GO TO MENU ">
</form>


<br>
<form action = "adminCustStorProc.jsp" >
<input type = "Submit" class = "button" value = "BOOKED CUSTOMERS ">
</form>

</h1>

<%
}
else
{
	response.sendRedirect("login.jsp");
}
%>


</body>
</html>