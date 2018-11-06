<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Sign Up</title>
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
    background-color: green;
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
    background-color: black; 
    color: white; 
    border: none;
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
<body>
<br><BR>
<h1>
<script type="text/javascript">
	function check_pass() {
		//alert ("I am in function");
		var p1 = document.getElementById('t3');
		var p2 = document.getElementById('t4');
		alert(p1);
		alert(p2);
		if(p1 == p2){
			return true;
		}
		else {
			alert ("Passwords do not match");
			return false;
		}
	}
</script>
<form action = "newValid" name = "MyForm" method = "post">
<font color = "black">
NEW USER SIGN UP..!!!</font><BR><Br>
<font color = green>
Enter E Mail ID : <input type="text" name ="t1"><br>
Enter User Name : <input type="text" name ="t2"><br>
Enter Password  : <input type="password" name ="t3"><br>
ReEtr Password  : <input type="password" name ="t4"><br>
</font>
<br>
<input type = "submit" class = "button" value = "SUBMIT"  />

</form>
<BR>
			   	<form action = "login.jsp">
			   	<input type = "submit" class = "button" value = "GO BACK" />
			   	</form>  		
			   	</h1>  			  
			   	  			  	  
			   			   	  	  
			   	  			  
			   	  	
			   	  			  
			   	  

</body>
</html>