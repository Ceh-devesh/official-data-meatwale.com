<?php

session_start();

error_reporting(0);

if(isset($_POST["captcha"])&&$_POST["captcha"]!=""&&$_SESSION["code"]==$_POST["captcha"])
{

$txtfirstname        =$_REQUEST['txtfirstname'];
$txtlast			=$_REQUEST['txtlast'];
$txtaddress			=$_REQUEST['txtaddress'];
$txtemail1			=$_REQUEST['txtemail1'];
$txtmobile			= $_REQUEST['txtmobile'];
$txtPhonenumber		=$_REQUEST['txtPhonenumber'];
$txtcity		    = $_REQUEST['txtcity'];
$txtstate		    = $_REQUEST['txtstate'];
$txtradio		    = $_REQUEST['txtradio'];
$txtremarks			=$_REQUEST['txtremarks'];


	
$message1="<font><b> Franchisee Application Form From Meat Wale </b></font><br>";

$message1.="<br><b>Name :</b><font color='blue'>&nbsp;".$txtfirstname."</font>";
$message1.="<br><b>Last Name. :</b><font color='blue'>&nbsp;".$txtlast."</font>";
$message1.="<br><b>Address. :</b><font color='blue'>&nbsp;".$txtaddress."</font>";
$message1.="<br><b>Email ID :</b><font color='blue'>&nbsp;".$txtemail1."</font>";
$message1.="<br><b>Mobile :</b><font color='blue'>&nbsp;".$txtmobile."</font>";
$message1.="<br><b>Telphone :</b><font color='blue'>&nbsp;".$txtPhonenumber."</font>";
$message1.="<br><b>City :</b><font color='blue'>&nbsp;".$txtcity."</font>";
$message1.="<br><b>State:</b><font color='blue'>&nbsp;".$txtstate."</font>";
$message1.="<br><b>Do you have Premises Ready(Y/N)*:</b><font color='blue'>&nbsp;".$txtradio."</font>";
$message1.="<br><b>Remarks:</b><font color='blue'>&nbsp;".$txtremarks."</font>";

$email="joinhands@meatwale.com";


$headers = "MIME-Version: 1.0" . "\r\n";

$headers .= "Content-type:text/html;charset=iso-8859-1" . "\r\n";

$headers .= 'From: noreply@meatwale.com'. " \r\n";

$res= mail($email,'Business enquiry From meatwale',$message1,$headers);

$res2= mail('kkumar@sourcekey.in','Business enquiry From meatwale ',$message1,$headers);

$msg='Thank you for contacting us, we will reply as soon as possible.';

$number_send=$txtmobile;
$text='Thanks for your interest with Meatwale.com. We will revert you soon.';
$message_text=urlencode($text);

$url = "http://www.onex-ultimo.in/api/pushsms?user=Meatwale&authkey=92pmUuxPt6IQ&sender=MEATWA&mobile='.$number_send.'&text=Thanks+for+your+interest+with+Meatwale.com.+We+will+revert+you+soon.+MEATWALE+FOODS+PRIVATE+LIMITED&rpt=1&summary=1&output=json&entityid=1401524980000028298&templateid=1407161797135354777";

//$url = 'http://onextelbulksms.in/shn/api/pushsms.php?usr=Meatwale&key=010w34lp30m4Ko7RX1FaAHB45e6yCh&sndr=MEATWA&ph='.$number_send.'&text='.$message_text.'&rpt=1';
//$url =  "http://103.247.98.91/API/SendMsg.aspx?uname=20190618&pass=9A9H999n&send=Meatwa&dest=$number_send&msg=$message_text";
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$curl_scraped_page = curl_exec($ch);
curl_close($ch);


} else {



$msg='Please Enter Correct Captcha Code. ';

}
?>
<?php include('include/header.php'); ?>


                <!-- WRAPPER-->
                <div id="wrapper-content">
                    <!-- MAIN CONTENT-->
                    <div class="main-contents">
                        <section class="morepage-banner-wrapper about">
                            <div class="container">
                                <div class="morepage-banner">
                                    <!--<div class="group-icons"><i class="icons flaticon-anchor-1"></i></div>-->
                                    <h2 class="title">Franchise Application Form</h2>
                                    <ol class="breadcrumb">
                                        <li><a href="index.html" class="link">Home</a></li>
                                        <li class="active"><a href="franchise-form.html" class="link">Franchise Application Form</a></li>
                                    </ol>
                                </div>
                            </div>
                        </section>
                        <section class="about-us-2 padding-top-100">
                            <div class="container">
                     
 <div class="col-lg-12 blk">


   <div class="col-sm-6 col-lg-6">

   <br>


   
   
<h3 style="font-size:25px;"><?=$msg?></h3>
   

 

   

   </div>                      
                            </div>
                            <div class="clearfix"></div>
                        </section>
                     
                    </div>
                </div>
				
				
                <!-- FOOTER-->
   <?php include('include/footer.php'); ?>

