<%-- 
    Document   : offersPage
    Created on : Apr 11, 2015, 2:21:37 PM
    Author     : Desktop
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- HEADER -->
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="assets\img\favicon.ico">

    <title>Samdango</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="assets/css/nav_style.css" rel="stylesheet" media="screen">
    <link href="assets/css/footer_style.css" rel="stylesheet" media="screen">
    <link href="assets/css/bootstrap.css" rel="stylesheet" media="screen">
  </head>
<!-- /HEADER -->
  
<body role="document">
<jsp:include page="header.jsp" />

<!-- OFFERS MAIN BODY -->
<center><h1><p class="text-success" style="font-size:55px">OFFERS</p></h1><hr>
<div class="row">
    <c:forEach var="listVar" items="${offers}">     
        <div class="col-xs-6 col-lg-3">
            <img src="assets\img\offer1.jpg" width="275" height="275"><br></br>
            <center><p class="text-warning" style="font-size:25px">${listVar.name}</p></center>
            <center><p>${listVar.content}</p></center>
        </div>		
    </c:forEach>			
</div></center>
<!-- /OFFERS MAIN BODY -->

<jsp:include page="footer.jsp" />
<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
  </body>
</html>
