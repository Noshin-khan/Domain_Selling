<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Search Page</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
  <style>
    #a {

      margin-top: 30px;
    }

    #a1, #a2, #a3, #a4, #a5, #a6{
        margin: 20px;
    }
    h2{
      font-family: Josefin Sans ;
    }

   #b1, #b2, #b3, #b4{
      border: 10px outset orange;
      margin: 10px;
      padding: 10px;
      text-align: center;

   }
   footer{
    margin-top: 100px;
   }

  </style>
</head>

<body class="bg-dark">
         <%@include file="navbar.jsp" %> 


  <!-- Cover Section-->
  <div class="card text-bg-dark">
    
    <img src="images/cover.PNG" class="card-img" alt="..." height="300px">
    <div class="card-img-overlay text-md-end " style="color: black;">
      <div class="col-md-5 offset-md-6 ">
        <br><br>
        <form action="available" method="post" class="d-flex mt-5" role="search">
            <input class="form-control me-2" type="search" placeholder="Find your own Domain" aria-label="Search" name="domain">
          <button class="btn btn-outline-success" type="submit">Search Domains</button>
        </form>
      </div>
    </div>
  </div>
  <br>
  <!-- Content-->
  <div style="color: white;">
    <h2 align="center" id="a">Why you need to register a domain name.</h2>
    <br>

    <p>
    <h5 align="center">The perfect domain lets people know at a glance why you're online (and why you're awesome)<br>
      Use the domain search bar and find the right domain now to grab more attention and visitors.</h5>
    </p>

    <br>
    <br>
    <br>
  </div>
  <div class="card-group" id="a1">
    <div class="card">
      <img src="images/picture1.jfif" class="card-img-top" alt="..." height="125px" width="200px" >
      <div class="card-body">
        <p><small>Starting at</small></p>
        <h5 class="card-title">‪₹ 169.00*‬</h5>
      </div>
    </div>
    <div class="card" id="a2">
      <img src="images/com.png" class="card-img-top" alt="..." height="150px" width="200px">
      <div class="card-body">
        <p><small>Starting at</small></p>
        <h5 class="card-title">‪₹ 94,899.00*‬</h5>
      </div>
    </div>
    <div class="card" id="a3">
      <img src="images/info.png" class="card-img-top" alt="..." height="150px" width="200px">
      <div class="card-body">
        <p><small>Starting at</small></p>
        <h5 class="card-title">‪₹ 5,599.00*‬</h5>
      </div>
    </div>
  </div>
  <br>
  <div class="card-group">
    <div class="card" id="a4">
      <img src="images/org.png" class="card-img-top" alt="..." height="150px" width="200px">
      <div class="card-body">
        <p><small>Starting at</small></p>
        <h5 class="card-title">‪₹ 5,099.00*‬</h5>
      </div>
    </div>
    <div class="card" id="a5">
      <img src="images/in.png" class="card-img-top" alt="..." >
      <div class="card-body">
        <p><small>Starting at</small></p>
        <h5 class="card-title">‪₹ 1.00*‬</h5>
      </div>
    </div>
    <div class="card" id="a6">
      <img src="images/ai.png" class="card-img-top" alt="..." height="150px" width="200px">
      <div class="card-body">
        <p><small>Starting at</small></p>
        <h5 class="card-title">‪₹ 99.00*‬</h5>

      </div>
    </div>
  </div>
  <hr>
  <br>
</body>

<footer>
  <!-- Content-->
  <div class="container text-center" style="color: white;">
      <div class="row">
        <div class="col" id="b1">
          <h2>Get your perfect domain.</h2>
          <p>You’ll discover there are tailor-made gTLDs for all kinds of people, from farmers (.farm) to doctors (.doctor) — and even names so creative it’s up to you how to use them. Once you find a name you love, just complete the registration process to start using your shiny new gTLD.</p>
        </div>
        <div class="col" id="b2">
          <h2>Get more options.</h2>
          <p>Tried-and-true domain extensions might be more recognizable, sure, but they’ve usually been around so long that most of the shorter and catchier ones are taken. If your perfect .com or .net is taken, a gTLD gives you another shot at the perfect domain. Search new domain extensions, find the right fit and make your idea real.</p>
        </div>
        <div class="col" id="b3">
          <h2>Claim <br> your niche.</h2>
          <p>Registering a new gTLD domain is a great way to create a descriptive, memorable brand in your niche. Grab one to show off your .photography online. Or let people know you’re a real .guru at what you do.</p>
        </div>
        <div class="col" id="b4">
          <h2>Protect your brand</h2>
          <p>If you already have a domain with a traditional extension, register gTLDs that match it (like Lilys.bike if you already have LilysBikes.com). It’ll protect you from bad actors looking to hijack the reputation you worked so hard to build.</p>
        </div>
      </div>

    </footer>

</html>


</body>

</html>