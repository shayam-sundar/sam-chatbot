<%@ page import="com.s3Servlet.*,java.util.ArrayList" %>
<%@ page import ="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 3s;
  animation-name: fade;
  animation-duration: 2.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="SAM is a banking chatbot which uses latest AI and Natural Language Processing to understand your query and fetch relevant information. Get instantaneous answers by conversing with SAM in human language. Keep reading!">
<meta name="keywords" content="banking chatbot, sam chatbot, banking bot, financial chatbot, SBM Bank">
  <meta name="author" content="">
<title>SAM ChatBot - Login Successful| SBM Bank</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style1.css" rel="stylesheet">

</head>
<body>
	<div style="position: fixed; bottom: 10px; right: 30px;">
    <!-- <button  id="startChatButton" class="btn btn-primary">ASK SAM</button>-->
    <li><h2><a href="get_bot_message.jsp" class="btn btn-primary"><b>ASK SAM</b></a></h2>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>

<body id="page-top">

  
		
		
<!--<div id="preloader"></div>-->
<nav class="navbar navbar-default fixed-top" role="navigation"  id="mainNav">
  <div class="container">
    <div class="navbar-header"> <a class="navbar-brand" href="Form.html"><img src="images/sbm bank logo.PNG" alt=""></a>
      <button type="button" class="navbar-toggle"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <div class="rightMenu">
        <ul class="menu">
          <li><a href="#Meet" class="js-scroll-trigger">Meet SAM</a></li>
          <li><a href="#Features"  class="js-scroll-trigger">Features</a></li>
          
          <li><a href="#How"  class="js-scroll-trigger">How can SAM help you</a></li>          
          <li><a href="#faqs"  class="js-scroll-trigger">Have Questions?</a></li>
          <li><h2 style="color:#ffffff"><a href="logout.jsp" class="btn btn-primary mb-2"><b>Logout</b></a></h2>
          
          
        </ul>
      </div>
      <div class="clear"></div>
    </div>
  </div>
</nav>

<!-- <header href="#" class="masthead text-center text-white d-flex">
  <div class="container my-auto flatinmob">
    <div class="row">
      <div class=" col-lg-6 text-left pl-5 nopadmob">
        <div class="bannerContent iphone wow animated fadeInRight"> <img src="images/eva.PNG" class="pb-3" style="float:left">
        
          <h4 style="clear:both">India's first SBM bank
            powered banking chat bot</h4>
        </div>
      </div>
    </div>
  </div>
</header>
<section class="flatin">
  <div class="container">
    <div class="row">
      <div class=" col-lg-6 text-left">
        <div class="bannerContent iphone wow animated fadeInRight"> <img src="images/eva.PNG" class="pb-3">
          <h4>India's first and SBM bank
            powered banking chat bot</h4>
        </div>
      </div>
    </div>
  </div>
</section>-->
<body>

<!-- <h2>Automatic Slideshow</h2>
<p>Change image every 2 seconds:</p>-->

<div class="slideshow-container">
<br>
<br>
<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <br>
  <img src="images/getty9.jpg" >
  <!--  <div class="text">Caption Text</div>-->
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <br>
  <img src="images/getty.jpg" style="width:100%">
  <!-- <div class="text">Caption Two</div>-->
</div>
<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <br>
  <img src="images/chatbots2jpg.jpg" style="width:100%">
  <!--  <div class="text">Caption Three</div>-->
</div>



</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
<div id="mybutton">
<input type="image" id="imgs" alt="ASK SAM"
       src="images/chatboticon.png">
       <br>
       



</div>
<style>


#mybutton {
  position: fixed;
  bottom: 50px;
  right: 30px;
}
</style>

</body>
<body>
	<div class="main-content">
	<style> 
  
        .tab4 { 
            tab-size: 8; 
        } 
    </style> 
	
	<center>
	
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		if(session.getAttribute("login")==null || session.getAttribute("login")==" ") //check condition unauthorize user not direct access welcome.jsp page
		{
			response.sendRedirect("login.jsp"); 
		}
	%>
	<br>
	<h2> <b>Welcome,To SAM</b> </h2>
	<h3>welcome<%= session.getAttribute("login") %></h3>
	<br>
	<a class="tab4">Here you can apply for a moratorium and clarify doubts of the charges and timeline ,Know your personal details using SAM</a>
	<br>
	
    
	</center>
		
    </div>
    
</body>

	
    

<section id="Meet">
  <div class="container">
    <div class="about-sec">
      <div class="row">
        <div class="col-md-12">
          <h1 class="text-center pb-2">SAM- Banking Chatbot </h1>
          <h4 class="text-center pb-2">Your very own banking assistant</h4>
          <p class="text-justify pb-2">SBM Bank's SAM (Electronic Virtual Assistant) is India's first SBM bank
            powered banking chatbot. Sam was built with the aim to leverage latest technologies to help
            serve our customers better and faster. Sam uses the latest in AI and Natural Language Processing
            to understand the user query and fetch the relevant information from thousands of possible
            sources, all in a matter of milliseconds. Customers can get the information they are seeking
            instantaneously by conversing with Sam in human language instead of searching, browsing,
            clicking buttons or waiting on a call.</p>
          <p class="text-justify pb-2">With SAM, the bank will reduce significant operational expenditure over time. Currently, 
          	SAM can address enquiries on banking products and services            
            from all over the world.</p>
          <p class="text-justify pb-2">The chat assistant, known as SAM Intelligent Assistant, or SAM, will help customers with everyday banking tasks just like a bank.</p>
        </div>
      </div>
    </div>
  </div>
</section>
<section id="Features"  class="greybg">
  <div class="container">
    <div class="about-sec">
      <div class="row">
        <div class="col-md-12">
          <h1 class="text-center pb-5">Features</h1>
          <div class="row">
            <div class="col-md-4 col-sm-12">
              <div class="boxbb fbox"> <img src="images/always-at-your-service.png">
                <h3 class="pt-2">Always at your service</h3>
                <p>SAM is available round the clock to help you out with your banking related queries </p>
              </div>
            </div>
            <div class="col-md-4 col-sm-12">
              <div class="boxbb fbox"> <img src="images/quick-and-easy.png">
                <h3 class="pt-2">Quick and Easy</h3>
                <p>Use SAM to conveniently explore a product, know the salient features & benefits and even transact</p>
              </div>
            </div>
            <div class="col-md-4 col-sm-12">
              <div class="boxbb fbox"> <img src="images/always-learning-and-evolving.png">
                <h3 class="pt-2">Always learning and evolving </h3>
                <p>The more you interact the better her gets at understanding your issues and provide more contextual results</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- <section id="Ways">
  <div class="container">
    <div class="about-sec">
      <div class="row">
        <div class="col-md-12">
          <h1 class="text-center pb-2">Ways to connect with SAM</h1>
          <div class="row">
            <div class="col-md-4 col-sm-12">
             <div class="boxbb"> <img src="images/white.PNG">
                <!-- <h3>Find Sam</h3>
                <p>You can find Sam on all of SBM Bank's digital platforms such as the website, mobile
                  site and the dedicated portal for the bank's customers. </p>
              </div>
            </div>
            <div class="col-md-4 col-sm-12">
              <div class="boxbb"> <img src="images/icon-01.png">
                <h3>Find Sam</h3>
                <p>You can find Sam on all of SBM Bank's digital platforms such as the website, mobile
                  site and the dedicated portal for the bank's customers.</p>
              </div>
            </div>
            
          </div>
        </div>
      </div>
    </div>
  </div>
</section>-->
<section class="greybg" id="How">
  <div class="container">
    <div>
      <h5>How can SAM help you</h5>
      <h1 class="text-center pb-2">What can you ask</h1>
      <div class="row mb-5">
        <div class="col-lg-4 col-md-6">
          <div class="boxbbb"> <img src="images/icon-09.png">
            <p><span id="typed1"></span> <span class="cursor"></span> </p>
          </div>
        </div>
        <div class="col-lg-4 col-md-6">
          <div class="boxbbb"> <img src="images/icon-10.png">
            <p><span id="typed2"></span> <span class="cursor"></span> </p>
          </div>
        </div>
        <div class="col-lg-4 col-md-6">
          <div class="boxbbb"> <img src="images/icon-11.png">
            <p><span id="typed3"></span> <span class="cursor"></span> </p>
          </div>
        </div>
        <div class="col-lg-4 col-md-6">
          <div class="boxbbb"> <img src="images/icon-12.png">
            <p><span id="typed4"></span> <span class="cursor"></span> </p>
          </div>
        </div>
        <div class="col-lg-4 col-md-6">
          <div class="boxbbb"> <img src="images/icon-13.png">
            <p><span id="typed5"></span> <span class="cursor"></span> </p>
          </div>
        </div>
        <div class="col-lg-4 col-md-6">
          <div class="boxbbb"> <img src="images/icon-14.png">
            <p><span id="typed6"></span> <span class="cursor"></span> </p>
          </div>
        </div>
      </div>
 
    </div>
  </div>
</section>

<section class="greybg" id="faqs">
  <div class="container">
    <div>
      <h1 class="text-center pb-4">Have Questions?</h1>
      <div class="row">
        <div class="col-sm-12">
          <div id="accordion" class="mt-5">
            <div class="card upborder">
              <div class="card-header" id="headingOne">
                <h5 class="mb-0">
                  <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne"> Is Sam a real person? </button>
                </h5>
              </div>
              <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                <div class="card-body">No, Sam is an Artificial Intelligence based virtual assistant. All responses from Sam are
                  automated. But Sam does have human trainers who teach and guide Sam on a daily basis to
                  improve the accuracy of responses.</div>
              </div>
            </div>
            <div class="card">
              <div class="card-header" id="headingTwo">
                <h5 class="mb-0">
                  <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo"> Do I need to provide personal information to use Sam. </button>
                </h5>
              </div>
              <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                <div class="card-body">No, currently, you do not need to share any personal information with Sam to avail the services. </div>
              </div>
            </div>
            <div class="card">
              <div class="card-header" id="headingThree">
                <h5 class="mb-0">
                  <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree"> Should I share my IPIN or other confidential details with Sam. </button>
                </h5>
              </div>
              <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                <div class="card-body">No, currently Sam does not require or use any confidential information. Please do not share any
                  confidential information like Credit card numbers, passwords with Sam.</div>
              </div>
            </div>
            <div class="card">
              <div class="card-header" id="headingFour">
                <h5 class="mb-0">
                  <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour"> Can Sam speak in languages other than English.</button>
                </h5>
              </div>
              <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                <div class="card-body">He will soon be able to understand and respond in multiple languages</div>
              </div>
            </div>
            <div class="card">
              <div class="card-header" id="headingSix">
                <h5 class="mb-0">
                  <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix"> Can I access my account information and details through Sam. </button>
                </h5>
              </div>
              <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                <div class="card-body">Not yet, But very soon SAM will help you check your account and transact</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<div class="footer"> Copyright &copy; 2020 SBM Bank - All Rights Reserved </div>
<!-- Bootstrap core JavaScript -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/jquery.easing.min.js"></script>
<script src="js/common.js"></script>
<script src="js/typingEffect.js"></script>
<script>
$(document).ready(function() {
    $('#tab_selector').on('change', function (e) {
	$('.tab-content .tab-pane').hide();
	$('.tab-content .tab-pane').addClass('fade');
	  var responseId = $(this).val();
	   $('#'+responseId).show();
        $('#'+responseId).removeClass('fade');
    });
});


$("#typed1").typing({
        strings: ['"Tell me the IFSC Code of ____ branch"'],
        eraseDelay: 10,
        typeDelay: 70,
        stringStartDelay: 5200,
        color: '#666666',
        typingColor: 'black',
        typingOpacity: '0.1',
        loopCount: 10,
        cursorBlink: false,
        cursorChar: '<small>_</small>',
        fade: true,
});
$("#typed2").typing({
        strings: ['"Give me the address of _____ branch"'],
        eraseDelay: 10,
        typeDelay: 70,
        stringStartDelay: 5100,
        color: '#666666',
        typingColor: 'black',
        typingOpacity: '0.1',
        loopCount: 10,
        cursorBlink: false,
        cursorChar: '<small>_</small>',
        fade: true,
});
$("#typed3").typing({
        strings: ['"Rates and charges of _____"'],
        eraseDelay: 10,
        typeDelay: 70,
        stringStartDelay: 6000,
        color: '#666666',
        typingColor: 'black',
        typingOpacity: '0.1',
        loopCount: 10,
        cursorBlink: false,
        cursorChar: '<small>_</small>',
        fade: true,
});
$("#typed4").typing({
        strings: ['"Documents required for ___ loan"'],
        eraseDelay: 10,
        typeDelay: 70,
        stringStartDelay: 5500,
        color: '#666666',
        typingColor: 'black',
        typingOpacity: '0.1',
        loopCount: 10,
        cursorBlink: false,
        cursorChar: '<small>_</small>',
        fade: true,
});
$("#typed5").typing({
        strings: ['"How can I get a ____ loan"'],
        eraseDelay: 10,
        typeDelay: 70,
        stringStartDelay: 6000,
        color: '#666666',
        typingColor: 'black',
        typingOpacity: '0.1',
        loopCount: 10,
        cursorBlink: false,
        cursorChar: '<small>_</small>',
        fade: true,
});
$("#typed6").typing({
        strings: ['"Current FD rates"'],
        eraseDelay: 10,
        typeDelay: 70,
        stringStartDelay: 6600,
        color: '#666666',
        typingColor: 'black',
        typingOpacity: '0.1',
        loopCount: 10,
        cursorBlink: false,
        cursorChar: '<small>_</small>',
        fade: true,
});


</script>
</body>
</html>
