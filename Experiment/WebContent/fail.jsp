<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fail</title>
</head>
<body background ="Rides/sad.jpg">
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
<h1>
<%String s=(String)session.getAttribute("username"); %>
<BR><BR><bR>
<font color = "WHITE" size=8><b>
SORRRY <%=s%>........BOOKING FAILED........TRY AGAIN LATER!!!
<Br><BR></b>
</h1>
<h1><form action = "welcomePage.jsp">
<p><input type = "submit" class = "button" value = "GO TO MENU"></p>
</form>

<form action = "logout" method = "post">
<p><input type = "submit" class = "button" value = "LOGOUT"></p>
</form>

</font>
</h1>

</body>
</html>