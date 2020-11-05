<!DOCTYPE html>
<html>
<head>
	  <title></title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</head>
<style type="text/css">
	body{
background-image: url("event.jpg");
  background-size: cover;
  background-repeat: no-repeat;
 
	}
	.box{
		transform: translate(37%,150%);
	}
	.boa{
	transform: translate(5%,0%);	
	}

</style>
<body>
	<script type="text/javascript">
		  $("#formoid").submit(function(event) {

    event.preventDefault();

    var $form = $(this),
      url = $form.attr('action');

    var posting = $.post(url, {
     title: $('#name').val(),
      description: $('#name2').val(),
      location: $('#name3').val(),
      date: $('#name4').val(),
       time: $('#name5').val()

    });

    posting.done(function(data) {
      alert('success');
    });
  });
	</script>

          

<div class="box">
<form id="formoid" action="mailto:sathish1181999@gmail.com" title="" method="post">
  <div>
    
    <input type="text" id="name" name="title" placeholder="Add title" size="50">
    
  </div>
  <div>
   
    <input type="text" id="name2" name="description" placeholder="Add description" size="50">
  </div>
  <div>
   
    <input type="text" id="name3" name="location" placeholder="Add location" size="50">
  </div>

  <div>
   
    <input type="date" id="name4" name="date" 	>
  </div>
 <div>
 	<input type="time" name="time" id="name5" ist="limittimeslist" step="0.001">
 </div>
  <div class="boa">
    <input type="submit" >
  </div>
</div>
</form>
<datalist id="limittimeslist">

  <option value="06:40">

  <option value="08:24">

  <option value="12:31:30">

  <option value="23:59:59.999">

</datalist>
</body>
</html>