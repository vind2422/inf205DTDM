<%-- 
    Document   : menu
    Created on : Feb 26, 2017, 4:30:44 PM
    Author     : np
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/responsive.css">
    </head>

    <body>
       
        <jsp:include page="header.jsp"></jsp:include>
        
        <jsp:include page="menu.jsp"></jsp:include>
        
        <br><br/>
        <div class="single_top">
            <div class="container"> 
                <div class="col-md-6 login-right">
                    <h3>Login</h3>
                    <form action="ControllerCustomers">
                        <div>
                          <span>Username<label></label></span><br/>
                          <input type="text" name="txtUser" value=""> 
                        </div>
                        <div>
                          <span>Password<label></label></span><br/>
                          <input type="password" name="txtPass" value=""> <br/><br/>
                        </div>
                        <input type="submit" value="Login" name="action">
                    </form>
                </div>

            </div>
       </div>      
        <jsp:include page="footer.jsp"></jsp:include>
        
        
        
        
        
        <!-- Latest jQuery form server -->
        <script src="https://code.jquery.com/jquery.min.js"></script>

        <!-- Bootstrap JS form CDN -->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

        <!-- jQuery sticky menu -->
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.sticky.js"></script>

        <!-- jQuery easing -->
        <script src="js/jquery.easing.1.3.min.js"></script>

        <!-- Main Script -->
        <script src="js/main.js"></script>
        
    </body>
</html>
