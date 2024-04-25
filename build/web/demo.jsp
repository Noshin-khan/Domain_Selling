
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jakarta.servlet.http.HttpSession" %>
<%@page import="java.util.*" %>
<%@page import="com.dominify.entity.Domain" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1> Avaiable domains </h1>
        <%
             HttpSession sess=request.getSession(); 
           ArrayList a=new ArrayList();
           ArrayList b=(ArrayList)sess.getAttribute("available_domain");
           Domain d1=(Domain)sess.getAttribute("domain");
         
         for( int i=0;i<b.size();i++)
          
         {
            
        
        %>
       
            <h1><%=d1.getHost()%> .<%= b.get(i) %>
            </h1>
        <%
            }
        %>
      
    </body>
</html>
