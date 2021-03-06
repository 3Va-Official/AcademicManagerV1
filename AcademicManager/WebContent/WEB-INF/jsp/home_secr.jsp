<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="gr.haec.academic.model.Person"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style.css">
<title>AcademicManager</title>
</head>
<body>

	<div id="pagewrap">

		<header>
			<jsp:include page="_header.jsp"></jsp:include>
		</header>

		<aside id="left">
			<!-- Side Menu accordion -->
			<nav id="menu_box">
				<ul class="menu">
					<li><a href="javascript:ml('ViewProfile')">Home</a></li>
					<li><a id="linkdisabled" href="#">Courses</a>
						<ul>
							<li><a href="javascript:ml('')">Add Course</a></li>
							<li><a href="javascript:ml('')">Courses' Evaluation</a></li>
						</ul></li>
					<li><a id="linkdisabled" href="#">Teachers</a>
						<ul>
							<li><a href="javascript:ml('ApplicantTeachers')">View
									Applicants</a></li>
							<li><a href="javascript:ml('CourseTeacherApplication')">Course
									Applications</a></li>
							<li><a href="javascript:ml('CourseTeachers')">Course
									Teachers</a></li>
							<li><a href="javascript:ml('TeacherTeachActiveCourses')">Active
									Course Teachers</a></li>
							<li><a href="javascript:ml('')">Teachers' Evaluation</a></li>
							<li><a href="javascript:ml('')">Update Profile</a></li>
						</ul></li>
					<li><a id="linkdisabled" href="#">Students</a>
						<ul>
							<li><a href="javascript:ml('StudentsCoursesApplication')">Course
									Applications</a></li>
							<li><a href="javascript:ml('')">Payments</a></li>
							<li><a href="javascript:ml('')">Students' Evaluation</a></li>
						</ul></li>
				</ul>
			</nav>

		</aside>

		<section id="middle">
			<!--User profile-->
			<jsp:include page="viewprofile.jsp"></jsp:include>
		</section>

		<footer>
			<jsp:include page="_footer.jsp"></jsp:include>
		</footer>

	</div>

</body>
</html>