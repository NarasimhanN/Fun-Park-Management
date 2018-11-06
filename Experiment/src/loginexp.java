import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class loginexp
{
	Connection con;
	PreparedStatement st;
	ResultSet rs;
	String url="jdbc:mysql://localhost:3306/experiment";
	String r="root",p="simha123";
	String q="Select * from login";

	
	
	public boolean checkLogin(String u,String pw) throws Exception
	{
		String r1,r2;
		try{
			
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url,r,p);
		st=con.prepareStatement(q);
		
		rs=st.executeQuery();
		while(rs.next())
		{
		    r1=rs.getString(1);
		    r2=rs.getString(2);
		    if(u.equals(r1) && pw.equals(r2))
		    {
		    	return true;
		    }
		}
		}
		catch(Exception e)
		{
			System.out.println("ERROR");
		}
		
		st.close();
		con.close();
		return false;
	}
	
}