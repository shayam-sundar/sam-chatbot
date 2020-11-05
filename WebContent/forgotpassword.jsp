<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="SAM is a banking chatbot which uses latest AI and Natural Language Processing to understand your query and fetch relevant information. Get instantaneous answers by conversing with SAM in human language. Keep reading!">
<meta name="keywords" content="banking chatbot, sam chatbot, banking bot, financial chatbot, SBM Bank">
  <meta name="author" content="">
<title>Forgot password SBM Chatbot| SBM Bank</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style1.css" rel="stylesheet">
<link href="css/forgot-password.css" rel="stylesheet">
<script>
		function validate()
		{
			var loginid = document.myform.loginid;
			var password = document.myform.password;
			var cpassword = document.myform.password1;
			if(loginid.value==null||loginid.value=="")
			{
				window.alert("please enter Login Id");
				loginid.style.background="#f08080";
				loginid.focus();
				return false;
			}
			if(password.value==null||password.value=="")
			{
				window.alert("please enter the Password");
				password.style.background="#f08080";
				password.focus();
				return false;
			}
			if(cpassword.value==null||cpassword.value==""||cpassword.value!=password.value)
			{
				window.alert("New Password and Confirm Password are not matched !!! Please enter thr correct password");
				cpassword.style.background="#f08080";
				cpassword.focus();
				return false;
				
				}
		}
	</script>
</head>

<body id="page-top">

  
		
		
<!--<div id="preloader"></div>-->
<nav class="navbar navbar-default fixed-top" role="navigation"  id="mainNav">
  <div class="container">
    <div class="navbar-header"> <a class="navbar-brand" href="Form.html"><img src="images/sbm bank logo.PNG" alt=""></a>
      <button type="button" class="navbar-toggle"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <div class="rightMenu">
        <ul class="menu">
          <li><a href="register.jsp" class="js-scroll-trigger"><b>Register</b></a></li>
          <li><a href="login.jsp"  class="js-scroll-trigger"><b>Login</b></a></li>
          <li><a href="Form.html"  class="js-scroll-trigger"><b>Home</b></a></li>          
          <li><a href="Form.html"  class="js-scroll-trigger"><b>Learn More</b></a></li>          
          <!-- <li><a href="#faqs"  class="js-scroll-trigger">Have Questions?</a></li>
          <li><h2 style="color:#ffffff"><a href="logout.jsp" class="btn btn-primary mb-2"><b>Logout</b></a></h2>-->
          
          
        </ul>
      </div>
      <div class="clear"></div>
    </div>
  </div>
</nav>


<body>
<%
String loginid=request.getParameter("loginid");
String password=request.getParameter("password");
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
	if(request.getParameter("btn_login")!=null) {
		PreparedStatement ps=con.prepareStatement("update customer set password=? where loginid=?");
		ps.setString(2,loginid);
		ps.setString(1,password);
		int i=ps.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("login.jsp");
		}
		else {
			request.setAttribute("errorMsg","Invalid Login id or Password");
		}
		con.close();
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
<br>
<br>
<div class="">		 
		<h1 class="text-center page-title-bg">Forgot Password </h1>	
			</div>
</body>
<section id="Meet">
  <div class="container">
    <div class="about-sec">
      <div class="row">
        <div class="col-md-12">
          <h3 class="text-center pb-2">Please enter your details below and we will change your password. </h3>
          <p style="color:red">
          <%
			if(request.getAttribute("errorMsg")!=null)
			{
				out.println(request.getAttribute("errorMsg"));
				//request.getRequestDispatcher("Form.html");
			}
			%>
			</p>
          <br>
          <form name="myform" method="post" onsubmit="return validate();">
          <div class="div1"><label ><center>Email Address *</center></label> <input  name="email" class="form-control" type="text" required><br></div>
          <div class="div1"><label ><center>Login Id *</center></label> <input  name="loginid" class="form-control" type="number"><br></div>
          <div class="div1"><label ><center>New Password *</center></label> <input  name="password" class="form-control" type="password"><br></div>
          <div class="div1"><label ><center>Confirm Password *</center></label> <input  name="password1" class="form-control" type="password" required><br></div>
           <button type="submit"  class="btn btn-primary mb-2"
								name="btn_login" >
								RESET
							</button>
							<br>
							</form>
          
          <p class="text-justify pb-2">The chat assistant, known as SAM Intelligent Assistant, or SAM, will help customers with everyday banking tasks just like a bank.</p>
          <p>
								I / We acknowledge and accept the Terms and Conditions
								applicable and available on the site.
							</p>
							<p>
								<strong>Caution: </strong>Never disclose your Internet Banking
								Login-id, Password or PIN to anyone.
							</p>
        </div>
        
      </div>
    </div>
  </div>
</section>
<section id="content">
				<!-- Popuplar Destinations -->
				<div class="destinations">
					<div class="container">			
						
						<div class="alert alert-warning mt-2 mb-2 text-center">
							<h4 class="alert-heading">
								<img src="./images/fa-star.png" class="fa" />&nbsp; CUSTOMER SUPPORT HELPLINE &nbsp;<!-- <img src="./images/fa-star.png" class="fa">-->
							</h4>
							<hr>
							<p class="mb-0">&nbsp; ATM - 044-1234 5640/1340 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Net Banking - 044-1234 1230/0123 &nbsp;</p>
							
						</div>
						<div class="security-info">
							<h2>
								<img src="./images/fa-circle-red.png" class="fa">&nbsp;
								Security Information
							</h2>

							<p class="mt-3">STOP !!! If you have divulged the Internet
								banking Password/PIN anywhere, please login and change
								Password/PIN immediately.</p>
							<p>Please avoid using public computers or PCs at cyber cafe
								for conducting Financial Transactions. It is safe to use
								Personal computer or secured systems to carry out your financial
								transactions.</p>							
						</div>
					</div>
				</div>
			</section>



<section class="greybg" id="faqs">
  <div class="container">
    <div>
      <h2 class="text-center pb-4">Have Questions?</h2>
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


</script>
</body>
</html>
