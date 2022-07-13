package appointment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("pid");
		String pname = request.getParameter("pname");
		String address = request.getParameter("paddress");
		String age = request.getParameter("age");
		String dname = request.getParameter("dname");
		String spec = request.getParameter("spec");
		String medi = request.getParameter("medi");
		String date = request.getParameter("bdate");
		String time = request.getParameter("btime");
		
		
		  boolean check;
			
			check = AppointmentDB.UpdateAppointment(id, pname, address, age, medi, dname, spec, date, time);
			
			if(check == true) {
				
				//to pass the details of Appointment
				List<Appointment> appDetails = AppointmentDB.getAppointmentDetails();
				request.setAttribute("appDetails",appDetails);
				
				
				RequestDispatcher dis = request.getRequestDispatcher("MyAppointment.jsp");
				dis.forward(request, response);
			}
			else {
				RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
				dis.forward(request, response);
			}
		
		
	}

}
