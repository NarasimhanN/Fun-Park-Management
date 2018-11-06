

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class newValid
 */
@WebServlet("/newValid")
public class newValid extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	String e = request.getParameter("t1");
	String u = request.getParameter("t2");
	String p = request.getParameter("t3");
	String rp= request.getParameter("t4");
	
	try {
		
	
	newValidDao d =new newValidDao(e,u,p,rp);
//	if(daa.checkEmail())
	if(d.checkEmail())
	{
	
		if(p.equals(rp))
		{
			d.addValues();
			
			response.sendRedirect("newSuccess.jsp");


		}
		else
		{
			response.sendRedirect("newPassFail.jsp");

		}
		
		
		
		
	}
	else
	{
		response.sendRedirect("newEmailFail.jsp");
	}
	
	}
	catch(Exception ex)
	{
		System.out.println("Error In Inserting New VAlues : "+ex);
	}
	
	}

}
