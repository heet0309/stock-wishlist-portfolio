<?php 
include "header.php";
?>
<?php 



 
if (isset($_POST['btn'])) 
{
 
 	$sn=$_POST['1'];
 	$qu=$_POST['2'];
 	$ip=$_POST['3'];
	$nv=$_POST['4'];
	$un=$_POST['5'];
 	$con=mysqli_connect("localhost","root","","ronak_db");
 	$q="insert into tb_portfolio values('','$sn','$qu','$ip','$nv','$un')";
 	$c=mysqli_query($con,$q);

 	
 }
 ?> 


<!DOCTYPE html>
<html>
<head>
<title>CUSTOMER PANEL</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Raleway:400,200,600,800,700,500,300,100,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Arimo:400,700,700italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/component.css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="New Fashions Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" 
        />      
<script src="js/jquery.min.js"></script>
<script src="js/simpleCart.min.js"> </script>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!-- start menu -->
</head>
<body>

<div class="registration-form">
	 <div class="container">
		 <ol class="breadcrumb">
		  <li><a href="index.php">Home</a></li>
		  <li class="active">Add Stock</li>
		 </ol>
		 <h2>Add Stock</h2>
		 <div class="col-md-6 reg-form">
			 <div class="reg">
				 <form action="#" method="post" enctype="multipart/form-data">
				 	<ul>
						 <li class="text-info">Stock Name:</li>
						 <li><input type="text" name="1" value=""></li>
					 </ul>	
				 	 <ul>
						 <li class="text-info">Quantity:</li>
						 <li><input type="text" name="2" value=""></li>
					 </ul>	
					<ul>
						 <li class="text-info">Investment Price: </li>
						 <li><input type="text" name="3" value=""></li>
					 </ul>
					 <ul>
						 <li class="text-info">Net Value: </li>
						 <li><input type="text" name="4" value=""></li>
					 </ul>

					 <ul>
						 <li class="text-info">Username: </li>
						 <li><input type="text" name="5" value=""></li>
					 </ul>
			 <input  type="submit" value="Add Stock" name="btn">
								
				
					
				 </form>
			 </div>
		 </div>
    </html>

 <?php
 include "fotter.php";
 ?>		 