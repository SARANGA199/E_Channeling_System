<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>

body {font-family: Arial, Helvetica, sans-serif;
      background-image: url("appoint.jpg");
     

}
* {box-sizing: border-box;}

.bg-img {


  min-height: 380px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

#appointment {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
  height:70%;
  margin-left:auto;
  margin-right:auto;
}

#appointment td, #appointment th {
  border: 1px solid #ddd;
  padding: 8px;
}

#appointment tr:nth-child(even){background-color: #f2f2f2;}

#appointment tr:hover {background-color: #ddd;}

#appointment th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}

.button1 {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 8px;
  cursor: pointer;
  margin:4px 2px
}

.button1:hover {
  background-color: #45a049;
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
<title>My appointment</title>
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

  <center><h2>Appointments</h2></center>
      
  <table id="appointment">
  <tr>
    <th>Patient ID</th>
    <th>Patient Name</th>
    <th>Patient Address</th>
    <th>Patient Age</th> 
    <th>Doctor's Name</th>
    <th>Specialist</th>
    <th>Medical Center</th>
    <th>Appointment Date</th>
    <th>Appointment Time</th>
     <th>Update</th>
     <th>Delete</th>
  </tr>
  
	<c:forEach var="ap" items="${appDetails}">
	
	<c:set var="id" value="${ap.id}"/>
	<c:set var="name" value="${ap.name}"/>
	<c:set var="address" value="${ap.address}"/>
	<c:set var="age" value="${ap.age}"/>
	<c:set var="docname" value="${ap.docname}"/>
	<c:set var="spec" value="${ap.spec}"/>
	<c:set var="mcenter" value="${ap.mcenter }"/>
	<c:set var="adate" value="${ap.adate}"/>
	<c:set var="atime" value="${ap.atime}"/>
	
	<tr>
     <td>${ap.id}</td>
     <td>${ap.name}</td>
     <td>${ap.address}</td>
     <td>${ap.age}</td>
     <td>${ap.docname}</td>
     <td>${ap.spec}</td>
     <td>${ap.mcenter}</td>
     <td>${ap.adate}</td>
     <td>${ap.atime}</td>
      
      <c:url value="updateAppointment.jsp" var="updateapp">
	       <c:param name="id" value="${id}"></c:param>
	       <c:param name="name" value="${name}"></c:param>
	       <c:param name="address" value="${address}"></c:param>
	       <c:param name="age" value="${age}"></c:param>
	       <c:param name="docname" value="${docname}"></c:param>
	       <c:param name="spec" value="${spec}"></c:param>
	       <c:param name="mcenter" value="${mcenter}}"></c:param>
	       <c:param name="adate" value="${adate}"></c:param>
	       <c:param name="atime" value="${atime}"></c:param>
	
	
	</c:url>
      
     
     <td><a href ="${updateapp}"><input type="button" class="button1" name="update" value ="Update Appointment"></a></td>
     
     <c:url value="DeleteAppointment.jsp" var="deleteapp">
	       <c:param name="id" value="${id}"></c:param>
	       <c:param name="name" value="${name}"></c:param>
	       <c:param name="address" value="${address}"></c:param>
	       <c:param name="age" value="${age}"></c:param>
	       <c:param name="docname" value="${docname}"></c:param>
	       <c:param name="spec" value="${spec}"></c:param>
	       <c:param name="mcenter" value="${mcenter}}"></c:param>
	       <c:param name="adate" value="${adate}"></c:param>
	       <c:param name="atime" value="${atime}"></c:param>
	
	
	</c:url>
     
     
     
     <td><a href ="${deleteapp}"><input type="button" class="button1" name="delete" value ="Delete Appointment"></a></td>
  </tr>
	
	
	</c:forEach>
	</table>
	
	

      
      
      
      
      
</body>
</html>