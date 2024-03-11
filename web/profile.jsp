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
    </head>
    <body>
                     <%@include file="navbar.jsp" %> 


        <h1>Hello World!</h1>
        <h1>done</h1>
          <h3 style="color: white">Name  :  <c:out  value="${user.name}"/></h3>
          <h3 style="color: white">email : <c:out value="${user.email}"/></h3>
    </body>
</html>
