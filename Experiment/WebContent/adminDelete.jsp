<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Customer</title>
</head>
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


.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}

</style>


<body background = "">

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

	
	   <%! 
		    public static final String driver = "com.mysql.jdbc.Driver";
		    public static final String url = "jdbc:mysql://localhost:3306/experiment";
		    public static final String uname = "root";
		    public static final String pwd = "simha123";
		    Connection con = null;
		    Statement stmt;
		    ResultSet results;
		    
			String query = null;
		    String rname=null,rtime=null;
		    
		    	
       %>
       
    
       
       <br>
       
       
       <%
       query = "select email from customer where status = 1";

       		try{

       		con = DriverManager.getConnection(url,uname,pwd);
		 	stmt =con.createStatement();
		 	results = stmt.executeQuery(query);
     		}
      		 catch(Exception e)
       		{
    		   System.out.println("ERRORRRRRRRRRRRRRR"+e);
   		    }
			

       %>
              <form action = "AdminDeleteServ" method="post">
       <br>
	 <h1>  Select Email ID
	   <select class = "dropdown" name="email">
	   <option value="NULL">SELECT </option>
			   <% 
			   try{
				   while(results.next()) { 
			   		rname = results.getString(1);
				%>
			      <option value="<%=rname%>"><%=rname%> </option>
			   		
			   	  <%}
			   }
			   catch(Exception e)
			   {
				   System.out.println("ErrOOOOrr:"+e);
			   }
			   
			   
			   %>	   	  
	   </select>
	   
	   
	   		   	  
	
	   <br><BR><BR>
	   <input type="submit" class = "button" value="DELETE"/>
          
  


	</form>
	</h1>


  	<h1>   	<BR>
			   	<form action = "adminMenu.jsp">
			   	<input type = "submit" class = "button" value = "GO BACK">
			   	</form>  		
			   	</h1>  			  
			   	  			  	  
			   			   	  	  






	   	  <%
			   	  stmt.close();
			   	  results.close();
			   	  con.close();%> 


<%
}
else
{	response.sendRedirect("login.jsp");
}

%>







</body>
</html>