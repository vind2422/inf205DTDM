<%-- 
    Document   : product
    Created on : Feb 26, 2017, 5:15:09 PM
    Author     : np
--%>


<%@page import="Model.Product"%>
<%@page import="DAO.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <%                    
                    ProductDAO dao = new ProductDAO();
                    for (Product p : dao.getCodeProduct("")) {
                %>
                <div class="col-md-3 col-sm-6">
                    <div class="single-shop-product">
                        <div class="product-upper">
                            <img src="img/product-2.jpg" alt="">
                        </div>
                        <h2><a href=""><%=p.getName()%></a></h2>
                        <div class="product-carousel-price">
                            <ins><%=p.getPrice()%>
                        </div>  
                        
                        <div class="product-option-shop"> 
                            <form action="">
                                <input type="submit" name="action" value="Add to cart" />
                                <input type="hidden" name="txtCode" value="<%=p.getCode()%>"/>
                                <input type="hidden" name="txtName" value="<%=p.getName()%>"/>
                                <input type="hidden" name="txtPrice" value="<%=p.getPrice()%>"/>
                            </form>
                            
                        </div>
                            
                    </div>
                </div>
                <%
                   }
                %>
            </div>
            
            <div class="row">
                <div class="col-md-12">
                    <div class="product-pagination text-center">
                        <nav>
                          <ul class="pagination">
                            <li>
                              <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                              </a>
                            </li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li>
                              <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                              </a>
                            </li>
                          </ul>
                        </nav>                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>
