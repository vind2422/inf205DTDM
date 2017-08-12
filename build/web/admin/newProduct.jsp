<%-- 
    Document   : newProduct
    Created on : Feb 26, 2017, 6:18:33 PM
    Author     : np
--%>

<%
            if (session.getAttribute("USER") == null) {
                String path = request.getContextPath();
                String url = path + "/admin/login.jsp";                
                response.sendRedirect(url);
            }
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Product </title>
        <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/stylee.css">
        <link rel="stylesheet" href="css/responsive.css">
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <jsp:include page="menu.jsp"></jsp:include>
        <br/>
        <div class="col-md-8">
        <div class="product-content-right">
        <div class="woocommerce"></div>   
        <h3>New Product</h3>
        <form action="ControllerProducts">
            <div>
              <span> Code:<label></label></span><br/>
              <input type="text" name="txtCode" value=""/>
            </div>

            <div>
              <span>Name<label></label></span><br/>
              <input <input type="text" name="txtName" value=""/><br/>
            </div>
            <div>
              <span>Price:<label></label></span><br/>
              <input <input type="text" name="txtPrice" value=""/><br><br/>
            </div>
            <input type="submit" name="action" value="Insert"/>
        </form>
        </div> 
        </div>
    </div>
    
    

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
