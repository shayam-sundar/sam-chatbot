
<%@ page import ="java.sql.*" %>
<%
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
	
	PreparedStatement ps=null;	
	ps=con.prepareStatement("select * from moratorium_message order by msg_id ASC");
	ResultSet r=ps.executeQuery();
	int j;
	if(r.next()) {
		j=r.getInt("msg_id");
		out.print(j);
		int i = 0;
		while(i<=12){
			PreparedStatement pstmt=null;
			pstmt=con.prepareStatement("delete from moratorium_message where msg_id=?");
			pstmt.setInt(1,j);		
			ResultSet rs=pstmt.executeQuery();
			i++;
			j++;
			
	}
	System.out.print("hello");
		
		}
		
		
		
		con.close();
	
}
catch(Exception e)
{
	out.println(e);
}
%>
