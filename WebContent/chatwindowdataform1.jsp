<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
try {
	//Statement stmt = con.createStatement();
	String html;	
	
	String q=request.getParameter("txt");
	int i=Integer.parseInt(request.getParameter("i"));
	
	//String question=q.toLowerCase();
	//if(i>12) {
		//response.sendRedirect("test2.jsp");
		
	//}
	
	PreparedStatement pstmt=null;
	pstmt=con.prepareStatement("select questions from apply_moratorium where question_id=?");
	pstmt.setInt(1,i);		
	
	//pstmt.setString(2,password);
	ResultSet rs=pstmt.executeQuery();
	//ResultSet rs = stmt.executeQuery(sql);
	
	if(rs.next())
	{
		
		html=rs.getString("questions");
		out.print(html);
		
		
	}
	else {
		html="Sorry not be able to understand you";
		out.println(html);
	}
	//PreparedStatement p=null;
//String added_on=date("Y-m-d h:i:s");
	//p=con.prepareStatement("insert into moratorium_message(msg_id,message) values(msg_id.nextval,?)");
	//p.setString(1,q);
	//rs=pstmt.executeQuery();
	//p.executeUpdate();
	
	con.close();
	}
catch(Exception e)
{
	out.println(e);
}


%>