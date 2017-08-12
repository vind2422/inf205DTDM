<%-- 
    Document   : customer
    Created on : Feb 26, 2017, 6:02:49 PM
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
        <title>Customer </title>
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
        <h3>Customers</h3>
            <form action="ControllerCustomers">
                Enter your name:<input type="text" name="txtTen" value=""/>
                <input type="submit" name="action" value="Search"/>
            </form>
            <br/>
            <table cellspacing="0" class="shop_table cart">
                <tr>
                    <td>Username</td>
                    <td>Password</td>
                    <td>HoTen</td>
                    <td>Delete</td>
                </tr>
                <c:forEach var="rows" items="${listKH}">
                    <form action="ControllerCustomers">            
                    <tr class="cart_item">
                        <td>${rows.username}</td>
                        <td>${rows.password}</td>
                        <td>${rows.hoten}</td>     
                        <td>
                            <input type="hidden" name="txtCusID" value="${rows.username}"/>
                            <input type="submit" name="action" value="Delete"/>
                        </td>
                    </tr>
                    </form>    
                </c:forEach>
            </table>
        </div> 
        </div>
    </div>
    

       

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
