<?php



session_start();



if(isset($_POST["captcha"])&&$_POST["captcha"]!=""&&$_SESSION["code"]==$_POST["captcha"])

{

$name                 =$_REQUEST['txtNames'];



$mobile			    =$_REQUEST['txtMobiles'];


$email		        =$_REQUEST['txtEmails'];


$address		    =$_REQUEST['txtAddress'];


$calender		    =$_REQUEST['txtCalendar'];


$time		         =$_REQUEST['txtTime'];


$message1="<font><b>Business enquiry From meatwale </b></font><br>";

$message1.="<br><b>Name :</b><font color='blue'>&nbsp;".$$name	."</font>";

$message1.="<br><b>Mobile No. :</b><font color='blue'>&nbsp;".$mobile."</font>";

$message1.="<br><b>Email. :</b><font color='blue'>&nbsp;".$email."</font>";

$message1.="<br><b>Address. :</b><font color='blue'>&nbsp;".$address."</font>";

$message1.="<br><b>Calender :</b><font color='blue'>&nbsp;".$calender."</font>";

$message1.="<br><b>Time :</b><font color='blue'>&nbsp;".$time."</font>";

$email="joinhands@meatwale.com";


$headers = "MIME-Version: 1.0" . "\r\n";

$headers .= "Content-type:text/html;charset=iso-8859-1" . "\r\n";

$headers .= 'From: noreply@meatwale.com'. " \r\n";



$res= mail($email,'Business enquiry From meatwale ',$message1,$headers);



$res2= mail('kkumar@sourcekey.in','Business enquiry From meatwale ',$message1,$headers);





$msg='Thanks for your interest with Meatwale.com, Our team will get back to you shortly.';

$number_send=$mobile;
$text='Thanks for your interest with Meatwale.com. We will revert you soon.';
$message_text=urlencode($text);
$url = "http://103.247.98.91/API/SendMsg.aspx?uname=20180100&pass=99bY93wd&send=MEATWA&dest=$number_send&msg=$message_text";
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$curl_scraped_page = curl_exec($ch);
curl_close($ch);



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
<meta https-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" >

<link href="css/custom.css" rel="stylesheet" type="text/css" media="all" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

<!--Google Fonts-->
<link href='https://fonts.googleapis.com/css?family=Marvel:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,700,900' rel='stylesheet' type='text/css'>
<!--google fonts-->

<!--latest News-->

<!--banner-part-->
<link rel="stylesheet" href="css/default.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
<script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script> 
<!--End banner-part-->



<!--light box for gallery-->
  <script type="text/javascript" language="javascript" src="js/lytebox.js"></script>
  <link rel="stylesheet" href="js/lytebox.css" type="text/css" media="screen" />
<!--End light box for gallery--> 



  
  <script>
function validateForm()
{
var x=document.forms["frms"]["txtEmail"].value;
var atpos=x.indexOf("@");
var dotpos=x.lastIndexOf(".");
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)

  {
  alert("Not a valid e-mail address");
  document.forms["frms"]["txtEmail"].focus();	
  return false;
  }

}			
  </script>

    
</head>
<body>
<!--header strat here-->

<div style="text-align:center" ><br><br>

 <h3 style="font-size:25px;"><?=$msg?></h3>
 
    </div>

 
 <script>
setTimeout(function() {
  window.location.href = "https://meatwale.com/";
}, 1000);
</script>

</body>
</html>

