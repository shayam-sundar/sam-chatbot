<%@ page import ="java.sql.*" %>
<%
if(session.getAttribute("login")!=null)
{
	response.sendRedirect("login.jsp");
}
%>
<%
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
if(request.getParameter("btn_register")!=null)
{
	String firstname,lastname,password,email;
	int accountno,loginid,mobile;
	firstname=request.getParameter("firstname");
	lastname=request.getParameter("lastname");
	accountno=Integer.parseInt(request.getParameter("accountno"));
	loginid=Integer.parseInt(request.getParameter("loginid"));
	password=request.getParameter("password");
	
	email=request.getParameter("EnterEmail");
	mobile=Integer.parseInt(request.getParameter("mobilenumber"));
	String dbemail;
	PreparedStatement pstmt=null;
	PreparedStatement ps=null;
	ps=con.prepareStatement("select email from customer where email=?");
	ps.setString(1,email);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		dbemail=rs.getString("email");
		//dbpassword=rs.getString("password");
		if((email.equals(dbemail)))//||(password.equals(dbpassword)))
		{
			request.setAttribute("errorMsg","Email Id Already Registered");	
		}
		
	}
	else {
		pstmt=con.prepareStatement("insert into customer(firstname,lastname,accountno,loginid,password,email,mobile) values(?,?,?,?,?,?,?)");
		
		pstmt.setString(1,firstname);
		pstmt.setString(2,lastname);
		pstmt.setInt(3,accountno);
		pstmt.setInt(4,loginid);
		pstmt.setString(5,password);
		pstmt.setString(6,email);
		pstmt.setInt(7,mobile);
		
		pstmt.executeUpdate();
		
		request.setAttribute("successMsg","Register Successfully...! Please login");
		response.sendRedirect("login.jsp");
		
		
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
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SBM Registration</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/animate.css">
<script>
	function validate()
	{
		var first_name=/^[a-z A-Z]+$/;
		var last_name=/^[a-z A-Z]+$/;
		//var email_valid=/^[\w\d\.]+@[a-zA-Z\.]+\.[A-Za-z0-9]{1,4}$/;
		var password_valid=/^[A-Z a-z 0-9 !@#$%&*()<>]{6,12}$/;
		
		var fname=document.getElementById("fname");
		var lname=document.getElementById("lname");
		var password=document.getElementById("password");
		var cpassword=document.getElementById("password1");
		//var email=document.getElementById("email");
		if(!first_name.test(fname.value) || fname.value=='')
		{
			alert("Enter Firstname Alphabet Only..!");
			fname.focus();
			fname.style.background="#f08080";
			return false;
		}
		if(!last_name.test(lname.value) || lname.value=='')
		{
			alert("Enter Lastname Alphabet Only..!");
			lname.focus();
			lname.style.background="#f08080";
			return false;
		}
		//if(!email_valid.test(email.value) || email.value=='')
		//{
			//alert("Enter Valid Email..!");
			//email.focus();
			//email.style.background="#f08080";
			//return false;
		//}
		if(!password_valid.test(password.value) || password.value=='')
		{
			alert("Password Characters allowed !@#$%^&*()<>");
			password.focus();
			password.style.background="#f08080";
			return false;
		}
		if(cpassword.value==null || cpassword.value==''|| c.password.value!=password.value)
		{
			window.alert("New Password and Confirm Password are not matched !!! Please enter thr correct password");
			cpassword.style.background="#f08080";
			cpassword.focus();
			return false;
		}
	}
		

</script>  
</head>

<body>
<header id="header">
				
					<div class="row">
						<div class="col-md-3 col-xs-12">
							<h1 class="logo">
								<a title="SBM Net Banking - home"> <img src="images/sbm bank logo banner.png" alt="SBM ChatBot">
															</a>
							</h1>
						</div>
					</div>
				
			</header>
			<div class="">
				
					<div class="">
						<h1 class="text-center page-title-bg">Individual Registration</h1>
					</div>
					<input type="hidden" name="reqType" value="I">
					</div>
					<script SameSite="None; Secure" src="https://static.landbot.io/landbot-3/landbot-3.0.0.js"></script>

	<p style="color:red">
			<%
			if(request.getAttribute("errorMsg")!=null)
			{
				out.println(request.getAttribute("errorMsg"));
				//request.getRequestDispatcher("Form.html");
			}
			%>
			</p>
</body>
<
<head>  

<meta name="viewport" content="width=device-width, initial-scale=1">  
<style>
.feedback {
  background-image: url("images/chatboticon.png");
  background-color:white;
  color: white;
  width=100; height=100;
  padding: 50px 50px;
  
}

#mybutton {
  position: fixed;
  bottom: -10px;
  right: 30px;
}

.social-buttons.share .icon.social {
    position: absolute;
    top: 50%;
    left: 50%;
    margin: -12px;
}
.social-buttons .icon {
    fill: #fff;
}
svg:not(:root) {
    overflow: hidden;
}
.icon {
    fill: #5D6769;
    height: 24px;
    width: 24px;
}
* {
    box-sizing: border-box;
}
user agent stylesheet
svg:not(:root) {
    overflow: hidden;
}
.social-buttons.share li {
    margin: 0;
    padding: 0;
    width: 45px;
    height: 45px;
    margin-bottom: 5px;
    position: relative;
    cursor: pointer;
}
user agent stylesheet
li {
    text-align: -webkit-match-parent;
}
.social-buttons.share {
    list-style-type: none;
    margin: 0;
    padding: 0;
}
user agent stylesheet
ul {
    list-style-type: disc;
}
body {
    font-family: "Lato","Helvetica Neue",Helvetica,Arial,sans-serif;
    font-weight: normal;
    color: #5D6769;
}
html {
    font-size: 87.5%;
    line-height: 20px;
}
html {
    font-family: sans-serif;
    -ms-text-size-adjust: 100%;
    -webkit-text-size-adjust: 100%;
}
::selection {
    background-color: #3594BA;
    color: #fff;
    text-shadow: none;
}

  .social-buttons.share li {
    margin: 0;
    padding: 0;
    width: 45px;
    height: 45px;
    margin-bottom: 5px;
    position: relative;
    cursor: pointer;
}
.social-buttons .facebook {
    background-color: #6582C0;
    background-color: #899fcf;
}
ol li, ul li {
    position: relative;
    list-style-position: oustide;
}
* {
    box-sizing: border-box;
}
user agent stylesheet
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
.social-buttons.share {
    list-style-type: none;
    margin: 0;
    padding: 0;
}
user agent stylesheet
ul {
    list-style-type: disc;
}
body {
    font-family: "Lato","Helvetica Neue",Helvetica,Arial,sans-serif;
    font-weight: normal;
    color: #5D6769;
}
html {
    font-size: 87.5%;
    line-height: 20px;
}
html {
    font-family: sans-serif;
    -ms-text-size-adjust: 100%;
    -webkit-text-size-adjust: 100%;
}
::selection {
    background-color: #3594BA;
    color: #fff;
    text-shadow: none;
}

  
body{  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: white;  
}  
.container {  
    padding: 50px;  
  background-color:lightblue;  
}  
  
input[type=text], input[type=number], input[type=password], textarea {  
  width: 100%;  
  padding: 15px;  
  margin: 5px 0 22px 0;  
  display: inline-block;  
  border: none;  
  background: #f1f1f1;  
}  
input[type=text]:focus, input[type=password]:focus, input[type=number]:focus {  
  background-color:white;  
  outline: none;  
} 
 
 div {  
            padding: 10px 0;  
         }  
hr {  
  border: 1px solid #f1f1f1;  
  margin-bottom: 25px;  
}  
.registerbtn {  
  background-color: #4CAF50;  
  color: white;  
  padding: 16px 20px;  
  margin: 8px 0;  
  border: none;  
  cursor: pointer;  
  width: 100%;  
  opacity: 0.9;  
}  
.declare {  
  background-color: white;  
  color: black;  
  padding: 16px 20px;  
  margin: 8px 0;  
  border: none;  
  cursor: pointer;  
  width: 100%;  
  opacity: 0.9;  
}  
.registerbtn:hover {  
  opacity: 1;  
}  
</style>  
</head>  

<body>  
<form onsubmit="return validate();" method="post">  
  <div class="container">  
  <center>  <h2> Personal Particulars</h2> </center>
  <hr>
  <p style="color:green">
  <%
  if(request.getAttribute("successMsg")!=null)
  {
	  out.println(request.getAttribute("successMsg"));
	  request.getRequestDispatcher("login.jsp");
	  
  }
  %>
  </p>
  
    
  <label><b> Firstname: </b></label>   
<input type="text" name="firstname" id="fname" placeholder= "Firstname" size="15" required />    
<label><b> Lastname:</b> </label>    
<input type="text" name="lastname" id="lname"placeholder="Lastname" size="15"required />  
<label><b>Account No:</b> </label>    
<input type="number" name="accountno" placeholder="accountno" autocomplete="off" size="15"required /> 
	<center>  <h2> User Particulars</h2> </center> 
	<hr>
	<label><b> Login ID: </b></label>   <br>
<input type="number" name="loginid" id="loginid" placeholder= "Login Id"  autocomplete="off" size="15" required />  <br> 
<label><b> Password: </b></label>   
<input type="password" name="password" id ="password"placeholder="Password" size="15" required />   
<label><b> Confirm password:</b> </label>    
<input type="password" name="password1" placeholder=" Retype password" size="15"required />   
	<center>  <h2> Contact Particulars</h2> </center> 
	<hr>
 <br> 
<label for="email"><b> E-mail Id: </b></label>   
<input type="text" name="EnterEmail" id ="email"placeholder="email-id" size="15" required />   
<label><b> Mobile Number:</b> </label> 
   
<input type="number" name="mobilenumber" placeholder="mobilenumber" required />   
  
   
    <h3><img src="images/fa-info-small.png"> <b>DECLARATION</b></h3>
  <hr>
  <a>I have read, understood and hereby agree to the Terms and Conditions in respect of all products and channels.<br>I understand that any changes in the terms and conditions applicable to this relationship would be made available to me on request at any SBM branches. I do hereby declare that information furnished in this form is true to the best of my knowledge and belief. </a>
    <button type="submit"  name="btn_register" value="Register" class="registerbtn">Register</button>   
    </div> 
    <div>
    	 <a href="login.jsp"><center>Already have an account <b> Login here</b></center></a>
    </div>
</form>  
</body>

</html>
