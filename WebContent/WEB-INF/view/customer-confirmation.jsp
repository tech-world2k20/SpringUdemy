<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>customer-confirmation</title>
</head>
<body>
${customer.firstName} ${customer.lastName} is confirmed.

<br><br>
Freepasses: ${customer.freePasses}

<br><br>
Pincode: ${customer.pincode}
<br><br>
<a href="/SpringUdemy/">Go to Home Page</a>

</body>
</html>