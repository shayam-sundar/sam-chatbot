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
   </head>
   <body>
   <form name="myform" action="test.jsp" method="post">
      <div class="container">
         <div class="row justify-content-md-center mb-4">
            <div class="col-md-6">
               <!--start code-->
               <div class="card">
                  <div class="card-body messages-box">
					 <ul class="list-unstyled messages-list">
					 
					
                    <li class="messages-you clearfix"><span class="message-img"><img src="image/bot_avatar.png" class="avatar-sm rounded-circle"></span><div class="message-body clearfix"><div class="message-header"><strong class="messages-title">Chatbot</strong> <small class="time-messages text-muted"><span class="fas fa-time"></span> <span class="minutes">.</span></small> </div><p class="messages-p">Hi I am Sam a chatbot Here you can apply for the Moratorium by answering the following questions. Please Enter the correct details otherwise it will be Rejected!!!</p></div></li>
                    <li class="messages-you clearfix"><span class="message-img"><img src="image/bot_avatar.png" class="avatar-sm rounded-circle"></span><div class="message-body clearfix"><div class="message-header"><strong class="messages-title">Chatbot</strong> <small class="time-messages text-muted"><span class="fas fa-time"></span> <span class="minutes">.</span></small> </div><p class="messages-p">Please Specify the type of the loan Personal, Home and Vechile</p></div></li>
                     </ul>
                  </div>
                  <div class="card-header">
                    <div class="input-group" id="ip">
                    	
					   <input id="input-me" type="text" name="input-me" class="form-control input-sm" autocomplete="off"placeholder="Type your message here..." />
					   <span class="input-group-append">
					   <input type="button" class="btn btn-primary" value="Send"name="send" onclick="send_msg()">
					   </span>
					</div> 
                  </div>
                  
               </div>
               </form>
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
		 
			 
		 var i=0;
		 function send_msg(){
			jQuery('.start_chat').hide();
			//var dvv=document.getElementById("ip1");
			//dvv.style.display="none";
			var txt=jQuery('#input-me').val();
			i=i+1;
			
			if(txt) {
				var html='<li class="messages-me clearfix"><span class="message-img"><img src="image/user_avatar.png" class="avatar-sm rounded-circle"></span><div class="message-body clearfix"><div class="message-header"><strong class="messages-title">Me</strong> <small class="time-messages text-muted"><span class="fas fa-time"></span> <span class="minutes">'+getCurrentTime()+'</span></small> </div><p class="messages-p">'+txt+'</p></div></li>';
				jQuery('.messages-list').append(html);
				jQuery('#input-me').val('');
				}
			if(txt){
				if(i>13) {
					window.open( 
				              "thankyou.html", "_blank"); 
					
				}
			
				jQuery.ajax({
					url:'chatwindowdataform1.jsp',
					type:'post',
					//data:'txt='+txt,
					data:'i='+i,
					success:function(result){
						var html='<li class="messages-you clearfix"><span class="message-img"><img src="image/bot_avatar.png" class="avatar-sm rounded-circle"></span><div class="message-body clearfix"><div class="message-header"><strong class="messages-title">Chatbot</strong> <small class="time-messages text-muted"><span class="fas fa-time"></span> <span class="minutes">'+getCurrentTime()+'</span></small> </div><p class="messages-p">'+result+'</p></div></li>';
						jQuery('.messages-list').append(html);
						jQuery('.messages-box').scrollTop(jQuery('.messages-box')[0].scrollHeight);
					}
				});
				
			}
			if(txt){
				jQuery.ajax({
					url:'chatform1data1.jsp',
					type:'post',
					data:'txt='+txt,
					success:function(result){
						//var html='<li class="messages-you clearfix"><span class="message-img"><img src="image/bot_avatar.png" class="avatar-sm rounded-circle"></span><div class="message-body clearfix"><div class="message-header"><strong class="messages-title">Chatbot</strong> <small class="time-messages text-muted"><span class="fas fa-time"></span> <span class="minutes">'+getCurrentTime()+'</span></small> </div><p class="messages-p">'+result+'</p></div></li>';
						//jQuery('.messages-list').append(html);
						jQuery('.messages-box').scrollTop(jQuery('.messages-box')[0].scrollHeight);
					}
				});
			}
			
			
		
			
		 }
      </script>
   </body>
</html>