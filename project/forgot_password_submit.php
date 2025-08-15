<?php
require('connection.inc.php');
require('function.inc.php');

$email=get_safe_value($con,$_POST['email']);
$res=mysqli_query($con,"select * from users where email='$email'");
$check_user=mysqli_num_rows($res);
?>
<script>
	alert("Your password was sending in your email please check your mail");
</script>
<?php
if($check_user>0){
	$row=mysqli_fetch_assoc($res);
	$pwd=$row['password'];
	$html="Your password is <strong>''$pwd''</strong>";
	include('smtp/PHPMailerAutoload.php');
	$mail=new PHPMailer(true);
	$mail->isSMTP();
	$mail->Host="smtp.gmail.com";
	$mail->Port=587;
	$mail->SMTPSecure="tls";
	$mail->SMTPAuth=true;
	$mail->Username="vachhanideep222@gmail.com";
	$mail->Password="kvsu awcy dhny qwpe";
	$mail->SetFrom("vachhanideep222@gmail.com");
	$mail->addAddress($email);
	$mail->IsHTML(true);
	$mail->Subject="Your Password";
	$mail->Body=$html;
	$mail->SMTPOptions=array('ssl'=>array(
		'verify_peer'=>false,
		'verify_peer_name'=>false,
		'allow_self_signed'=>false
	));
	if($mail->send()){
		?>
		<script>
			window.location.href= 'login.php';
		</script>
		<?php 
	}else{
		//echo "Error occur";
	}
}else{
	echo "Email id not registered with us";
	die();
}
?>