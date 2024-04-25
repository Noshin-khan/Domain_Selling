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
    a,
    h1,
    p,
    h5,
    h2 {

      font-family: Josefin Sans;
      color: white;
    }

    #accordionExample {
      margin: 50px;
      text-align: center;
    }
  </style>
</head>

<body>
  
              <%@include file="navbar.jsp" %> 

            

  <div class="collapse" id="navbarToggleExternalContent" data-bs-theme="dark">
    <div class="bg-dark p-4">
      <a class="navbar-brand" style="font-family: Josefin Sans ; color: white;" href="search.jsp">Domains</a>


    </div>
  </div>
  <nav class="navbar navbar-dark bg-dark">
    <div class="container-fluid">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
        data-bs-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false"
        aria-label="Toggle navigation">
        <h5 class="text-body-emphasis h4" style="color: white;">DomainHub</h5>

        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
  </nav>
  <div class="bg-dark">
    <div class="container text-center">
      <div class="row">
        <div class="col">
          <b>
            <h1 style="color:white ; font-size: 100px;"> Secure your website</h1>
          </b>
        </div>

        <div class="col">
          <br>
          <br>
          <p class="fs-3" style="color: white;">Welcome to DomainHub, where every click leads you closer to your ideal
            domain.
            <br>
            <br>
            <b>$2.5M+ &nbsp &nbsp &nbsp &nbsp &nbsp 500K </b>
            <br>
            &nbsp &nbsp &nbsp &nbsp Domains &nbsp &nbsp &nbsp Happy Customers
          </p>
        </div>
      </div>
      <br>
      <br>
      <br>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Find your perfect Domain" aria-label="Search">
        <button class="btn btn-outline-success" type="submit"><a href="searchbar.html">Search Domains</a></button>
      </form>
      <br>
      <br>
    </div>

    <div class="card mb-3 bg-dark" style="max-width: 1500px;">
      <div class="row g-0">
        <div class="col-md-8">
          <img src="images/poster.png" class="img-thumbnail rounded-start" style="margin-left: 50px;">
        </div>
        <div class="col-md-3">
          <div class="card-body" style="color: white;">
            <br>
            <br>

            <h5 class="card-title">Web Hosting</h5>
            <br><br>
            <b>
              <h2 class="card-text fs-1"> Secured Hosting from ₹ 199.00/mo. </h2>
            </b>
            <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
            <button type="button" class="btn btn-outline-warning btn-lg">Learn more</button>
          </div>
        </div>
      </div>
    </div>
    <div>
      <br><br>
      <h1 style="color: white;">Trusted by 20+ Million<br>
        Customers around the world</h1>
      <br><br>
      <br>
      <div class="row row-cols-2 row-cols-md-3 g-4">
        <div class="col">
          <div class="card h-100">
            <div class="card-body">
              <h6 class="card-title">THE SUPPORT PERSON</h6><br>
              <p class="card-text fs-3 text-dark">The support person have good knowledge and help with good suggestion on
                improving my settings that is extra ordinary</p>
              <br>
            </div>
            <div class="card-footer">
              <small class="text-body-secondary">Shifa Qureshi</small>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card h-100">
            <div class="card-body">
              <h6 class="card-title">100% CUSTOMER SUPPORT</h6>
              <br>
              <p class="card-text fs-3 text-dark">The support provided by DomainHub is the best in the industry with the
                knowledgable customer agent and best practices. They offer the best rate up-front over the all. </p>
              <br>
            </div>
            <div class="card-footer">
              <small class="text-body-secondary">Harsh Prajapat</small>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card h-100">
            <div class="card-body">
              <h6 class="card-title">GOOD COMMUNICATION SKILLS </h6>
              <br>
              <p class="card-text fs-3 text-dark">Great product and service customer support assistance from DomainHub support
                team </p>

              <br>
            </div>
            <div class="card-footer">
              <small class="text-body-secondary">Preeti Gupta</small>
            </div>
          </div>
        </div>
      </div>
    </div>
    <br>
    <br>
    <br>
    <div class="card mb-3 bg-dark" style="max-width: 1500px;">
      <div class="row g-0">
        <div class="col-md-8">
          <img src="images/poster1.webp" class="img-thumbnail rounded-start" style="margin: 100px; width: 60%;">
        </div>
        <div class="col-md-3">
          <div class="card-body" style="color: white;">
            <br>
            <br>

            <h5 class="card-title">Microsoft 365</h5>
            <br>
            <b>
              <h2 class="card-text fs-1"> Empower Your Business with Microsoft 365</h2>
            </b>
            <br>
            <p class="card-text" class="text-body-secondary">Microsoft 365 suite provides a robust set of tools and
              services that can improve productivity, collaboration, and security.
            <ul>
              <li>Productivity tools including Word, Excel, PowerPoint and Outlook.</li>
              <li>Online meetings, cloud storage, and personalized email.</li>
              <li>Optimized for mobile devices, smartphones, and tablets.</li>
              </p>
            </ul>
            <button type="button" class="btn btn-outline-warning btn-lg">View Plans</button>
            <br>
            <br>
          </div>
        </div>

      </div>
    </div>
    <div class="clearfix" style="color: white;">
      <img src="images/poster2.jpg" class="img-thumbnail col-md-4 float-md-end mb-3 ms-md-3"
        style="margin-right: 50px; width: 35%;" alt="...">

      <div class="card-body ms-5" style="color: white; ">
        <br>
        <br>

        <h5 class="card-title">WordPress Hosting</h5>
        <br>
        <b>
          <h2 class="card-text fs-1">Built for speed and security.</h2>
        </b>
        <br>
        <h4>
          <p class="card-text" class="text-body-secondary ">
            Get the most from your WordPress site with hosting designed to perform.
            <br>
            From automated updates and backups to industry-leading load times, this<br> is WordPress how it was meant to
            be.
        </h4>
        </p>
        <button type="button" class="btn btn-outline-warning btn-lg">View Plans</button>
        <br>
        <br>
      </div>
    </div>
    <br>
    <br>
    <div class="card mb-3 bg-dark" style="max-width: 1500px;">
      <div class="row g-0">
        <div class="col-md-8">
          <img src="images/poster5.jpg" class="img-thumbnail rounded-start"
            style="margin: 100px; width: 600px; height: 400px; margin-left: 100px;">
        </div>
        <div class="col-md-3">
          <div class="card-body" style="color: white;">
            <br>
            <br>
            <br>
            <h5 class="card-title ">DomainHub Pro Program</h5>
            <br>
            <b>
              <h2 class="card-text fs-1"> Free tools for designers and developers</h2>
            </b>
            <br>
            <p class="card-text" class="text-body-secondary">
              Save hours with bulk WordPress updates and automated backups, manage multiple clients from a single
              dashboard, get exclusive members-only discounts and more — all for free.


            </p>

            <button type="button" class="btn btn-outline-warning btn-lg">View Plans</button>
            <br>
            <br>
          </div>
        </div>

      </div>
    </div>
    <br>
    <div align="center" style="color: white;">
      <h1>Why DomainHub</h1>
      <br>
      <p class="fs-4">84+ million domains, 22 million customers, <br>
        millions of websites, email and security — we help grow businesses.</p>
    </div>
    <div class="card-group card mb-3 bg-dark">
      <div class="card card mb-3 bg-dark">
        <img src="images/poster7.png" class="card-img-top" style="margin: 10px;">
      </div>
      <div class="card card mb-3 bg-dark">
        <img src="images/poster8.jpg" class="card-img-top" style="margin: 10px;">
      </div>
      <div class="card card mb-3 bg-dark">
        <img src="images/images.jfif" class="card-img-top" style="margin: 10px">


      </div>
    </div>

    <br>
    <br>
    <div class="accordion mb-3 bg-dark " id="accordionExample">
      <div class="accordion-item">
        <h1 class="accordion-header">
          <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne"
            aria-expanded="true" aria-controls="collapseOne">
            How does DomainHub help small business owners succeed?
          </button>
        </h1>
        <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
          <div class="accordion-body">
            <strong>DomainHub offers more than just a platform to build your website, we offer everything you need to
              create an effective, memorable online presence. Already have a site? We offer hosting plans that will keep
              it fast, secure and online. Our professional email helps you build a professional image, while our online
              marketing tools empower entrepreneurs to get online with an SEO-friendly website. DomainHub is an
              all-in-one
              solution provider to get your idea online, backed with expert, personalized support from DomainHub
              Guides.</strong>
          </div>
        </div>
      </div>
      <div class="accordion-item">
        <h1 class="accordion-header">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
            Why choose GoDaddy for WordPress?
          </button>
        </h1>
        <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
          <div class="accordion-body">
            <strong>DomainHub offers reliable and affordable WordPress hosting and WooCommerce hosting plans, one-click
              installs and the latest version so you have the most recent features available for your site. Your website
              content is managed from one place; you have a wealth of themes and add-ons giving you limitless options to
              succeed.
            </strong>
          </div>
        </div>
      </div>
      <div class="accordion-item">
        <h1 class="accordion-header">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
            Why get a domain name from DomainHub?
          </button>
        </h1>
        <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
          <div class="accordion-body">
            <strong>DomainHub is the world’s largest and trusted domain registrar that empowers people like you with
              creative ideas to succeed online. Buying a domain name is easy with our domain search tool and domain name
              generator tools you can find the perfect website address for your business.</strong>
            <br>
            <br>
            <br>

            <br>


          </div>
        </div>
      </div>
    </div>
</body>

</html>