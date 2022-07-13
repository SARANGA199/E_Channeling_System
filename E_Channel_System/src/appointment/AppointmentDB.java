package appointment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AppointmentDB {
	
	private static boolean status;
	private static Connection conn = null;
	private static Statement stat = null;
	private static ResultSet  rs = null;
	
	
	//Insert an appointment to DB
	public static boolean insertAppointment(String pname, String paddress, String age,String medi, String dname, String spec,String bdate,String btime) {
		
		boolean status = true;
		
		
		
		try {
			conn = ConnectDB.getConnection();
			stat = conn.createStatement();
			String sql = "INSERT INTO appointment VALUES (0,'"+pname+"', '"+paddress+"', '"+age+"',  '"+medi+"','"+dname+"', '"+spec+"', '"+bdate+"','"+btime+"')";
			int rs = stat.executeUpdate(sql);
			
			if(rs >0) {
				status = true;
			}
			else {
				status = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return status;
	}
	
	
	
	//Display Appointment
	 
	public static List<Appointment> getAppointmentDetails(){
		
		ArrayList<Appointment>  app = new ArrayList<>();
		
		
		
		try {
			
		     conn = ConnectDB.getConnection();
		     stat = conn.createStatement();
		     String sql = "select * from appointment  ";
		     rs = stat.executeQuery(sql);
		     
		     while(rs.next()) {
		    	 
		    	 int aid = rs.getInt(1);
		    	 String name = rs.getString(2);
		    	 String paddress = rs.getString(3);
		    	 String age = rs.getString(4);
		    	 String mcent = rs.getString(5);
		    	 String dname = rs.getString(6);
		    	 String speci = rs.getString(7);
		    	 String date = rs.getString(8);
		    	 String time = rs.getString(9);
		    	 
		    	
		    	 Appointment ap = new Appointment(aid,name,paddress,age,mcent,dname,speci,date,time);
		    	 
		    	 app.add(ap);
		    	 
		    	 
		     }
		
		
		}catch(Exception e) {
		
	            e.printStackTrace();
	
		
		}
		
	return app;	
		
	}
	
	//Update Appointment
    public static boolean UpdateAppointment(String id,String pname, String paddress, String age,String medi, String dname, String spec,String bdate,String btime) {
    	   try {
    		    
    		   conn = ConnectDB.getConnection();
    		   stat = conn.createStatement();
    		   String sql = "update appointment set pname='"+pname+"', paddress='"+paddress+"' ,age ='"+age+"',medicenter = '"+medi+"',docname='"+dname+"',specialist='"+spec+"',appdate='"+bdate+"',apptime='"+btime+"'"+"where AID ='"+id+"'";
    		   
    		   int rs = stat.executeUpdate(sql);
    		   
    		   if(rs >0) {
   				   status = true;
   			    }
   			    else {
   				   status = false;
   			    }
    		   
    	   }catch(Exception e) {
    		   
    		   e.printStackTrace();
    	   }
    	
    	
    	return status;
    }
    
    //Delete Appointment
    
    public static boolean DeleteAppointment(String id) {
    	

   	 int trasid = Integer.parseInt(id);
   	 
   	try {
		
	     conn = ConnectDB.getConnection();
	     stat = conn.createStatement();
	     String sql = "delete from appointment where AID = '"+trasid+"'  ";
	    int rs = stat.executeUpdate(sql);
	     
	    
	    if(rs >0) {
			   status = true;
		    }
		    else {
			   status = false;
		    }
	    	 
	
	}catch(Exception e) {
	
           e.printStackTrace();

	
	}
    	
    	return status;
    }

}
