<%@ page import ="java.sql.*" %>
<%
if(session.getAttribute("login")!=null)
{
	response.sendRedirect("Form.jsp");
}
%>
<%
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
	if(request.getParameter("btn_login")!=null)
	{
		int dbloginid;
		String dbpassword;
		int loginid;
		String password;
		loginid=Integer.parseInt(request.getParameter("loginid"));
		password=request.getParameter("password");
		PreparedStatement pstmt=null;
		pstmt=con.prepareStatement("select * from customer where loginid=?");
		pstmt.setInt(1,loginid);		
		//pstmt.setString(2,password);
		ResultSet rs=pstmt.executeQuery();
		
		if(rs.next())
		{
			dbloginid=rs.getInt("loginid");
			//dbpassword=rs.getString("password");
			if((loginid==dbloginid))//||(password.equals(dbpassword)))
			{
				session.setAttribute("login",dbloginid);
				response.sendRedirect("Form.jsp");
				//request.getRequestDispatcher("Form.jsp").forward(request,response);
				
			}
			
		}
		else
		{
			request.setAttribute("errorMsg","Invalid Login id or Password");
			//response.sendRedirect("Form.html");
		}
		con.close();
	}
}
catch(Exception e)
{
	out.println(e);
}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.sql.*"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<title>Account Access - Login, Register, Reset Your Account |</title>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<meta charset="utf-8">
<meta name="keywords" content="Account Access - Login, Register, Reset Your Account |" />
<meta name="description" content="Account Access - Login, Register, Reset Your Account |">
<meta name="author" content="Account Access - Login, Register, Reset Your Account |">
<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/animate.css">
<script>
		function validate()
		{
			var loginid = document.myform.loginid;
			var password = document.myform.password;
			
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
			
		}
	</script>


</head>

<body onload="blockHistory();">
	<form name="myform" method="post" onsubmit="return validate();">
		
		 
  		 <input type="hidden" name="det" value="DuXFwlPDqKOL8u4QK2aip9BlBtb9tBLFJWP79n-7">
  		 <input type="hidden" name="utilLogin" value="N">
		
		
		<header id="header">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-xs-12">
							<h1 class="logo">
								<a title="SBM Bank login"> <img
									src="images/sbm bank logo.PNG" alt="SBM Bank"
									class="d-md-block d-none" /> <img
									src="images/sbm bank logo.PNG" alt="SBM Bank"
									class="d-md-none d-block mx-auto" />
								</a>
							</h1>
						</div>
					</div>
				</div>
			</header>
			<div class="">
			 
				<h1 class="text-center page-title-bg">LOGIN  </h1>
				
			</div>
			<p style="color:red">
			<%
			if(request.getAttribute("errorMsg")!=null)
			{
				out.println(request.getAttribute("errorMsg"));
				//request.getRequestDispatcher("Form.html");
			}
			%>
			</p>
			</br>
			<div class="container mt-3">
				<div class="row">
					<div class="col-lg-12 col-md-12">
						
					</div>
				</div>

				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<h4 class="page-title-bg post-title">
							Login for Individual/Proprietary concern
							<img src="./images/fa-lock.png" class="fa" />
						</h4>
						<div class="login-box">							
							<div class="form-group">
								<label>Login ID<span class="text-danger">*</span>
								</label>
								<input type="number" id="loginid" name="loginid" maxlength="12" value="" class="form-control col-md-9" title="Enter LoginId">
							</div>
							<div class="form-group">
								<label>Password<span class="text-danger">*</span></label>
								<input type="password" name="password" maxlength="15" value="" id="password" class="form-control col-md-9" title="Enter Password" autocomplete="off">
								
							</div>
														
								
							
							
							<button type="submit"  class="btn btn-danger mb-2"
								name="btn_login" value="Login">
								Login<img class="fas" src="./images/fa-caret-right.png" />
							</button>

							<button type="reset" class="btn btn-primary mb-2">Reset</button>

							<input type="hidden" name="lang" value="E">
							<hr>
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

					<div class="col-md-6 col-sm-6 col-xs-12 red-box">
						<div class="red-block">
							<div class="red-content assistance">
								<div class="tp-slide1">
									<h3 class="headerone">Assistance</h3>
									<div class="tp-text">
										<ul class="registration-list">
											<li><a   style="color:#FFFFFF"href="register.jsp"><img
													src="./images/fa-user.png" class="fa" > &nbsp;New User
													Registration</a></li>
													<br>
													
											<li><a target="iobnetbank" style="color:#FFFFFF"
												href="forgotpassword.jsp" onclick="return checkIEVersion11();"><img
													src="./images/fa-key.png" class="fa"> &nbsp;Forgot
													Password</a></li>
										</ul>										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<section id="content">
				<!-- Popuplar Destinations -->
				<div class="destinations">
					<div class="container">			
						
						<div class="alert alert-warning mt-2 mb-2 text-center">
							<h4 class="alert-heading">
								<img src="./images/fa-star.png" class="fa" />&nbsp; CUSTOMER SUPPORT HELPLINE &nbsp;<img src="./images/fa-star.png" class="fa">
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
			<!--footer-->
			<footer id="footer" class="text-xs-center">
				<div class="bottom gray-area">
					<div class="container">
						<div class="row">							
							<div
								class="col-md-4 col-xs-12 copyright text-right text-xs-center">
								<p>&copy; SBM. All Rights Reserved. 2020</p>
							</div>
						</div>
					</div>
				</div>
			</footer>		
		<input type="hidden" id="unid" name="unid"/>
		<input type="hidden" id="diug" name="diug" />
		<input type="hidden" id="yekrcne" name="yekrcne"
			value="CC9FF86ECE024914A088CE8B96DEA365"/>
	</form>
	
</body>

</html>
