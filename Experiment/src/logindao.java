import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class logindao
{
	static Connection con;
	static PreparedStatement st;
	static ResultSet rs;
	static String url="jdbc:mysql://localhost:3306/experiment";
	static String r="root",p="simha123";
	static String q;
	static String e;
	static String u;
	static String pw;


	

	public logindao(String email,String uname, String pass)throws Exception {
		// TODO Auto-generated constructor stub
		
		
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url,r,p);
			e=email;
			u=uname;
			pw=pass;
		
			
		
	}



	public int checkLogin()throws Exception {
		// TODO Auto-generated method stub
		int c;
		q="Select * from login where email=? and usn=? and pass=?";
		try{
			
		
		st=con.prepareStatement(q);
		st.setString(1, e);
		st.setString(2,u);
		st.setString(3, pw);
		rs=st.executeQuery();
		while(rs.next())
		{
		 c = checkStatus();
		if(c==0)
			 {
		    
			return 1;
			    
			    }
			else
				{	return 2;
				}		
				
		}
		}
		catch(Exception e)
		{
			System.out.println("ER777777ROR"+e);
		}
		
//		st.close();
//		con.close();
		return 3;
	}
	
	public int checkStatus() throws Exception
	{
		int b=0;
		q="select status from customer where email=?";
	    st=con.prepareStatement(q);
		st.setString(1,e);
		rs = st.executeQuery();
		while(rs.next())
		{
			b=rs.getInt(1);
		}
		
		
		return b;
		
	}
	

}