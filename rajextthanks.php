<?php
session_start();

if(isset($_POST["captcha"])&&$_POST["captcha"]!=""&&$_SESSION["code"]==$_POST["captcha"])

{

$name                =$_REQUEST['txtNames'];
$lastname           =$_REQUEST['txtlast'];
$mobile			    =$_REQUEST['txtMobiles'];
$email		        =$_REQUEST['txtEmails'];
$productname		=$_REQUEST['txtproductname'];
$time		        =$_REQUEST['txttime'];
$address		    =$_REQUEST['txtaddress'];



$message1="<font><b>Business enquiry From Rajnagar Ext Store </b></font><br>";

$message1.="<br><b>First Name :</b><font color='blue'>&nbsp;".$name."</font>";
$message1.="<br><b>Last Name :</b><font color='blue'>&nbsp;".$lastname."</font>";
$message1.="<br><b>Mobile No. :</b><font color='blue'>&nbsp;".$mobile."</font>";
$message1.="<br><b>Email. :</b><font color='blue'>&nbsp;".$email."</font>";
$message1.="<br><b>Product Name. :</b><font color='blue'>&nbsp;".$productname."</font>";
$message1.="<br><b>Address. :</b><font color='blue'>&nbsp;".$address."</font>";
$message1.="<br><b>Time :</b><font color='blue'>&nbsp;".$time."</font>";

$email="meatwalefoods@gmail.com";

$headers = "MIME-Version: 1.0" . "\r\n";

$headers .= "Content-type:text/html;charset=iso-8859-1" . "\r\n";

$headers .= 'From: noreply@meatwale.com'. " \r\n";

$res= mail($email,'Business enquiry From meatwale ',$message1,$headers);

$res2= mail('hikkumar1979@gmail.com','Business enquiry From meatwale ',$message1,$headers);
$res3= mail('kkumar@sourcekey.in','Business enquiry From meatwale ',$message1,$headers);

$msg='Thanks for your interest, Our store will get back to you shortly.';

} else {

$msg='Please Enter Correct Captcha Code. ';

}

?>

 
<!DOCTYPE HTML>
<html>
<head>
<title>Meatwale.com</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<!--header strat here-->

<div style="text-align:center" ><br><br>

 <h3 style="font-size:25px;"><?=$msg?></h3>
 
    </div>

 
 <script>
setTimeout(function() {
  window.location.href = "https://meatwale.com/";
}, 5000);
</script>

</body>
</html>

