<%-- 
    Document   : personalizingGiftcardPage
    Created on : May 12, 2015, 12:09:34 AM
    Author     : JaeWoong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

    <title>Yggdrasil</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="assets/css/nav_style.css" rel="stylesheet" media="screen">
    <link href="assets/css/footer_style.css" rel="stylesheet" media="screen">
    <link href="assets/css/bootstrap.css" rel="stylesheet" media="screen">
  </head>
<!-- /HEADER <!-- background-size: 1200px,800px;-->

<body role="document" >
<jsp:include page="header.jsp" />
    <div  style="margin-left:70px;" >
    <h1 style="font-size:40px; font-weight: bold;">PERSONALIZE YOUR Gift CARD</h1>
    <br>
    <table align="center"><form id="continue" method="GET" action="giftcardPurchasePage${purchaseAmount}.htm">
        <tr>
            <td><p style="font-size:20px; font-weight: bold;">&nbsp;&nbsp;2. PERSONALIZE YOUR GIFT</p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Want to mail a card instead? See our physical cards.</td>       
        <tr>
            <td><p style="font-size:20px; font-weight: bold;"><br><br>GIFT RECIPIENT</p><br>Email Address<br>
                <input type="email" class="form-control input-sm" name="email" placeholder="E-mail">
            </td>
        </tr>
        <tr>
            <td><p style="font-size:20px; font-weight: bold;"><br><br>ADD A PERSONAL MESSAGE</p><br>Title:<br>
                <input type="title" class="form-control input-sm" name="title" placeholder="Title"><br>Message:<br><br>Your Amount: ${purchaseAmount}$<br><br>
                <textarea name="message" cols="45" rows="6" id="message" maxlength="500" class="digital-message"></textarea>   
            </td>
        </tr>
        <tr>
            <td align="right">
                <button type="submit" class="btn btn-success btn-sm">Continue</button>
            </td>
        </tr></form>
    </table>
  <!--  </form>-->

    <br><br><br>
    
    </div>       
   

<br><hr>
	
<jsp:include page="footer.jsp" />
<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
</body>	

</html>
