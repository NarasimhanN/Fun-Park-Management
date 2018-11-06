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
<title>Customers List</title>
</head>
<body bgcolor="white">

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
   
			   	  			  
<BR><BR>			   	  			  
			   	  			  
			   	  			  
			   	 <% 			  
			   	  		query = "select email,usn,ride_name,time from customer where status = 1";

       		try{
       			
       		con = DriverManager.getConnection(url,uname,pwd);
		 	stmt =con.createStatement();
		 	results = stmt.executeQuery(query);
     		}
      		 catch(Exception e)
       		{
    		   System.out.println("ERROR");
   		    }
			

       %>
       
          <h1><b>LIST OF CUSTOMERS : </b></h1>
          
        
       
          <TABLE align="center" cellpadding="15" border="1" style="background-color:#ffffcc;">
       <TR>
       <TD>EMAIL ID</TD>
              <TD>NAME</TD>
       <TD>RIDE NAME </TD>
       <TD>TIME</TD>
       </TR>
       <TR></TR>
        <TR></TR>
         <TR></TR>
	  
			   <% while(results.next()) { 
			   		//rname = results.getString(1);
				%>
			
			  <TR>
			  
			  <TD><%=results.getString(1) %></TD>
			  <TD><%=results.getString(2) %></TD>
			  <TD><%=results.getString(3) %></TD>
			  <TD><%=results.getString(4) %></TD>
			  </TR>  		
			   	  <%} %>	   	 
			   	  			  </TABLE>
			   	  		
			   	  		
			   	  			  
			   	  			  	  
			<h1>   	<BR><BR>
			   	<form action = "adminMenu.jsp">
			   	<input type = "submit" class = "button" value = "GO BACK">
			   	</form>  		
			   	</h1>  			  
			   	  			  	  
			   			   	  	  
			   	  			  
			   	  	<%}
else
{
	response.sendRedirect("login.jsp");
}

%>		  
			   	  			  
			   	  
			   
	 
</body>
</html>