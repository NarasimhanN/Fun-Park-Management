<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>vidoes</title>
</head>
<body bgcolor = "AQUA">
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
    border: 2px solid aqua;
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
    color: aqua; 
    border: 2px solid aqua;
}




</style>

<%
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		//response.setHeader("Progma","no-cache")

		if(session.getAttribute("email")==null || session.getAttribute("username")==null || session.getAttribute("passw")==null)
		{response.sendRedirect("login.jsp");
		}
%>
<h1>
<br><b>ROLLAR COASTER </b><br><br>
<iframe width="560" height="315" src="https://www.youtube.com/embed/h_lcZcBcQ0o" frameborder="0" allowfullscreen></iframe>
<BR><BR><br>
<b>MAVRIC </b><br><br>
<iframe width="560" height="315" src="https://www.youtube.com/embed/mFUMni9lIOE" frameborder="0" allowfullscreen></iframe>

<br>
<BR><br>
<b>SKY WHEEL</b><br><br>
<iframe width="560" height="315" src="https://www.youtube.com/embed/ec6b6NHJMPw" frameborder="0" allowfullscreen></iframe>
</h1>



  	  	<h1>   	<BR><BR>
			   	<form action = "welcomePage.jsp">
			   	<input type = "submit" class= "button" value = "GO BACK">
			   	</form>  		
			   	</h1>  			  
			   	  			  	  
			   			



</body>
</html>