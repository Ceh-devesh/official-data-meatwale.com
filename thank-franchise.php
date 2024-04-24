
<?php
session_start();
error_reporting(0);
if(isset($_POST["captcha"])&&$_POST["captcha"]!=""&&$_SESSION["code"]==$_POST["captcha"])
 
{

$name            =$_REQUEST['txtfirstname'];
$lname            =$_REQUEST['txtlast'];
$email            =$_REQUEST['txtemail1'];
$mobile            =$_REQUEST['txtMobiles'];
$txtphonen            =$_REQUEST['txtPhonenumber'];
$city    		=$_REQUEST['txtcity'];
$state        	=$_REQUEST['txtstate'];
$message    	=$_REQUEST['txtremarks'];
$add        =$_REQUEST['txtaddress'];

$txtrad        =$_REQUEST['txtradio'];

$message1="<font><b>Business enquiry From meatwale </b></font><br>";



$message1.="<br><b>First Name :</b><font color='blue'>&nbsp;".$name."</font>";
$message1.="<br><b>Last Name :</b><font color='blue'>&nbsp;".$lname."</font>";
$message1.="<br><b>Email :</b><font color='blue'>&nbsp;".$email."</font>";
$message1.="<br><b>Mobile. :</b><font color='blue'>&nbsp;".$mobile."</font>";
$message1.="<br><b>Telephone : </b><font color='blue'>&nbsp;".$txtphonen."</font>";
$message1.="<br><b>City/Location. :</b><font color='blue'>&nbsp;".$city."</font>";
$message1.="<br><b>State : </b><font color='blue'>&nbsp;".$state."</font>";
$message1.="<br><b>Address : </b><font color='blue'>&nbsp;".$add."</font>";
$message1.="<br><b>Do you have Premises Ready(Y/N)* : </b><font color='blue'>&nbsp;".$txtrad."</font>";

$message1.="<br><b>Remarks :</b><font color='blue'>&nbsp;".$message."</font>";







//$email="joinhands@meatwale.com";

//$email="tushar.kumar@sourcekey.in";





$headers = "MIME-Version: 1.0" . "\r\n";

$headers .= "Content-type:text/html;charset=iso-8859-1" . "\r\n";

$headers .= 'From: noreply@meatwale.com'. " \r\n";



$res= mail($email,'Business enquiry From meatwale ',$message1,$headers);



$res2= mail('11kkumar@sourcekey.in','Business enquiry From meatwale ',$message1,$headers);





$msg='Thanks for your interest with Meatwale.com, Our team will get back to you shortly.';

$number_send=$mobile;
$text='Thanks for your interest with Meatwale.com. We will revert you soon.';
$message_text=urlencode($text);

$url = 'https://www.onex-ultimo.in/api/pushsms?user=Meatwale&authkey=92pmUuxPt6IQ&sender=MEATWA&mobile='.$number_send.'&text=Thanks+for+your+interest+with+Meatwale.com.+We+will+revert+you+soon.+MEATWALE+FOODS+PRIVATE+LIMITED&rpt=1&summary=1&output=json&entityid=1401524980000028298&templateid=1407161797135354777';


//$url = 'http://onextelbulksms.in/shn/api/pushsms.php?usr=Meatwale&key=010w34lp30m4Ko7RX1FaAHB45e6yCh&sndr=SOMPLT&ph='.$number_send.'&text='.$message_text.'&rpt=1';
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$curl_scraped_page = curl_exec($ch);
curl_close($ch);
} else {
$msg='Please Enter Correct Captcha Code. ';

}

?>

 
 







<?php include('include/header.php'); ?>

                <div id="wrapper-content">
                    <!-- MAIN CONTENT-->
                    <div class="main-contents">
                        <section class="morepage-banner-wrapper about">
                            <div class="container">
                                <div class="morepage-banner">
                                    <!--<div class="group-icons"><i class="icons flaticon-anchor-1"></i></div>-->
                                    <h2 class="title newfont2">Franchise Application Form</h2>
                                    <ol class="breadcrumb newfont2">
                                        <li><a href="index.html" class="link">Home</a></li>
                                        <li class="active"><a href="franchise-form.html" class="link">Franchise Application Form</a></li>
                                    </ol>
                                </div>
                            </div>
                        </section>
                        <section class="about-us-2 padding-top-100">
                            <div class="container">
                     
 <div class="col-lg-12 blk">

 <center><?=$msg?></center>
 
    
   </div>                      
                            </div>
                            <div class="clearfix"></div>
                        </section>
                     
                    </div>
                </div>
    			
                <?php include('include/footer.php'); ?>