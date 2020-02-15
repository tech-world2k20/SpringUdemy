<%@page import="sun.reflect.ReflectionFactory.GetReflectionFactoryAction"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html dir="ltr" lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="ISO-8859-1">
<title>helloWorld-form</title>
</head>
<body>
<%System.out.println(request.getAttribute("javax.servlet.forward.request_uri"));%>
	<form action="processForm" method="get"> 
	<input type="text" name="studentName" placeholder="What's your name?">
		
		<input type="submit" value="submit">
		</form>
  

<br>
<br>


</body>
</html>