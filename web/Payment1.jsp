
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dominify.entity.Domain" %>
<%@page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
    <style>
        #a{
            margin: 200px;
            border: 2px solid orange;
            background-color: white;
            font-family: Josefin Sans;
        }
    </style>
    
</head>
<body class="bg-dark">
            <%@include file="navbar.jsp" %> 
     <div id="a">
         <h1>Order Summary</h1>
         
     <%
                                 HttpSession s1=request.getSession();
                                  Domain dm=(Domain)s1.getAttribute("registerdomain");
                                   out.println("<h2> Domain price :" + dm.getPrice() + "</h2>");

                       int total_price=0;
                       if(dm.isDatabase().equals("yes")){
                       if(dm.getValid()==2){
                       total_price=total_price+5000;
                     out.println("<h2> Database price :" + total_price + "</h2>");                   

            }
            else if(dm.getValid()==4){
            total_price=total_price+7000;
                                 out.println("<h2> Database price :" + total_price + "</h2>");                   

            }
            else{
            total_price=total_price+10000;
                     out.println("<h2> Database price :" + total_price + "</h2>");                   

            }
            }
            
         if(dm.isSsl().equals("yes")){
                total_price=total_price + 3000;
                           out.println("<h2> Ssl price : 3000 </h2>");  

            }
            if(dm.isDomain_sell().equals("yes")){
                 total_price=total_price+4000;
                                            out.println("<h2> Reselling price : 4000 </h2>");  

            }
            
total_price=total_price + dm.getPrice();
            
     s.setAttribute("total_price",total_price);
 
        %>
        
       
         <form action="final_page" method="post">
            <hr>
        <h2> Total price=<%= total_price%></h2>

   
  
        <button type="submit" class="btn btn-warning">Proceed</button>
        </form>
     </div>
            


</body>
</html>