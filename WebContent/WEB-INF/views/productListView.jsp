<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>Servers List</title>
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

.menu {
	margin-left: -100px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	border: 3px dashed #ccc;
	color: white;
	font-family: calibri;
	background-color: #289ee2;
	margin: auto;
	padding: 20px;
	border: 1px solid #888;
	width: 100%;
	font-family: calibri;
}

/* The Close Button */
.close {
	color: #aaaaaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}
</style>
</head>
<body>
	<!-- The Modal -->
	<div id="myModal" class="modal">

		<!-- Modal content -->
		<div class="modal-content">
			<span class="close">&times;</span>
			<p>Server: ${rs.getServer("Server")}</p>
			<p>Type: ${rs.getString("Type")}</p>
			<p>Environment:</p>
			<p>App1:</p>
			<p>App2:</p>
			<p>App3:</p>
			<p>App4:</p>
			<p>App5:</p>
			<p>App6:</p>
			<p>App7:</p>
			<p>App8:</p>
			<p>Start Date:</p>
			<p>End Date:</p>
			<p>Allocation Status:</p>
			<p>Comments:</p>
			<p>Application Links:</p>
			<p>Installed Softwares And Versions:</p>
			<p>Support End Date:</p>
			<p>Space Available(GB):</p>
		</div>

	</div>
</head>
<body>


	<jsp:include page="_header.jsp"></jsp:include>

	<jsp:include page="_menu.jsp"></jsp:include>

	<h3>Servers Information</h3>

	<h4>Select A Server Name:</h4>

	<button id="myBtn">Database</button>
	<button id="myBtn1">JBOSS</button>
	<button id="myBtn2">Mule</button>
	<button id="myBtn3">BO</button>
	<button id="myBtn4">ETL</button>
	<button id="myBtn5">SharePoint Application</button>

	<script>
		$.get('myservlet', function(data) {
			alert(data);
		});
	</script>

	<script>
		// Get the modal
		var modal = document.getElementById('myModal');

		// Get the button that opens the modal
		var btn = document.getElementById("myBtn");
		var btn1 = document.getElementById("myBtn1");
		var btn2 = document.getElementById("myBtn2");
		var btn3 = document.getElementById("myBtn3");
		var btn4 = document.getElementById("myBtn4");
		var btn5 = document.getElementById("myBtn5");

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks the button, open the modal 
		btn.onclick = function() {
			modal.style.display = "block";
		}

		btn1.onclick = function() {
			modal.style.display = "block";
		}

		btn2.onclick = function() {
			modal.style.display = "block";
		}

		btn3.onclick = function() {
			modal.style.display = "block";
		}

		btn4.onclick = function() {
			modal.style.display = "block";
		}

		btn5.onclick = function() {
			modal.style.display = "block";
		}

		// When the user clicks on _$tag_ (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>

</body>
</html>