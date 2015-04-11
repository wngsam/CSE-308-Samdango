<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
<!-- LOGIN NAVBAR -->
    <nav class="navbar navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.htm">Samdango</a>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="index.htm">Giftcards</a></li>
                <li><a href="offersPage.htm">Offers</a></li>
                <li><a href="index.htm">Visa Signature</a></li>
                <c:choose>
                    <c:when test="${ not empty currentPerson}">
                        <li><a href="userpage.htm">Hi ${currentPerson.firstName}</a></li>
                        <li><a href="logout.htm">Logout</a></li>
                    </c:when>
                    <c:otherwise>
                        <c:if test="${not empty cannotLogin}">
                            <li><a href="index.htm" style="color:#003366"><b>${cannotLogin}</b></a></li>
                        </c:if>
                        <li><form class="navbar-form navbar-right" id="login" method="POST" action="login.htm">
                            <input type="email" class="form-control input-sm" name="email" placeholder="E-mail">
                            <input type="password" class="form-control input-sm" name="password"placeholder="Password">
                            <button type="submit" class="btn btn-success btn-sm">Login</button>
                            <a href="registrationPage.htm" class="btn btn-warning btn-sm">Register</a>
                        </form></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </nav>
<!--/LOGIN NAVBAR -->
<!--MOVIE SLIDE -->
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	<!-- Indicators -->
	<ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
	</ol>
	<!-- Wrapper for slides -->
	<div class="carousel-inner">
            <div class="item active">
                <img src="assets\img\slide03.jpg" alt="...">
                <div class="carousel-caption"></div>
            </div>
            <div class="item">
                <img src="assets\img\slide01.jpg" alt="...">
                <div class="carousel-caption"></div>
            </div>
            <div class="item">
                <img src="assets\img\slide02.jpg" alt="...">
                <div class="carousel-caption"></div>
            </div>    
	</div>
        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div>
<!--/MOVIE SLIDE -->
<!--CONTENT NAV BAR-->
    <nav class="navbar navbar-default">
	<div class="container-fluid">
            <ul class="nav navbar-nav">
                
                <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">MOVIE NEWS<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu"><div class="container-fluid">
                        
                    </div></ul>
                </li>
        
                <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">MOVIES<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu"><div class="container-fluid">
                        <li><table width="1000px" class="table-nonfluid">
                            <thead>
                                <tr>
                                    <th>NOW PLAYING</th>
                                    <th>OPENING THIS WEEK      <font size="1">** = Limited Release</font></th>
                                    <th>COMING SOON</th>
                                    <th>EXPLORE MORE</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><a href="">Fifty Shades of Grey</a></td>
                                    <td><a href="">The Lazarus Effect</a></td>
                                    <td><a href="">Chapple</a></td>
                                    <td>WATCH TRAILERS</td>
                                </tr>
                                <tr>
                                    <td><a href="">Kingsman: The Secret Service</a></td>
                                    <td><a href="">Focus</a></td>
                                    <td><a href="">Unfinished Business</a></td>
                                    <td><a href="">TOP BOX OFFICES</a></td>
                                </tr>
                                <tr>
                                    <td><a href="">The SopngeBob Movie: Sponge Out of Water</a></td>
                                    <td><a href="">** 71</a></td>
                                    <td><a href="">Run All Night</a></td>
                                    <td>NEW DVDS</td>
                                </tr>
                                <tr>
                                    <td><a href="">McFarland, USA</a></td>
                                    <td><a href="">** Deli Man</a></td>
                                    <td><a href="">The Divergent Series: Insurgent</a></td>                            
                                </tr>
                                <tr>
                                    <td><a href="movieinfopage.htm">The DUFF</a></td>
                                    <td><a href="movieinfopage.htm">** Eastern Boys</a></td>
                                    <td><a href="movieinfopage.htm">The Divergent Series: Insurgent</a></td>                            
                                </tr>
                                <tr>
                                    <td><a href="">American Sniper</a></td>
                                    <td><a href="">** Everly</a></td>
                                    <td><a href="">Do You Believe?</a></td>                            
                                </tr>
                                <tr>                            
                                    <td><a href="">SEE ALL NOW PLAYING</a></td>
                                    <td><a href="">SEE ALL OPENING THIS WEEK</a></td>
                                    <td><a href="">SEE ALL COMING SOON</a></td>
                                </tr>
                            </tbody>
                        </table></li>
                    </div></ul>
                </li>        
        
                <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">MOVIE TIMES + TICKETS<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu"><div class="container-fluid">
                        <li><table width="1000px" class="table-nonfluid">
                            <thead>
                                <tr>
                                    <th colspan="3">WHERE ARE YOU LOCATED? HERE ARE OUR TOP CITIES</th>                                
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><a href="">New York, NY</a></td>
                                    <td><a href="">Los Angeles, CA</a></td>
                                    <td><a href="">Atlanta, GA</a></td>                                
                                </tr>
                                <tr>
                                    <td><a href="">Chicago, IL</a></td>
                                    <td><a href="">Austin, TX</a></td>
                                    <td><a href="">Miami, FL</a></td>                                
                                </tr>
                                <tr>
                                    <td><a href="">San Francisco, CA</a></td>
                                    <td><a href="">Phoenix, AZ</a></td>
                                    <td><a href="">Washington, DC</a></td>                                
                                </tr>
                                <tr>
                                    <td><a href="">Boston, MA</a></td>
                                    <td><a href="">San Diego, CA</a></td>
                                    <td><a href="">Seattle, WA</a></td>                            
                                </tr>
                                <tr>
                                    <td><a href="">Edison, NJ</a></td>
                                    <td><a href="">Houston, TX</a></td>
                                    <td><a href="">Tempa, FL</a></td>                            
                                </tr>
                            </tbody>
                        </table></li>
                    <div></ul>
                </li>
                
            </ul>
            
            <form class="navbar-form navbar-left" id="search" method="POST" action="search.htm">
                <input type="text" class="form-control" name="searchParameter" placeholder="Enter City + State, ZIP Code, or Movie">
                <button type="submit" class="btn btn-success">Go</button></li>
            </form>
            
        </div>
    </nav>
<!--/CONTENT NAV BAR-->

</div>