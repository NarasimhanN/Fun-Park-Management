package Rides;

import java.sql.*;

public class rideBookDao {

	static String url = "jdbc:mysql://localhost:3306/experiment";
	static String u = "root";
	static String p = "simha123";
	
	static Connection con;
	static PreparedStatement st;
	static Statement stm;
	static ResultSet rs;
	static String q ;
	static String rn;
	static String rt;
	static String un;
	static String em;
	
	
	public rideBookDao(String email,String rname,String rtime,String uname) throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url,u,p);
		rn = rname;
		rt = rtime;
		un = uname;
		em= email;
		
	}
	
	public int checkStatus(int a) throws Exception
	{
		int b=0;
		q="select status from customer where email=?";
	    st=con.prepareStatement(q);
		st.setString(1,em);
		rs = st.executeQuery();
		while(rs.next())
		{
			b=rs.getInt(1);
		}
		
		
		return b;
		
	}
	
	
	
	
	
	
	
	
	public static boolean seat_left() throws Exception
	{		
		
		int c=0;
		q = "Select Seats_left from ride where ride_name=? and time=?";
		
		st = con.prepareStatement(q);
		st.setString(1,rn);
		st.setString(2,rt);
		rs = st.executeQuery();
		
		while(rs.next())	
		 {c = rs.getInt(1);
		 System.out.println(c);
		 }
		if(c<1)
				return false;
			else
			{
			  reduceSeat();
			  customerTable();
				return true;
		 
			}
		
		
	}
	
	public static void reduceSeat() throws Exception
	{
		
		
		q = "Update Ride set Seats_Left = Seats_Left - 1 where ride_name=? and time=?";
		st = con.prepareStatement(q);
		st.setString(1,rn);
		st.setString(2, rt);
		int x = st.executeUpdate();
	
	}	
		
//		st.close();
//		con.close();
		
	
	//For Updating Customer TAble
	public static void customerTable()throws Exception 
	{
		int a;
		q="Update customer set ride_name=? where email = ?";
		st = con.prepareStatement(q);
		st.setString(1,rn);
		st.setString(2, em);
		a = st.executeUpdate();
		
		q="Update customer set time=? where email = ?";
		st = con.prepareStatement(q);
		st.setString(1,rt);
		st.setString(2, em);
		a = st.executeUpdate();
		

		q="Update customer set usn=? where email = ?";
		st = con.prepareStatement(q);
		st.setString(1,un);
		st.setString(2, em);
		a = st.executeUpdate();
		
	statusUpdate(un);
		
		
		
	}
	
	
	public static void statusUpdate(String un)throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url,u,p);
		
		q="update customer set status = 1 where email = ?";
		st=conn.prepareStatement(q);
		st.setString(1,em);
		int e = st.executeUpdate();
		
		
	}
	
	
	
	
	public static void increaseSeat(String cid) throws Exception
	{
		
		int o;
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url,u,p);
		String rideN=null;
		String rideT=null;
		q="select ride_name,time from customer where email=?";
		st = conn.prepareStatement(q);
		

		
		st.setString(1, cid);
		rs = st.executeQuery();
		
		
		while(rs.next())
		{
			 rideN =rs.getString(1);
			 rideT =rs.getString(2);
		}
		
		
		q="Update ride set seats_left = (seats_left + 1) where ride_name = ? and time = ?";
		st = conn.prepareStatement(q);
		st.setString(1,rideN);
		st.setString(2, rideT);
		int l = st.executeUpdate();
		
		
		q="Update customer set status = 0 where email=?";
		st = conn.prepareStatement(q);
		st.setString(1,cid);
	    o = st.executeUpdate();
		
	    String n = null;
	    
	    q="Update customer set ride_name = ? where email=?";
		st = conn.prepareStatement(q);
		st.setString(1, n);
		st.setString(2,cid);
	    o = st.executeUpdate();
		
	    q="Update customer set time = ? where email=?";
		st = conn.prepareStatement(q);
		st.setString(1, n);
		st.setString(2,cid);
	    o = st.executeUpdate();
	    
	    
		
		
		
		
		
		
	}
		
//		st.close();
//		con.close();
		
	
	
	
		
	
}
