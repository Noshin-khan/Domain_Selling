<%-- 
    Document   : coins
    Created on : 14-Mar-2024, 3:08:24 pm
    Author     : noshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
     <style>
       .Recommended{
               
          border: 10px solid orange;
          padding: 40px;
              margin: 100px;

        }

        h3, h1{
          font-family: Josefin Sans;
          color: white;
        }
    


    </style>
    </head>
    <body class="bg-dark">
      
    <%@include file="navbar.jsp" %> 
   <div class="Recommended">

     <br>
    <br>
                                        <form action="coin_account" method="post">

    <h3  style="color: white;">Coins</h3>
   <input type="number" class="form-control" name="coins" required>
    <br>
    <br>

    <h3 style="color: white;">Payment method</h3>
  <select class="form-select form-select-sm" aria-label="Small select example" name="select_method">
    
    <option value="1">UPI</option>
    <option value="2">Net Banking</option>
    <option value="3">Credit card</option>
        <option value="4">Debit card</option>

  </select>
  <br>
  <br>
   <br>
  <br>
  
  
  <button type="submit" class="btn btn-warning">Proceed</button>
   </div>
    </form>

                   
    </body>
</html>
