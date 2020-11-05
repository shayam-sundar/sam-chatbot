<%@ page import ="java.sql.*" %>


<!DOCTYPE html>

<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="robots" content="noindex, nofollow">
      <title>SAM Chatbot</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	  <link href="css/style_bot.css" rel="stylesheet">
      <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
      <script>
$(document).ready(function(){
  $("button1").click(function(){
    $("p1").html("<h2>SBM BANK DETAILS</h2><b>*</b> SBM Bank Limited is an Indian banking and financial services company headquartered in Chennai, Tamilnadu. <br><b>*</b>It has a base of 104154 permanent employees as of 30 June 2019. <br><b>*</b>SBM Bank is India s largest private sector bank by assets.<br><b>*</b> It is the largest bank in India by market capitalisation as of March 2020.<br><b> CEO:</b> Shayam sundar<br><b>Headquarters:</b> Chennai<br><b>Founded:</b> June 2000, India ");
  });
  $("button2").click(function(){
	    $("p1").html("<h2>Bank Account Charges</h2><b>Minimum account balance</b><br>NIL<br><b>Interest Rate</b><br>2.75% per year, payable monthly<br><b>SMS Alerts</b><br>10** per quarter<br><b>Charges applicable for</b> -<br><b>*</b> Credit below Rs 500 for bank<br><b>*</b> Credit below Rs 500 for wallet<br><b>*</b> Debit below Rs 50 for wallet");
	  });
  $("button3").click(function(){
	    $("p1").html("<h2>Personal Loan</h2>Personal Loan does not require any collateral or security and can be obtained with minimal documentation. Just like most loans, however, it must be repaid in monthly instalments.<br>You can use it to fund any expense including education, a wedding, a trip, home renovation, medical expenses, and even to buy a gadget. You can even use the money to help out with the day-to-day expenses in case of a cash flow crunch.<br>SBM Bank offers a Personal Loan to pre-approved customers in just 10 seconds. For others, it usually takes about 4 hours. As an already existing customer, you can apply via NetBanking on the SBM Bank website, through an ATM or Loan Assist App. Otherwise, you can drop by the nearest branch to get the process started.<br> You can get a re-payment tenure that suits your needs. And then you have to make the payments in equated monthly instalments or EMI. This instalment amount is calculated using the loan amount, the payment tenure, and the interest rate.");
	  });
 
});
</script>
<style>
    .choice {
        background-color: #ffffff;
        border: solid 1px #000080;
        border-radius: 10px;
        margin: 4px;
        padding: 2px 6px;
        display: inline-block;
        cursor: pointer;
    }
    .choice1 {
        background-color: #cccccc;
        border: solid 1px #ccc;
        border-radius: 10px;       
        margin: 4px;
        padding: 2px 6px;
        display: inline-block;
        cursor: pointer;
        word-wrap: break-word;
        
    }
   
</style>
   </head>
   <body>
      <div class="container">
         <div class="row justify-content-md-center mb-4">
            <div class="col-md-6">
               <!--start code-->
               <div class="card">
                  <div class="card-body messages-box">
					 <ul class="list-unstyled messages-list">
					 	<li class="messages-you clearfix"><span class="message-img"><img src="image/bot_avatar.png" class="avatar-sm rounded-circle"></span><div class="message-body clearfix"><div class="message-header"><strong class="messages-title">Chatbot</strong> <small class="time-messages text-muted"><span class="fas fa-time"></span> <span class="minutes">.</span></small> </div><p class="messages-p">Hi! My name is Sam and I'm a Chatbot. I can help you with SBM Bank Moratorium related queries. Please select a quick link below or type your question in the space provided.</p></div></li>
                   		 <li class="messages-you clearfix"><span class="message-img"><img src="image/bot_avatar.png" class="avatar-sm rounded-circle"></span><div class="message-body clearfix"><div class="message-header"><strong class="messages-title">Chatbot</strong> <small class="time-messages text-muted"><span class="fas fa-time"></span> <span class="minutes">.</span></small> </div><p class="messages-p">Please select a quick link or type your question</p></div></li>
                    		<body>
								<br>
								<button1  id="i1"  class="choice">Bank Details</button1>
								<button2 id="i2"  class="choice">Rates and Charges</button2>
								<button3 id="i2"  class="choice">Loan</button3>
								
								<a class="choice" href="login.jsp" target="_blank">Login to Your Account</a>
								<a class="choice" href="register.jsp" target="_blank">Register as a New User</a><br>
								
								<p1  style=" width: 250px"class="choice1"></p1>
			</body>                   		
	
                    
                     </ul>
                  </div>
                  <div class="card-header">
                    <div class="input-group" id="ip">
                    	
					   <input id="input-me" type="text" name="messages" class="form-control input-sm" autocomplete="off"  placeholder="Type your message here..." />
					   <span class="input-group-append">
					   <input type="button" class="btn btn-primary" value="Send"name="send" onclick="send_msg()">
					   </span>
					</div> 
                  </div>
                  
               </div>
               <!--end code-->
            </div>
         </div>
      </div>
      <script type="text/javascript">
		 function getCurrentTime(){
			var now = new Date();
			var hh = now.getHours();
			var min = now.getMinutes();
			var ampm = (hh>=12)?'PM':'AM';
			hh = hh%12;
			hh = hh?hh:12;
			hh = hh<10?'0'+hh:hh;
			min = min<10?'0'+min:min;
			var time = hh+":"+min+" "+ampm;
			return time;
		 }
		 var dvv=document.getElementById("ip1");
		 dvv.style.display="none";
		 
			 
		 
		 function send_msg(){
			jQuery('.start_chat').hide();
			//var dvv=document.getElementById("ip1");
			//dvv.style.display="none";
			var txt=jQuery('#input-me').val();
			var txtp="ok";
			var txtl="Ok";
			var txth="Ok";
			if(txt==txtp || txt==txtl ||txt==txth) {
				window.open( 
			              "get_bot_message.jsp", "_blank"); 
			}
			
			if(txt) {
				var html='<li class="messages-me clearfix"><span class="message-img"><img src="image/user_avatar.png" class="avatar-sm rounded-circle"></span><div class="message-body clearfix"><div class="message-header"><strong class="messages-title">Me</strong> <small class="time-messages text-muted"><span class="fas fa-time"></span> <span class="minutes">'+getCurrentTime()+'</span></small> </div><p class="messages-p">'+txt+'</p></div></li>';
				jQuery('.messages-list').append(html);
				jQuery('#input-me').val('');
				}
			if(txt){
			if(txt!=txtp && txt!=txtl && txt!=txth){
				jQuery.ajax({
					url:'chatwindowdataform.jsp',
					type:'post',
					data:'txt='+txt,
					success:function(result){
						var html='<li class="messages-you clearfix"><span class="message-img"><img src="image/bot_avatar.png" class="avatar-sm rounded-circle"></span><div class="message-body clearfix"><div class="message-header"><strong class="messages-title">Chatbot</strong> <small class="time-messages text-muted"><span class="fas fa-time"></span> <span class="minutes">'+getCurrentTime()+'</span></small> </div><p class="messages-p">'+result+'</p></div></li>';
						jQuery('.messages-list').append(html);
						jQuery('.messages-box').scrollTop(jQuery('.messages-box')[0].scrollHeight);
					}
				});
			}
			}
		 }
      </script>
   </body>
</html>