<%@page
	import="sun.reflect.ReflectionFactory.GetReflectionFactoryAction"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>student-form</title>
</head>
<body>
	<%
		System.out.println(request.getAttribute("javax.servlet.forward.request_uri"));
	%>

	<form:form action="processForm" modelAttribute="student">
		
	First Name:	<form:input path="firstName" />
		<br>
		<br>
		
	Last Name:	<form:input path="lastName" />
		<br>
		<br>
		
	Country:
	<form:select path="country">
			<form:options items="${student.countryOptions}"/>
		</form:select>
		<br>
		<br>
		
	Favrouite Language: 
	<form:radiobutton path="favoriteLanguage" value="Java" />Java
	<form:radiobutton path="favoriteLanguage" value="C++"/>C++
	<form:radiobutton path="favoriteLanguage" value="Python"/>Python
	<br><br>
	
	Operating System:
	<form:checkbox path="operatingSystems" value="Mac"/>Mac
	<form:checkbox path="operatingSystems" value="Windows"/>Windows
	<form:checkbox path="operatingSystems" value="Linux"/>Linux
	
	<input type="submit" value="Submit">
	</form:form>
</body>
</html>