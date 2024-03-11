<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DomainHub</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
    
    <style>
       .Recommended{
               
          border: 10px solid orange;
          padding: 40px;
              margin: 200px;

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
    <h1>Recommended</h1>

     <br>
    <br>
   <h3>Database</h3>
   <select class="form-select form-select-lg mb-3" aria-label="Large select example">
    <option selected></option>
    <option value="1">Yes</option>
    <option value="2">No</option>
    <br>
    <br>
  </select>

  <h3>SSL Certification</h3>
  <select class="form-select form-select-sm" aria-label="Small select example">
    <option value="1">Yes</option>
    <option value="2">No</option>
  </select>
  <br>
    <br>
    <h3 style="color: white;">Domain Time Period</h3>
  <select class="form-select form-select-sm" aria-label="Small select example">
    
    <option value="1">2 Years</option>
    <option value="2">4 Years</option>
    <option value="3">6 Years</option>
  </select>
  <br>
    <br>
    <h3>Domain Reselling<h3>
  <select class="form-select form-select-sm" aria-label="Small select example">
    <option value="1">Yes</option>
    <option value="2">No</option>
  </select>
  <br>
  <br>
  <h3>Professional E-mail<h3>
    <select class="form-select form-select-sm" aria-label="Small select example">
      <option value="1">Yes</option>
      <option value="2">No</option>
    </select>
    <br>
    <br>
  
</div>
</body>

<footer>
  <div class="d-grid gap-2 d-md-flex justify-content-md-end " >
    <button class="btn btn-primary" type="button">Contact us</button>
  </div>
</footer>
</html>