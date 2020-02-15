<%@page
	import="sun.reflect.ReflectionFactory.GetReflectionFactoryAction"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer-form</title>
</head>
<style>
	.error{color: red}
</style>
<body>
	<%
		System.out.println(request.getAttribute("javax.servlet.forward.request_uri"));
	%>

	<form:form action="processForm" modelAttribute="customer">
	Fill Customer Form.(Mandatory fields(*))
	<br><br>
	First Name:	<form:input path="firstName" />
	<form:errors path="firstName" cssClass="error"/>
				
		<br>
		<br>
		
	Last Name:	<form:input path="lastName" />
				<form:errors path="lastName" cssClass="error"/>
		<br>
		<br>
	FreePasses:	<form:input path="freePasses" />
				<form:errors path="freePasses" cssClass="error"/>
		<br>
		<br>
	Pincode:	<form:input path="pincode" />
		<form:errors path="pincode" cssClass="error"/>
		<br>
		<br>
	
	<input type="submit" value="Submit">
	</form:form>
</body>
</html>