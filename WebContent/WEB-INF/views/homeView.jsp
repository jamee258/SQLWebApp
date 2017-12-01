<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<style>
html {
	background-color: #289ee2;
	font-size: 20px;
}

h1 {
	font-size: 28px;
}

h2, h3, h4 {
	font-size: 22px;
}
</style>
</head>
<body>

	<jsp:include page="_header.jsp"></jsp:include>
	<jsp:include page="_menu.jsp"></jsp:include>

	<h3>Home Page</h3>

	Web Application Using jsp, servlet &amp; Jdbc.
	<br>
	<br>
	<b>It includes the following functions:</b>
	<ul>
		<li>Login</li>
		<li>Storing user information in cookies</li>
		<li>Product List</li>
		<li>Create Product</li>
		<li>Edit Product</li>
		<li>Delete Product</li>
	</ul>

</body>
</html>