<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
  <title>Register New Admin</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>


</head>
<style type="text/css">
 body {
  font: 400 14px Roboto, sans-serif;
  background: #f6f4fc;
  -webkit-font-smoothing: antialiased;
  margin: 0;
  padding: 0;
  outline: 0;
  box-sizing: border-box;
  text-align: center;
  width: 100%;
  margin: 0px;
  font-size: 18px;
  color: white;
  background-image: url("images/registeradmin.jpg");
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center;
 
}
form {
  text-align: start;
  background:rgba(27, 27, 50, 0.8);;
  max-width: 550px;
  margin: auto;
  padding: 5px 50px;
}
@media(max-width: 668px) {
  form {
    max-width: 400px;
    padding: 5px 50px;
  }
}
@media(max-width: 520px) {
  form {
    max-width: 100%;
    padding: 5px 30px;
  }
}
@media(max-width: 400px) {
  form {
    max-width: 100%;
    padding: 5px 10px;
  }
}
p {
  margin: 20px 0px 5px 0px;
}
label {
  display: flex;
  flex-direction: column;
  justify-content: center;
  margin: 10px 0px 10px 0px;
}
input, select {
  padding: 10px;
  border-radius: 5px;
}
select {
  max-width: 100%;
}
textarea {
  padding: 5px;
  border-radius: 5px;
  min-height: 120px;
}
.radio, .checkbox {
  display: flex;
  flex-direction: row;
  justify-content: start;
}
.submit-button {
  width: 100%;
  padding: 8px;
  border: 1px solid lightskyblue;
  border-radius: 5px;
  cursor: pointer;
  background: lightskyblue;
  margin-bottom: 10px;
} 




em {
  font-style: normal;
}

a {
  text-decoration: none;
  color: inherit;
}



.content {
  
  display: flex;
  justify-content: center;
  align-items: top;
  flex: 1;
  margin: 5.5em 0;
  width: 100%;
  min-width: 260px;
 transform: translate(-20%, -5%);
}

.main-header {

  background-color: #fefefe;
  border-radius: 40px;
  padding: 20px;
  width: 100%;
  max-width: 650px;
}

.main-title {
  width: 100%;
}

.main-header .main-title h1 {
  margin: 30px;
  font-size: 42px;
  color: #3ba8d4;
}

.main-form {
  display: flex;
  align-items: center;
  justify-content: center;
 
}

.footer {
  position: fixed;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 4em;
  background-color: #f6f4fc;
  border-top: 1px solid #b3b3b3;
}

.footer_sign {
  position: absolute;
  top: 50%;
  right: 1em;
  transform: translateY(-50%);
  font-size: 14px;
  color: #b3b3b3;
}

.footer_sign span,
a {
  color: #49c1c3;
  text-decoration: none;
}

.header {
  z-index: 2;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 4em;
  background-color: #f6f4fc;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 1.5em;
  border-bottom: 1px solid #3ba8d4;
}

.header-user {
  font-size: 1.2em;
  color: #3ba8d4;
}

.header-user > i {
  padding-right: 10px;
}

/* ==== sidebar ==== */

*,
*::before,
*::after {
  box-sizing: border-box;
}

.sidebar {
  position: fixed;
  top: 0;
  left: -15em;
  overflow: hidden;
  transition: all 0.3s ease-in;
  width: 15em;
  height: 100%;
  background: #fefefe;
  font-size: 1.2em;
}

.active {
  color: #3ba8d4;
  background-color: #f5f8fe;
  border-right: 2px solid #3ba8d4;
}

.sidebar:hover,
.sidebar:focus,
.header:focus + .sidebar,
.header:hover + .sidebar {
  left: 0;
}

.sidebar ul {
  position: absolute;
  top: 4em;
  left: 0;
  margin: 0;
  padding: 0;
  width: 15em;
}

.sidebar ul li {
  width: 100%;
}

.sidebar-list-item {
  position: relative;
  display: inline-block;
  width: 100%;
  height: 3em;
  color: #394951;
}

.sidebar-list-item em {
  position: absolute;
  top: 50%;
  left: 4em;
  transform: translateY(-50%);
}

.sidebar-list-item:hover {
  background: #f5f8fe;
}

.sidebar-list-item > i {
  position: absolute;
  top: 0;
  left: 0;
  display: inline-block;
  width: 4em;
  height: 3em;
}

.sidebar-list-item > i::before {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

@media (min-width: 42em) {
  .content {
    margin-left: 5em;
  }

  .sidebar {
    width: 4em;
    left: 0;
  }

  .sidebar:hover,
  .sidebar:focus,
  .header:hover + .sidebar,
  .header:focus + .sidebar {
    width: 15em;
  }
}

@media (min-width: 68em) {
  .content {
    margin-left: 18em;
  }

  .sidebar {
    width: 15em;
  }
}

/* ==== form ==== */

input,
button,
textarea {
  font: 400 14px Roboto, sans-serif;
}

form input {
  width: 100%;
  height: 50px;
  color: #a6a6a6;
  border: 1px solid #dcdce6;
  border-radius: 8px;
  padding: 0 24px;
}

.main-header .main-form form {
  width: 100%;
  max-width: 450px;
}

.main-header .main-form form input {
  margin-top: 8px;
}

.main-header .main-form form .input-group {
  display: flex;
  align-items: center;
  justify-content: center;
}

.input-hour {
  height: 50px;
}

#fhourdiv {
  display: flex;
  align-items: center;
  justify-content: space-between;
}

#fhourdiv > input {
  width: 47%;
}

.main-header .main-form form .input-group input + input {
  margin-right: 8px;
}

.main-header .main-form form .input-group .all_day {
  width: 120px;
  height: 50px;
  text-align: right;
  padding: 18px 0;
  margin-top: 8px;
  color: #a6a6a6;
}

.main-header .main-form form .input-group .checkbox {
  width: 60px;
  height: 30px;
  color: #a6a6a6;
  border: 1px solid #dcdce6;
  border-radius: 10px;
  margin-left: 10px;
}

.main-header .main-form form .input-group .hour {
  width: 219px;
}

.main-header .main-form form .button {
  width: 100%;
  height: 60px;
  background: #3ba8d4;
  border: 0;
  border-radius: 10px;
  color: #fff;
  font-weight: 700;
  margin: 20px 0 15px 0;
  display: inline-block;
  text-align: center;
  text-decoration: none;
  font-size: 18px;
  transition: filter 0.2s;
  cursor: pointer;
}

.button:hover {
  filter: brightness(90%);
}







</style>
<body>
    
  
<main class="content">

        <div class="main-header">
          

          <div class="main-title">
            <h1>Request New Admin</h1>
            
            <a href="admindashboard.jsp" class="btn btn-danger mb-2"><b>Back</b></a>
          </div>
          <div class="main-form">
          <script type="text/javascript">
		  $("#formoid").submit(function(event) {

    event.preventDefault();

    var $form = $(this),
      url = $form.attr('action');

    var posting = $.post(url, {
     title: $('#mail').val(),
      description: $('#mobile').val(),
      location: $('#sub').val(),
      date: $('#mess').val(),
       

    });

    posting.done(function(data) {
      alert('success');
    });
  });
	</script>
          
    
<form id="formoid" action="mailto:shayam.1704105@srit.org" title="" method="post">
<h4>Please send email to the SBM main admin to change the admin</h4>

 <div>
    
    <input type="text"  name="mail" placeholder="Enter Mail Id" autocomplete="off" size="50" required>
    
  </div>
  <div>
    
    <input type="number"  name="mobile" placeholder="Enter Mobile No" autocomplete="off" size="50" required>
    
  </div>
  <div>
    
    <input type="text"  name="sub" placeholder="Enter Subject" autocomplete="off" size="50" required>
    
  </div>
  <div>
   
    <input  style="height:150px"type="text"  name="mess" placeholder="Enter the message" autocomplete="off" size="50"required>
  </div>
  

  <!-- <div>
   
    <input type="date" id="name4" name="date" required >
  </div>-->

  <div class="boa">
    <input type="submit"  style="background-color: #3ba8d4;color: white"  value="Send">
  </div>
</div>
</form>

</div>
        </div>
      </main>


    

  </div>
</div>

     
</main>



</body>
</html>