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

        <div class="row">
            <div class="col-md-5 offset-md-3">
                <div class="card mt-5" >
                    <div class="card-body">


                        <form action="transaction" method="post">



                            <%
                                             HttpSession se=request.getSession();
  
                                out.println("<h3>" + request.getAttribute("price") + "</h3>");
                                String temp=(String)se.getAttribute("payment_method");
                                if(temp.equals("1"))
                                {
                            %>

                            <input type="text"  placeholder="enter your upi id" >
                            <%
                     
                       }
                    else if(temp.equals("2"))
                    {


                            %>
                            <input type="text"  placeholder="enter your bank id" >
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
                            <input type="text"  placeholder="enter your debit card number">
                            <%
                                }
                            %>

                            <button type="submit">procced</button>
                        </form>
                    </div>
                </div>

            </div>

        </div>


        <br>






    </body>
</html>
