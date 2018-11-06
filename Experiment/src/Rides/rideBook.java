package Rides;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class rideBook
 */
@WebServlet("/rideBook")
public class rideBook extends HttpServlet {
	
	
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub	
		int a =1;
		String em = request.getParameter("em");
		String rn = request.getParameter("ride_name");
		String rt = request.getParameter("ride_time");
		String un = request.getParameter("uname");
		String email = request.getParameter("em");
		
		
try {
		rideBookDao D = new rideBookDao(email,rn,rt,un);
		System.out.println(D);
	
		
		if(D.checkStatus(a)==1)
		{
			
			request.setAttribute("usn", un);
			request.setAttribute("em", email);
			
			
		response.sendRedirect("cancelRide.jsp");	
		}
		
		
		
			if(D.seat_left())
			{
				
	
				response.sendRedirect("success.jsp");
			}
			else
			{
				response.sendRedirect("fail.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
