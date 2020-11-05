<%@ page import ="java.sql.*" %>
<%
if(session.getAttribute("login")!=null)
{
	response.sendRedirect("admindashboard.jsp");
}
%>
<%
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
	if(request.getParameter("btn_login")!=null)
	{
		String dbemailid,emailid;
		String dbpassword;
		String password;
		emailid=request.getParameter("emailid");
		//System.out.println(emailid);
		password=request.getParameter("password");
		PreparedStatement pstmt=null;
		pstmt=con.prepareStatement("select * from sbmadmin where email=?");
		pstmt.setString(1,emailid);		
		//pstmt.setString(2,password);
		ResultSet rs=pstmt.executeQuery();
		
		if(rs.next())
		{
			dbemailid=rs.getString("email");
			System.out.println(dbemailid);
			//dbpassword=rs.getString("password");
			if((emailid.equals(dbemailid)))//||(password.equals(dbpassword)))
			{
				session.setAttribute("login",dbemailid);
				response.sendRedirect("admindashboard.jsp");
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
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Login - SBM Admin</title>
        <link href="css/style_adm.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
        <script>
		function validate()
		{
			var loginid = document.myform.emailid;
			var password = document.myform.password;
			
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
			
		}
	</script>
        
    </head>
    
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                    
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4"><b>LOGIN</b></h3></div>
                                    <div class="card-body">
                                    	<p style="color:red">
			<%
			if(request.getAttribute("errorMsg")!=null)
			{
				out.println(request.getAttribute("errorMsg"));
				//request.getRequestDispatcher("Form.html");
			}
			%>
			</p>
                                        <form  name="myform" method="post" onsubmit="return validate();">
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputEmailAddress"><b>Email</b></label>
                                                <input class="form-control py-4" id="inputEmailAddress" type="email" name="emailid" placeholder="Enter email address" />
                                            </div>
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputPassword"><b>Password</b></label>
                                                <input class="form-control py-4" id="inputPassword" type="password" name="password" placeholder="Enter password" />
                                            </div>
                                            
                                            <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small" href="forgotpasswordadmin.jsp">Forgot Password?</a>
                                                <button type="submit"  class="btn btn-primary mb-2"
													name="btn_login" value="Login">
													Login
												</button>

                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center">
                                        <div class="small"><a href="registeradmin.jsp">Need an account? Sign up!</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2020</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        
    </body>
</html>
