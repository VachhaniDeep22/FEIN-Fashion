<?php
require('connection.inc.php');
require('function.inc.php');
$email=get_safe_value($con,$_POST['email']);
mysqli_query($con,"insert into mail(email) values('$email')");

echo "Thank you for send email we will send letest news on your email";
?> 