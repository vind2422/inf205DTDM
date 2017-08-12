<%-- 
    Document   : product
    Created on : Feb 26, 2017, 6:11:43 PM
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
        <title>Product </title>
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
            <form action="ControllerProducts">
                Enter your name:<input type="text" name="txtTenSP" value=""/>
                <input type="submit" name="action" value="Search"/>
            </form>
            <br/>
            <table cellspacing="0" class="shop_table cart">
                <tr>
                    <td>Code</td>
                    <td>Name</td>
                    <td>Price</td>
                    <td>Edit</td>
                    <td>Button</td>
                </tr>
                <c:forEach var="rows" items="${listSP}">
                    <form action="ControllerProducts">            
                    <tr class="cart_item">
                        <td>${rows.code}</td>
                        <td>${rows.name}</td>
                        <td>${rows.price}</td>     
                        <c:url var="del" value="ControllerProducts">
                            <c:param name="action" value="Edit"/>
                            <c:param name="txtCode" value="${rows.code}"/>
                            <c:param name="txtName" value="${rows.name}"/>
                            <c:param name="txtPrice" value="${rows.price}"/>
                        </c:url>
                        <td><a href="${del}">Edit</a></td>
                        <td>
                            <input  type="hidden" name="txtCode" value="${rows.code}"/>
                            <input type="submit" name="action" value="Delete"/>
                        </td>
                        
                    </tr>
                    </form>    
                </c:forEach>
                <form action="ControllerProducts">
                    <tr>
                        <td colspan="4"></td>
                        <td> <input type="submit" name="action" value="New"/></td>
                    </tr>
                </form>
            </table>
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
