
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SignUp Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <style>
            body{
                background-image: url(images/signup.jpg);
               background-size: cover;
            }

            #a{
                font-family: Josefin Sans ;
                color: white;
            }
          
    </style>
    </head>
    <body  id="a">
        <%@include file="navbar.jsp" %> 

        <div class="row">
            <div class="col-md-5 offset-md-3">
                  <div class="card mt-5" >
                <div class="card">
                    <div class="card-header">
                        <h2 style="color: darkorange"><b>Sign up</b></h2>
                    </div>
                    <div class="card-body">
                        <form action="signup" method="post" >
                        <h5>Name</h5>
                        <input type="text" class="form-control" name="name" required>
                        <br>
                        <h5>Email</h5>
                        <input type="email" class="form-control" name="email" required>
                        <br>
                        <h5>Password</h5>
                        <input type="password" class="form-control" name="password" required>
                        <br>
                        
                          <button type="submit" class="btn btn-primary">Sign up</button>
                        </form>
                       
                    </div>
                




                </div>
             </div>


        </div>

    </div>
       
    </body>
</html>
