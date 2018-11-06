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
<title>Book Ride</title>
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
    background-color: red;
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


<body background = "Rides\13m.png">


			<%
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		//response.setHeader("Progma","no-cache")

		if(session.getAttribute("email")==null ||session.getAttribute("username")==null || session.getAttribute("passw")==null)
		{response.sendRedirect("login.jsp");
		}
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
       
    
       
       
       
       
       <%
       query = "select Distinct ride_name from Ride";

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
              <form action = "rideBook" method="GET">
       
	 <h1>  
	 <br>
	 SELECT YOUR RIDE NAME :
	   <select name="ride_name">
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
	   
	   
	   
	   		   	  
	<br><br>
	
	 	SELECT YOUR RIDE TIME : 
	 	<select	name = ride_time>
	 	<option value = "NULL">SELECT</option>
	 	<% 
	 		//query="Select time from ride where ride_name=\""+rname+"\"";
	 	try{	
	 		query="select distinct time from ride";
	 		stmt = con.createStatement();
			results = stmt.executeQuery(query);	 	
	 		
			while(results.next())
				{rtime=results.getString(1);
	 	%>
	 	 <option value = "<%=rtime%>"><%=rtime %></option>
	 	
	 	 <%	}
			
	 	}
	 	catch(Exception e)
	 	{
	 		System.out.println("EEERRROOOEEEE:"+e);
	 	}
			
			%>	
	 	</select>  
	   <br><bR><br>
	   <input type="submit" class="button" value="BOOK"/>
          
        <%
        String em = (String)session.getAttribute("email");%>
        <input type = "hidden" name = "em" value="<%=em%>">
        
       <% String ss=(String)session.getAttribute("username");%>
	   <input type = "hidden" name="uname" value="<%=ss%>">




	</form>
	</h1>


  	  	<h1>   	<BR>
			   	<form action = "welcomePage.jsp">
			   	<input type = "submit" class="button" value = "GO BACK">
			   	</form>  		
			   	</h1>  			  
			   	  			  	  
			   			





	   	  <%
			   	  stmt.close();
			   	  results.close();
			   	  con.close();%> 









</body>
</html>