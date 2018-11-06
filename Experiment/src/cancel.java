

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Rides.rideBookDao;

/**
 * Servlet implementation class cancel
 */
@WebServlet("/cancel")
public class cancel extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String s=request.getParameter("em");
	System.out.print(s);
	try {
		
		rideBookDao.increaseSeat(s);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	

	
	
	System.out.println("SUCCESSFULY CANCELLED");
	response.sendRedirect("login.jsp");
	
	
	
	
	}

}
