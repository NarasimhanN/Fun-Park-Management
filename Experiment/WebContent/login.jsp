<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>

<style> 
input[type=text] {
    width: 25%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid green;
    border-radius: 8px;
}

input[type=password] {
    width: 25%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid green;
    border-radius: 8px;
}

.button {
    background-color: #4CAF50;
    border: none;
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
    background-color: white; 
    color: black; 
    border: 2px solid #4CAF50;
}







h1 {
    text-align: center;
}

h2 {
    text-align: left;
}

h3 {
    text-align: right;
} 
</style>

<body background = "Rides\12.jpg">



<font color = "Green" size="8">
<h1><b>WELCOME TO FUN PARK RESERVATION</b>

</font>
<br>

<br>

<font color = "black" size= "5">

<form action = "login" method="post">
<p>Enter Email ID  :  <input type = "text"    name = "mail" ></p>
<p>Enter Username  :  <input type = "text"    name = "usn" ></p>
<p>Enter Password  :  <input type = "password" name = "passwd"></p>

<p><input type="submit" class = "button" value="LOGIN "></form>

<form action = "newSign.jsp" method = "post">
<input type="submit" class ="button" value=" NEW SIGN UP "></p>
</form>
</h1>
</b>
</font>




<br>
<font color = "white" size = 3>
<marquee style = "scrolldelay=500	">
CUSTOMER CARE -> DETAILS -> NAME : NARASIMHAN N | USN : 1GA15IS024 | PHONE : 9482840755 | mail : nnarasimha.nn@gmail.com | or contact | NAME : NIPUN AMAR  | USN : 1GA15IS028 | PHONE : 9443576655 | mail : nipunamar@gmail.com |  
</marquee></font>


</body>
</html>