<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.dominify.entity.User" %>
<%@page import="jakarta.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    </head>
    <body  class="bg-dark">
    <!-- nav-->
    <nav class="navbar bg-dark" data-bs-theme="dark">
        <!-- Navbar content -->

        <div class="container-fluid">

            <a class="navbar-brand" style="font-family: Josefin Sans ;" href="index.jsp">DomainHub</a>

            <ul class="nav justify-content-end">
                <li class="nav-item">
                    <a class="nav-link link-warning " aria-current="page" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link-warning" href="search.jsp">Search</a>
                </li>
                <%
                      HttpSession s=request.getSession();
                       User u=(User)s.getAttribute("user");
                       if(u==null){
                       
                    %>
                <li class="nav-item">
                    <a class="nav-link link-warning" href="login.jsp">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link-warning" href="SignUp.jsp">Signup</a>
                </li>
                <%
                    }
                      else{
                          

                            
                    %>
                     <li class="nav-item">
                      <a class="nav-link link-warning " href="currency.jsp" >Currency </a>
              </li>
             
                  <li class="nav-item">
                      <a class="nav-link link-warning " href="profile.jsp"><c:out value="${user.name}"/>  </a>
              </li>
               <li class="nav-item">
                      <a class="nav-link link-warning " href="logout" >LogOut </a>
              </li>
              <%
                  }
                  %>
                  
                          </ul>

        </div>

    </nav>

       
    </body>
</html>
