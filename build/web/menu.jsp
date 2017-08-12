<%-- 
    Document   : menu
    Created on : Feb 26, 2017, 5:10:41 PM
    Author     : np
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo">
                        <h1><a href="${pageContext.request.contextPath}/index.jsp"></a><img src="img/logo.png"></a></h1>
                    </div>
                </div>
                
                <div class="col-sm-6">
                    <div class="shopping-item">
                       <form action="ControllerCartBean">
                            <input type="submit" value="View Cart" name="action" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="mainmenu-area">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                         <li><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
                        <li><a href="${pageContext.request.contextPath}/admin/product.jsp">Products</a></li>
                        <li><a href="${pageContext.request.contextPath}/admin/customer.jsp">Customers</a></li>
                        <li> <a href="${pageContext.request.contextPath}/admin/ControllerCustomers?action=Logout ">
                            <%
                            if (session.getAttribute("USER") != null){
                                out.print("Logout");
                            }else{
                                out.print(" Login  ");
                            }    
                        %>
                            </a></li>
                    </ul>
                </div>  
            </div>
        </div>
    </div>
    </body>
</html>
