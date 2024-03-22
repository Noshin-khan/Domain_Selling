<%-- 
    Document   : successful
    Created on : 14-Mar-2024, 4:40:30 pm
    Author     : noshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body >
        <form action="transaction" method="post">
            
            

        <%
                         HttpSession s=request.getSession();
  
            out.println("<h1>" + request.getAttribute("price") + "</h1>");
            String temp=(String)s.getAttribute("payment_method");
            if(temp.equals("1"))
            {
        %> 
        <input type="text" placeholder="enter your upi id" >
        <%
                     
   }
else if(temp.equals("2"))
{


        %>
                <input type="text" placeholder="enter your bank id" >
 <%
                     
   }
else if(temp.equals("3"))
{



        %>
                            <input type="text" placeholder="enter your credit card number " >
                            <%
                                }
else{


%>
                     <input type="text" placeholder="enter your debit card number">
                     <%
                         }
                         %>
                         
                         <button type="submit">procced</button>
        </form>




    </body>
</html>
