<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="theme-color" content="#18621A">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;600&amp;display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">

    <link rel="stylesheet" crossorigin="anonymous"
        href="http://gc.kis.v2.scr.kaspersky-labs.com/E3E8934C-235A-4B0E-825A-35A08381A191/abn/main.css?attr=aHR0cDovL2ZpbmRlbGEuY29tL2xvZ2luLmh0bWw">
    <link rel="stylesheet" href="assets/css/style.css">



<meta charset="ISO-8859-1">
<title>LMS Login</title>
</head>
<body>
	<c:if test="${sessionScope.isValidUser == true}">
		<--%response.sendRedirect(request.getContextPath()+"/user/welcome");%>
	</c:if>
	<!--<form action="<--%=request.getContextPath() %>/doLogin" method="post">
		Username: <input type="text" name="username"/> <br/>
		Password: <input type="password" name="password"/> <br/>
		<input type="submit" value="login"/>
	</form> -->
	 <nav class="navbar ">
        <a href="#">
            <div class="logo">

            </div>
        </a>
    </nav>
    <main class="p-md-4 p-3">
        <div class="row">
            <div class="border-1 rounded-corner col-11 col-md-6 col-xl-4 mx-auto" style="background: #F7F7FB;">
                <a class="d-block text-center" href="#">
                    <img class="admin-logo rounded-circle" src="https://www.w3schools.com/howto/img_avatar.png">
                </a>
				<form action="<%=request.getContextPath() %>/doLogin" method="post">
                <section class="border-0 mt-4 pt-2">
                    <h4 class="mb-3 text-center text-md-left">Login to your account</h4>
                    <div class="form-group position-relative">
                        <input type="text" id = "username"name="username" placeholder="Username" class="form-control"
                            style="padding-left :30px;">
                        <span class="border-bottom"></span>
                        <i class="fas fa-user position-absolute" style="top: 12px;left: 9px;"></i>
                    </div>
                    <div class=" form-group position-relative">
                        <input type="password" id="password" name="password" placeholder="Password" class="form-control"
                            style="padding-left :30px;"><small id="result" class="text-danger">${error}</small>
                        <i class="fas fa-lock position-absolute" style="top: 12px;left: 9px;"></i>
                    </div>
                    
                    <input type="submit" id="submit" value="Continue to login" class="btn btn-color w-100 mb-40">
                  
                    
                    



                </section>
				</form>
            </div>
        </div>
    </main>
	
	<script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/admin.js"></script>
</body>
</html>