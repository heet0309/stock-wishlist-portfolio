<?php
 include "header.php";
?>
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
     Products
    </div>
    <div class="table-responsive">
	<table class="table table-striped b-t b-light">

<?php
	$conn=mysqli_connect("localhost","root","");
	$db=mysqli_select_db($conn,"ronak_db");
	$qry = "SELECT * FROM tb_portfolio";
	$result=mysqli_query($conn,$qry);
	echo "<table border=2>
	<tr>
		<th>STOCK NAME</th>
		<th>INVESTMENT PRICE</th>
		<th>QUANTITY</th>
		<th>NET AMOUNT</th>
	</tr>";
	if(mysqli_num_rows($result) > 0)
		while($row=mysqli_fetch_array($result))
		{
		 echo "
			 <td> ". $row[1]. "</td>
			 <td>". $row[2]. "</td>
			 <td> ". $row[3]. "</td>
			 <td> ". $row[4]. "</td>
			 
			 </tr>";
		}
	else
		echo "<tr><td colspan=7>No Rows Available to Display.</td></tr>";
	echo "<tr><td colspan=7>". mysqli_num_rows($result). " row(s) selected.</td></tr>";
	echo "</table>";
?>
<p>Wanna Insert a New Stock??? <a href="add_stock.php">Click Here</a></p>
</body>
</html>
