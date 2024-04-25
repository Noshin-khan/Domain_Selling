<%-- 
    Document   : checkout
    Created on : 30-Mar-2024, 10:10:56 pm
    Author     : noshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dominify.entity.Domain" %>
<%@page import="jakarta.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body >
        <%
                                 HttpSession s=request.getSession();
                                  Domain dm=(Domain)s.getAttribute("registerdomain");
                                   out.println("<h1> Domain price :" + dm.getPrice() + "</h1>");

                       int total_price=0;
                       if(dm.isDatabase().equals("yes")){
                       if(dm.getValid()==2){
                       total_price=total_price+5000;
                     out.println("<h1> Database price :" + total_price + "</h1>");                   

            }
            else if(dm.getValid()==4){
            total_price=total_price+7000;
                                 out.println("<h1> Database price :" + total_price + "</h1>");                   

            }
            else{
            total_price=total_price+10000;
                     out.println("<h1> Database price :" + total_price + "</h1>");                   

            }
            }
            
         if(dm.isSsl().equals("yes")){
                total_price=total_price + 3000;
                           out.println("<h1> Ssl price : 3000 </h1>");  

            }
            if(dm.isDomain_sell().equals("yes")){
                 total_price=total_price+4000;
                                            out.println("<h1> Reselling price : 4000 </h1>");  

            }
            
total_price=total_price + dm.getPrice();
            
     s.setAttribute("total_price",total_price);
 
        %>
        
        <form action="final_page" method="post">
        
        <h1> total price=<%= total_price%></h1>
        <button type="submit">proceed </button>
        
        </form>
    </body>
</html>
