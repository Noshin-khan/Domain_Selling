
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
         <title>Login </title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <style>
body{
  background-image: url(images/background.png);
  background-size: cover;

}

</style>
    </head>
            

    <body class="bg-dark" >
      <body class="bg-dark">
        <!-- nav-->
                <%@include file="navbar.jsp" %> 

      <div class="row">
        <div class="col-md-5 offset-md-3">
          <div class="card mt-5" style="border: 10px outset orange ;" >
            <div class="card-body">
              <h5 class="card-title">Login</h5>
              <form action="login" method="post">
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">Email address</label>
                  <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
                </div>
                <div class="mb-3">
                  <label for="exampleInputPassword1" class="form-label">Password</label>
                  <input type="password" class="form-control" id="exampleInputPassword1" name="password">
                </div>
<button type="submit" class="btn btn-warning">login</button>
                <br>
                Don't have account ?<a href="SignUp.html"> Sign Up</a>
              </form>
            </div>
          </div>
        </div>
      </div>
    </body>


</html>
