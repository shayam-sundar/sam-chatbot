<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
try {
	Statement stmt = con.createStatement();
	String html;
	String q=request.getParameter("txt");
	String question=q.toLowerCase();
	String ok="ok";
	//if(question.equals(ok)) {
		//response.sendRedirect("get_bot_message.jsp");
	//}
	PreparedStatement pstmt=null;
	PreparedStatement p=null;
	PreparedStatement ps=null;
	pstmt=con.prepareStatement("select reply from chatbot_hints where question=?");
	pstmt.setString(1,question);		
	//pstmt.setString(2,password);
	ResultSet rs=pstmt.executeQuery();
	//ResultSet rs = stmt.executeQuery(sql);
	
	if(rs.next())
	{
		
		html=rs.getString("reply");
		out.print(html);
		
	}
	else {
		html="Sorry not be able to understand you";
		out.println(html);
	}
//String added_on=date("Y-m-d h:i:s");
	p=con.prepareStatement("insert into message(message_id,message,added_on,type) values(message_id.nextval,?,CURRENT_TIMESTAMP,'user')");
	p.setString(1,question);
	//rs=pstmt.executeQuery();
	p.executeUpdate();
//added_on=date("Y-m-d h:i:s");
	ps=con.prepareStatement("insert into message(message_id,message,added_on,type) values(message_id.nextval,?,CURRENT_TIMESTAMP,'bot')");
//echo $html;
	ps.setString(1,html);
	ps.executeUpdate();
	
	con.close();
	}
catch(Exception e)
{
	out.println(e);
}


%>