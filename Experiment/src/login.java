

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/login")
public class login extends HttpServlet {
	
  
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("mail");
		String uname = request.getParameter("usn");
		String pass = request.getParameter("passwd");
		try {
			
			logindao d = new logindao(email,uname, pass);
		
			int a =d.checkLogin();
			System.out.println(a);
			
			
		if(a==1)
			{
		
			HttpSession session=request.getSession();
			session.setAttribute("email",email);
			session.setAttribute("username",uname);
			session.setAttribute("passw", pass);
			
			if(email.equals("admin@97"))
			{
				response.sendRedirect("adminMenu.jsp");

			}
			else {
			
			response.sendRedirect("welcomePage.jsp");
			}
			}
			else if(a==2)
				{
				
				
//				  request.setAttribute("usn", uname); // add to request
//				    request.getSession().setAttribute("usn",uname); // add to session
//				    this.getServletConfig().getServletContext().setAttribute("usn", uname); // add to application context
//				    request.getRequestDispatcher("cancelRide.jsp").forward(request,response);
//			
			

				HttpSession session=request.getSession();
				session.setAttribute("email",email);
				session.setAttribute("username",uname);
				session.setAttribute("passw", pass);
				
				
			request.setAttribute("usn", uname);
			request.setAttribute("em", email);
			if(email.equals("admin@97"))
			{
				response.sendRedirect("adminMenu.jsp");

			}

			request.getRequestDispatcher("cancelRide.jsp").forward(request, response);
				
				
			//	response.sendRedirect("cancelRide.jsp");
			//	response.sendRedirect("fail.jsp");

				
				}
			else
			{  
				response.sendRedirect("login.jsp");
			}
		}
		 catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
}
}