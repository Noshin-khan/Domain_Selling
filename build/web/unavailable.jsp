<%-- 
    Document   : unavailable
    Created on : 11-Mar-2024, 12:58:44 pm
    Author     : noshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jakarta.servlet.http.HttpSession" %>
<%@page import="java.util.*" %>
<%@page import="com.dominify.entity.Domain" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
        <title>unavailable</title>
    </head>
    <body>
                        <%@include file="navbar.jsp" %> 

         <div class="card  bg-dark text-light">
        <div class="card-header">
            <h1 id="b1" class="fs-4" style="font-size: larger;">This domain is already Taken</h1>
        </div>
        <div class="card-body">
            <h5 class="card-title">Available Domain</h5>
            <form action="" method="post">
               <%
             HttpSession sess=request.getSession(); 
           ArrayList a=new ArrayList();
           ArrayList b=(ArrayList)sess.getAttribute("available_domain");
           Domain d1=(Domain)sess.getAttribute("domain");
         
         for( int i=0;i<b.size();i++)
          
         {
            
            
        %>

            <input class="form-check-input" type="checkbox"  id="flexRadioDefault2" name="domain"  value= <%= b.get(i) %> >
            <label class="form-check-label" for="flexRadioDefault2">
              <%= b.get(i) %>
            </label>
            <br>
               <%
            }
        %>
      
           
            <button type="submit" class="btn btn-success">Submit</button>
            </form>
        </div>

    </div>
    </body>
</html>
