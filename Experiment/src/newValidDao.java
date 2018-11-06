import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.jdbc.Statement;

public class newValidDao {

	static Connection con;
	static PreparedStatement st;
	static Statement stm;
	static ResultSet rs;
	static String url="jdbc:mysql://localhost:3306/experiment";
	static String r="root",p="simha123";
	static String q;
	static String e;
	static String u;

	static String pass;
	static String repass;


	
     public newValidDao(String email,String uname,String pwd,String rpwd)throws Exception 
     {
    	 Class.forName("com.mysql.jdbc.Driver");
		 con=DriverManager.getConnection(url,r,p);
     	 
    	 e=email;
    	 u=uname;
    	 pass=pwd;
    	 repass=rpwd;
    	 
     }
	
    public boolean checkEmail()throws Exception
     {
     
    	 q= "Select email from login where email=?";
    	 st= con.prepareStatement(q);
    	 st.setString(1,e);
    	 rs=st.executeQuery();
    	 while(rs.next())
    	 {
    		 return false;
    	 }
    	 return true;
     }
     
    
    public void addValues()throws Exception
    {
    	int a;
    	q="Insert into login values(?,?,?)";
    	st=con.prepareStatement(q);
    	st.setString(1,e);
    	st.setString(2,u);
    	st.setString(3,pass);
    	a=st.executeUpdate();
    	
    	
    	q="Insert into customer(email,usn,status) values(?,?,0)";
    	st=con.prepareStatement(q);
    	st.setString(1,e);
    	st.setString(2,u);
    
    	a=st.executeUpdate();
    	
    	
    }
     
	
	
	
	
}
