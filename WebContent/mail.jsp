<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import ="java.sql.*" %>
<%@ page import="javax.mail.internet.*" %>

<%

    //Creating a result for getting status that messsage is delivered or not!

    String result;

    // Get recipient's email-ID, message & subject-line from index.html page

    final String to = request.getParameter("mail");

    final String subject = request.getParameter("sub");
    final String messg = request.getParameter("mess");
    
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
    try{
	PreparedStatement pstmt=null;
	
	pstmt=con.prepareStatement("insert into reject(rid,emailid,subject,message) values(rid.nextval,?,?,?)");
	System.out.print(subject);
	pstmt.setString(1,to);
	pstmt.setString(2,subject);
	pstmt.setString(3,messg);
	pstmt.executeUpdate();
	con.close();
    }
    catch(Exception e){
    	out.println(e);
    }
    

 

    // Sender's email ID and password needs to be mentioned

    final String from = "sshayamsundar22@gmail.com";

    final String pass = "shayamkum@2";

 

    // Defining the gmail host

    String host = "smtp.gmail.com";

 

    // Creating Properties object

    Properties props = new Properties();

 

    // Defining properties

    props.put("mail.smtp.host", host);

    props.put("mail.transport.protocol", "smtp");

    props.put("mail.smtp.auth", "true");

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.user", from);

    props.put("mail.password", pass);

    props.put("mail.port", "8085");

 

    // Authorized the Session object.

    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });

 

    try {

        // Create a default MimeMessage object.

        MimeMessage message = new MimeMessage(mailSession);

        // Set From: header field of the header.

        message.setFrom(new InternetAddress(from));

        // Set To: header field of the header.

        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(to));

        // Set Subject: header field

        message.setSubject(subject);

        // Now set the actual message

        message.setText(messg);

        // Send message

        Transport.send(message);

        //result = "Your mail sent successfully....";
		response.sendRedirect("mailsent.jsp");
    } catch (MessagingException mex) {

        mex.printStackTrace();

        result = "Error: unable to send mail....";

    }

%>

<!-- <title>Sending Mail in JSP</title>

<h1><center><font color="blue">Sending Mail Using JSP</font></h1>

<b><center><font color="red"></b>-->