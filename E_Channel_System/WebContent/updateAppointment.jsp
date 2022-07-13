<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Appointment</title>

<style>
body {font-family: Arial, Helvetica, sans-serif;
      background-image: url("medi.jpg");
     

}
* {box-sizing: border-box;}

.bg-img {


  min-height: 380px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}


input[type=text], select, textarea {
  width: 70%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=date], select, textarea {
  width: 70%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=time], select, textarea {
  width: 70%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  position: absolute;
  left: 0;
  margin: 20px;
  width: 45%;
   border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  border-style:inset;
 
 
}

*
{
  padding: 0;
  margin: 0;
   box-sizing:border-box;
}

 header{
	background-color:#000000;
	font-family:sans-serif;
}


 .menu-bar
 {
   text-align: left;
	background-color: #000000;
 }

 .menu-bar ul
 {
   display:inline-flex;
   list-style: none;
   color: #04AA6D;
 }

  .menu-bar ul li
  {
    width: 120px;
    margin: 15px;
    padding: 15px;
	border-radius: 30px;
  }
  .menu-bar ul li a
  {
    text-decoration: none;
    color: #fff;
  }

  .active, .menu-bar ul li:hover
  {
    background:  #04AA6D;
    border-radius: 3px;
	border-radius: 30px;
  }

.sub-menu-1
{
  display: none;
  border-radius: 15px;
}

  .menu-bar ul li:hover .sub-menu-1
  {
    display: block;
    position:absolute;
    background:  #04AA6D;
    margin-top: 15px;
    margin-left: -15px;
  }
  

  .menu-bar ul li:hover .sub-menu-1 ul
  {
    display:block;
    margin: 10px;
  }

.menu-bar ul li:hover .sub-menu-1 ul li
{
    width: 150px;
    padding: 10px;
    border-bottom: 1px dotted #fff;
    background: transparent;
    border-radius: 0;
    text-align: left;
}

.menu-bar ul li:hover .sub-menu-1 ul li:last-child
{
  border-bottom: none;
}

.menu-bar ul li:hover .sub-menu-1 ul li a:hover
{
  color: black;
}

</style>

<script>

 function myfunction(){
	 
	 confirm("Are you sure ?");
 }


</script>

</head>
<body>

    <div class="menu-bar">
        <ul>
             <li class="active"><a  href="#">Home</a></li>
             <li><a  href="#">Doctors</a></li>
			 <li><a  href="#">Appointments</a>
                 <div class="sub-menu-1">
                  <ul>
                       <li><a href="#">Add Appointments</a></li>
                       <li><a href="#">Edit Appointments</a></li>
                       <li><a href="#">Remove Appointments</a></li>
				  </ul>
				  </div>
			 </li>
             <li><a  href="#">Schedule</a>
				  <div class="sub-menu-1">
                  <ul>
                       <li><a href="#">Weekday</a></li>
                       <li><a href="#">Weekend</a></li>
				  </ul>
				  </div>
			 </li>
             <li><a  href="#">Help</a>
				 <div class="sub-menu-1">
                  <ul>
					   <li><a href="#">Guideline</a></li>
					   <li><a href="#">Q&A</a></li>
					   <li><a href="#">Feedback</a></li>
				  </ul>
			 </li>
                  </ul>
			      </div>
	  </div>

      <!-- End of the header -->
      
      <br><br><br>
      

   <%

    String id = request.getParameter("id");
    String name = request.getParameter("name");
	String address = request.getParameter("address");
	String age = request.getParameter("age");
	String docname = request.getParameter("docname");
	String spec = request.getParameter("spec");
	String mcenter = request.getParameter("mcenter");
	String adate = request.getParameter("adate");
	String atime = request.getParameter("atime");
    
   
   
   
   %>

    <div class="container">
   <form action="update" method= "post"  >
           
         <center><h2>Update an Appointment</h2></center>  
         
       <label for="pname">Patient ID</label><br>
       <input type="text" id="pid" name="pid" value="<%=id%>" readonly><br><br>
          
       <label for="pname">Patient Name</label><br>
       <input type="text" id="pname" name="pname" value="<%=name%>"><br><br>

       <label for="padd">Patient Address</label><br>
       <input type="text" id="padd" name="paddress" value="<%=address%>"><br><br>
       
       <label for="age">Age</label><br>
       <input type="text" id="age" name="age" value="<%=age%>"><br><br>
       
       <label for="dname">Doctor Name</label><br>
       <input type="text" id="dname" name="dname" value="<%=docname%>"><br><br>

      <label for="spec">Select Specialist</label><br>
      <select id="spec" name="spec" value="<%=spec%>" >
         <option value="Cardiologists">Cardiologists</option>
         <option value="Allergists">Allergists</option>
         <option value="Urologists">Urologists</option>
      </select><br><br>
      
      <label for="medi">Select Medical Center</label><br>
      <select id="medi" name="medi" value="<%=mcenter%>">
         <option value="Asiri">Asiri</option>
         <option value="Nawaloka">Nawaloka</option>
         <option value="Durdans">Durdans</option>
      </select><br><br>
       
       <label for="bdate">Booking Date</label><br>
       <input type="date" id="bdate" name="bdate" value="<%=adate%>"><br><br>
       
        <label for="btimee">Booking Time</label><br>
       <input type="time" id="btime" name="btime" value="<%=atime%>"  ><br><br>
       
   
    <input type="submit" value="Update appointment" onclick = "myfunction()">
  </form>
</div> 
    
    
</body>
</html>