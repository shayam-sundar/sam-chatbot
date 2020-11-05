<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
try {
	//Statement stmt = con.createStatement();
	//String html;
	String question=request.getParameter("txt");
	//int q=Integer.parseInt(request.getParameter("txt"));
	
	//System.out.print(q);
	//String question=q.toLowerCase();
	
	PreparedStatement p=null;
	
//String added_on=date("Y-m-d h:i:s");
	p=con.prepareStatement("insert into moratorium_message(msg_id,message) values(msg_id.nextval,?)");
	p.setString(1,question);
	
	//rs=pstmt.executeQuery();
	p.executeUpdate();
//added_on=date("Y-m-d h:i:s");
	//ps=con.prepareStatement("insert into message(message_id,message,added_on,type) values(message_id.nextval,?,CURRENT_TIMESTAMP,'bot')");
//echo $html;
	//ps.setString(1,html);
	//ps.executeUpdate();
	
	con.close();
	}
catch(Exception e)
{
	out.println(e);
}


%>