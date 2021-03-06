<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<!--Τα μαθήματα του καθηγητή εμφανίζονται σε πίνακα-->
	<h3>My courses</h3>
	<table>
		<tr>
			<th>CourseID</th>
			<th>Course</th>
			<th>Start Date</th>
			<th>End Date</th>
			<th>Timetable</th>
		</tr>
		<sql:query var="courseT" dataSource="jdbc/AcademicManagerDB">
			SELECT DISTINCT c.courseID, c.title, c.startDate, c.endDate, c.timetable
			FROM course c
			JOIN courseteacher ct
			WHERE ct.teacherID=${person.getPersonID()};
		</sql:query>
		<c:forEach var="cr" items="${courseT.rows}" >
		<tr>
			<td><c:out value="${cr.courseID}"/></td>
			<td><c:out value="${cr.title}" /></td>
			<td><c:out value="${cr.startDate}" /></td>
			<td><c:out value="${cr.endDate}" /></td>
			<td><c:out value="${cr.timetable}" /></td>
			
		</tr>
		</c:forEach>
	</table>

	
	</section>



	
	<footer>
		<h4>Contact us</h4>
		<p>22 Massalias Str. Athens, Greece 106 80, Tel: +30 210 3680950</p>
	</footer>

</div>

</body>
</html>