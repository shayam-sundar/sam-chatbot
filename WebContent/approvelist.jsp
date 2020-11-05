
<%@ page import ="java.sql.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html lang="en">
<head>
  <title>Approved List</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
     
    }
   .row.content {height: 450px}
   
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="admindashboard.jsp">Home</a></li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="admindashboard.jsp"><span class="glyphicon glyphicon-log-in"></span>Back</a></li>
      </ul>
    
    </div>
  </div>
</nav>

 
 <div class="container-fluid text-center">  
       <h1 style="color:Black;"><b>Approved Applicant's</b></h1>
</div>

</div>
<head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        

    </head>

    <body>
<%
String id = request.getParameter("userid");
String driver = "oracle.jdbc.driver.OracleDriver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "dbuser1";
String userid = "root";
String password = "";
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>

<h2 align="center" style="color:Green"><font><strong>Approved List</strong></font></h2>
<table align="center" class="table table-striped cellpadding="10" cellspacing="10" width="700px" height="100"  border="3">

<tr bgcolor="#E6E6FA">
<thead>
	<td><b>ID</b></td>
	<td><b>Email Id</b></td>
	<td><b>Subject</b></td>
	<td><b>Message</b></td>
</thead>
</tr>
<%
try{
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
PreparedStatement pstmt=null;
PreparedStatement p=null;
pstmt=con.prepareStatement("select * from approve");
ResultSet rs=pstmt.executeQuery();

while (rs.next()) {
	
	%>
	<tr bgcolor="#FFFAFA">
	<td><%=rs.getString("aid") %></td>
	<td><%=rs.getString("emailid") %></td>
	<td><%=rs.getString("subject") %></td>
	<td><%=rs.getString("message") %></td>
	</tr>
	<%
	}

connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>