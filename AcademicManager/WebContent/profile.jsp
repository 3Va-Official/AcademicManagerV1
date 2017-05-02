<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style.css">
<title>Teacher's Home</title>
</head>


<body>

<div id="pagewrap">

	<header>
	<div id="header-left">
		<h1>Hello, <c:out value="${person.getName()}"/> </h1>
	</div>
	<div id="header-right">	
	<h4>Logged in as <c:out value="${person.getUsername()}"/></h4>
			<button class="button_logout" type="button">Log Out</button>
	</div>
	</header>
		
	<aside id="left">
	<!-- Side Menu accordion -->
<nav id="menu_box">
  <ul class="menu">
     <li><a href="home_teach.jsp">Home</a></li>
    <li> <a href="coursesT.jsp">Courses</a>
      <ul>
        <li><a href="apply.jsp">Apply</a></li>
	  </ul>
    </li>
    <li> <a href="assignmentsT.jsp">Assignments</a>
      <ul>
        <li><a href="new_assignmentT.jsp">Create</a></li>
      </ul>
    </li>
    <li><a href="">Register Grades</a>
	<ul>
        <li><a href="studCourseGrT.jsp">Student Course-Grades</a></li>
		<li><a href="assignmentGrT.jsp">Assignment Grades</a></li>
    </ul>
	</li>
		<li><a href="studT.jsp">Students</a>
		<ul>
			<li><a href="studGrT.jsp">Grades</a></li>
		</ul>
		</li>	
	<li><a href="profile.jsp">My Profile</a>
	<ul>
			<li><a href="update.jsp">Update</a></li>
		</ul>
	</li>
  </ul> 
</nav>
	
	</aside>
	
	<section id="middle">
	<!--O καθηγητής βλέπει το προφίλ του-->
	<h3>My profile</h3>
		<table>
        <tr>
            <td>TeacherID: <c:out value="${person.getPersonID()}"/></td> 
		</tr>
		<tr>
            <td>First Name: <c:out value="${person.getName()}"/></td>
		</tr>
		<tr>
            <td>Last Name: <c:out value="${person.getSurname()}"/></td>
		</tr>
		<tr>
            <td>E-mail: <c:out value="${person.getEmail()}"/></td>
			
		</tr>
		<tr>
            <td>Phone Number: <c:out value="${person.getPhone()}"/></td>
			
		</tr>
		<tr>
            <td>Home Address: <c:out value="${person.getAddress()}"/></td>
			
		</tr>
		<tr>
            <td>Date of Birth: <fmt:formatDate value="${person.getDob()}" pattern="dd-MM-yyyy"/></td>
		</tr>
		<tr>
            <td>Username: <c:out value="${person.getUsername()}"/></td>
			
		</tr>
		
		<tr>
            <td>Tax Number: <c:out value="${person.getTaxNumber()}"/></td>
		</tr>
		<tr>
            <td>IBAN: <c:out value="${person.getIban()}"/></td>
			
		</tr>
		<tr>
            <td>Gender: <c:out value="${person.getSex()}"/></td>
		<tr>
			<td>CV: <sql:query  var="cvt" dataSource="jdbc/AcademicManagerDB">
					SELECT cv
					FROM teacher
					WHERE teacherID=${person.getPersonID()};
			</sql:query>
			<c:forEach var="cv" items="${cvt.rows}">
			<c:out value="${cv.cv}"/>
			</c:forEach>
			</td>
		
		</tr>
		<tr>
			<td></td>
			
		</tr>
		</table>	

	
	</section>




	
	<footer>
		<h4>Contact us</h4>
		<p>22 Massalias Str. Athens, Greece 106 80, Tel: +30 210 3680950</p>
	</footer>

</div>

</body>
</html>