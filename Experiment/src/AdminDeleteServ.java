

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Rides.rideBookDao;

/**
 * Servlet implementation class AdminDeleteServ
 */
@WebServlet("/AdminDeleteServ")
public class AdminDeleteServ extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String s = request.getParameter("email");
		
		System.out.print(s);
		try {
			
			rideBookDao.increaseSeat(s);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		
		
		System.out.println("SUCCESSFULY CANCELLED");
		response.sendRedirect("adminMenu.jsp");
		
		
		
		
		
	}

}
