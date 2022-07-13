package appointment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("pid");
		
		
		 boolean check;
			
	     check = AppointmentDB.DeleteAppointment(id);
		
	     if(check==true) {
	    	 
	    	 RequestDispatcher dis = request.getRequestDispatcher("createAppointment.jsp");
	    	 dis.forward(request, response);
	     }else {
	    	 
	    	 List<Appointment> appDetails = AppointmentDB.getAppointmentDetails() ;
				request.setAttribute("appDetails",appDetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("MyAppointment.jsp");
				dis.forward(request, response);
	     }
			
		
	}

}
