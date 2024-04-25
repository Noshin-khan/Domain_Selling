<%-- 
    Document   : profile
    Created on : 04-Mar-2024, 4:08:17 pm
    Author     : noshi
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dominify.entity.User" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
       body{
         background-image: url(background.png);
         background-size: cover;
         }

    div, h2, h3,h1{
      
        font-family: Josefin Sans;
      
        color: rgb(255, 255, 255);
    }
    #a{
      border: 10px outset orange;
      border-left: -100px;
      border-right: -100px;
    

    }

    #text{
      margin-top: 100px;
    }
   
    img{
      margin-top: 100px;
       width: 200px;
       height: 150;
       border: 10px outset orange;

    }
</style>
    </head>
    <body class="bg-dark" id="a">
        
                     <%@include file="navbar.jsp" %> 
                     <div class="clearfix" style="color: white;">
    <img src="images/profile.webp" class="img-thumbnail col-md-4 float-md-end mb-3 ms-md-3"
      style="margin-right: 50px; margin-top: 200px; width: 25%; border: 10px outset orange;;" alt="...">

    <div class="card-body ms-5" style="color: white; ">
      <br>
      <br>
        <h1 id="profix" style="margin-top: 50px;">Profile</h1>
      <div id="text">
        <h3>Username</h3>
        <br>
        <h4> <c:out  value="${user.name}"/></h4>
        <hr>
        <h3>Email Address</h3>
        <br>
        <h4> <c:out value="${user.email}"/></h4>
        <hr>
        <h3>Available DomainHub Currency</h3>
        <br>
             <h4> <c:out  value="${user.currency}"/></h4>

        <hr>
        <h3>Available Domains</h3>
        <br><!-- comment -->
        <c:forEach items="${user.domain}" var="k">
            <h4>${k}</h4>
            
            
        </c:forEach>
            
        <hr>
        </div>                                                               
      <br>
      <br>
    </div>
  </div>
 


        
        
          
    </body>
</html>
