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
<title>Forgot password SBM Admin| SBM Bank</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style1.css" rel="stylesheet">
<link href="css/forgot-password.css" rel="stylesheet">
<script>
		function validate()
		{
			var mobile = documetn.myform.mobile
			var loginid = document.myform.email;
			var password = document.myform.password;
			var cpassword = document.myform.password1;
			if(mobile.value==null||mobile.value=="")
			{
				window.alert("please enter Mobile Number");
				loginid.style.background="#f08080";
				loginid.focus();
				return false;
			}
			if(loginid.value==null||loginid.value=="")
			{
				window.alert("please enter Email Id");
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
          <li><a href="loginadmin.jsp"  class="js-scroll-trigger"><b>Login</b></a></li>
          <li><a href="loginadmin.jsp"  class="js-scroll-trigger"><b>Back</b></a></li>          
          <li><a href="admindashboard.jsp"  class="js-scroll-trigger"><b>Home</b></a></li>          
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
String email=request.getParameter("email");
String password=request.getParameter("password");
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
	if(request.getParameter("btn_login")!=null) {
		PreparedStatement ps=con.prepareStatement("update sbmadmin set password=? where email=?");
		ps.setString(2,email);
		ps.setString(1,password);
		int i=ps.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("loginadmin.jsp");
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
          <div class="div1"><label ><center>Mobile Number *</center></label> <input  name="mobile" class="form-control" type="number"><br></div>
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
