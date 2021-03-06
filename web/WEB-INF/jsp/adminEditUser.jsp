<%-- 
    Document   : adminPage
    Created on : May 2, 2015, 2:06:15 PM
    Author     : Sam W.
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
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
<jsp:include page="header.jsp"/>

 <!-- ADMIN NAV BAR -->
 <div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
             <div class="page-header">
                 <h1>${currentPerson.firstName}'s Account</h1>
             </div>
             <ul class="nav nav-tabs">
                 <li><a href="#overview" data-toggle="tab" aria-expanded="false">ADD</a></li>
                 <li class="active"><a href="#adduser" data-toggle="tab" aria-expanded="true">FIND USER</a></li>
                 <li><a href="#addmovie" data-toggle="tab" aria-expanded="false">FIND MOVIE</a></li>
             </ul>
            <div id="myTabContent" class="tab-content">
                <div class="tab-pane" id="overview">
                    <div class="container">                        
                        <hr>
                        <jsp:include page="adminAdd.jsp"/>
                        <hr>
                        
                    </div>
                </div>
                <div class="tab-pane fade active in" id="adduser">
                    <div class="fluid-container">
                     <p>Find User</p>
                        <form id="findUser" method="POST" action="finduser.htm">
                            <input type="email" class="form-control input-sm" name="email" placeholder="E-mail">
                            <button type="submit" class="btn btn-success btn-sm">Search</button>
                        </form>
                        <br>
                        <c:if test="${euconfirmation eq true}">
                                User successfully edited!
                        </c:if>
                        <c:if test="${delconfirm eq false}">Could not delete!</c:if>
                        <c:if test="${delconfirm eq true}">Successfully Deleted!</c:if>
                        <br>
                        <c:if test="${not empty nouser}">${nouser}</c:if>
                        <c:if test="${empty nouser}">
                        <form:form action="adminedituser.htm" modelAttribute="foundUser" method="post">
        
                            <div class="form-group">
                                <p class="text-warning" style="font-size:20px">First Name:</P>
                                <form:input path="firstName" placeholder="${foundUser.firstName}"/>
                            </div>
        
                            <div class="form-group">
                                <p class="text-warning" style="font-size:20px">Last Name:</P>
                                <form:input path="lastName" placeholder="${foundUser.lastName}"/>
                            </div>
        
                            <div class="form-group">
                                <p class="text-warning" style="font-size:20px">E-mail:</P>
                                <form:input path="email" placeholder="${foundUser.email}"/>
                            </div>
        
                            <div class="form-group">
                                <p class="text-warning" style="font-size:20px">Password:</P>
                                <form:password path="password" placeholder="Password"/>
                            </div>
                            
                            <div class="form-group">
                                <p class="text-warning" style="font-size:20px">Zipcode:</P>
                                <form:input path="zipCode" placeholder="${foundUser.zipCode}"/>
                            </div>
                            
                            <div class="form-group">
                                <p class="text-warning" style="font-size:20px">Role:</P>
                                <form:input path="role" placeholder="${foundUser.role}"/>
                            </div>
                            
                            <br><button type="submit" class="btn btn-success" >Edit User</button></br>
                        </form:form>
                        <a href="deluser.htm" class="btn btn-warning btn-sm">DELETE</a>
                        </c:if>
                    </div>
                </div>
                <div class="tab-pane fade" id="addmovie">
                    <div class="fluid-container">
                     <p>Find Movie</p>
                        <form id="findMovie" method="POST" action="findmovie.htm">
                            <input type="input" class="form-control input-sm" name="name" placeholder="Movie Name">
                            <button type="submit" class="btn btn-success btn-sm">Search</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
 </div>
<!--/ADMIN NAV BAR-->

<jsp:include page="footer.jsp" />
<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
  </body>
</html>
