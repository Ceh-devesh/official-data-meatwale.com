<?php



session_start();



error_reporting(0);



if(isset($_POST["captcha"])&&$_POST["captcha"]!=""&&$_SESSION["code"]==$_POST["captcha"])

{

$name			=$_REQUEST['txtNames'];



$mobile			=$_REQUEST['txtMobiles'];

$email1			=$_REQUEST['txtEmails'];
$location			=$_REQUEST['txtLocation'];
$city			=$_REQUEST['txtCity'];




$message		=$_REQUEST['txtQueries'];







$message1="<font><b>Business enquiry From Sourcekey.in </b></font><br>";



$message1.="<br><b>Name :</b><font color='blue'>&nbsp;".$name."</font>";



$message1.="<br><b>Mobile. :</b><font color='blue'>&nbsp;".$mobile."</font>";

$message1.="<br><b>Email Id. :</b><font color='blue'>&nbsp;".$email1."</font>";

$message1.="<br><b>Location. :</b><font color='blue'>&nbsp;".$location."</font>";

$message1.="<br><b>City. :</b><font color='blue'>&nbsp;".$city."</font>";



$message1.="<br><b>Message :</b><font color='blue'>&nbsp;".$message."</font>";

$email="joinhands@meatwale.com";







$headers = "MIME-Version: 1.0" . "\r\n";

$headers .= "Content-type:text/html;charset=iso-8859-1" . "\r\n";

$headers .= 'From: noreply@meatwale.com'. " \r\n";



$res= mail($email,'Business enquiry From meatwale',$message1,$headers);



$res2= mail('kkumar@sourcekey.in','Business enquiry From meatwale ',$message1,$headers);





$msg='Thanks for your interest with Meatwale.com, Our team will get back to you shortly.';









} else {



$msg='Please Enter Correct Captcha Code.';

}

?>

<?php include('include/header.php'); ?>
                <!-- WRAPPER-->
                <div id="wrapper-content">
                    <!-- MAIN CONTENT-->
                    <div class="main-contents">
                        <section class="morepage-banner-wrapper about">
                            <!--<div class="container">
                                <div class="morepage-banner2">
                                     
                                     <h2 class="title">about us</h2>
                                    <ol class="breadcrumb">
                                        <li><a href="index.html" class="link">Home</a></li>
                                        <li class="active"><a href="#" class="link">about us</a></li>
                                    </ol> 
                                </div>
                            </div>-->
                          
                        </section>
                <!-- WRAPPER-->
                <div id="wrapper-content">
                    <!-- MAIN CONTENT-->
                    <div class="main-contents">
                        <section class="morepage-banner-wrapper about">
                            <div class="container">
                                <div class="morepage-banner">
                                    <!--<div class="group-icons"><i class="icons flaticon-anchor-1"></i></div>-->
                                    <h2 class="title">Contact Us</h2>
                                    <ol class="breadcrumb">
                                       <li><a href="index.php" class="link">Home</a></li>
                                        <li class="active"><a href="franchise-form.php" class="link">Franchise Application Form</a></li>
                                    </ol>
                                </div>
                            </div>
                        </section>
                        <section class="about-us-2 padding-top-100">
                            <div class="container ">
<div class="contpart  text-justify newfont fonsizz">

   <div>
   <div class="enq-fom">
  <h3 style="font-size:25px;"><?=$msg?></h3>
</div>

   

   

   </div>                      
                            </div>
                            <div class="clearfix"></div>
                        </section>
                     
                    </div>
                </div>
                <!-- FOOTER-->
<?php include('include/footer.php'); ?> 











 

    

    

    









<script>

/* form validation plugin */

$.fn.goValidate = function() {

    var $form = this,

        $inputs = $form.find('input:text');

  

    var validators = {

        name: {

            regex: /^[A-Za-z]{3,}$/

        },

        pass: {

            regex: /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}/

        },

        email: {

            regex: /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/

        },

        phone: {

            regex: /^[2-9]\d{2}-\d{3}-\d{4}$/,

        }

    };

    var validate = function(klass, value) {

        var isValid = true,

            error = '';

            

        if (!value && /required/.test(klass)) {

            error = 'This field is required';

            isValid = false;

        } else {

            klass = klass.split(/\s/);

            $.each(klass, function(i, k){

                if (validators[k]) {

                    if (value && !validators[k].regex.test(value)) {

                        isValid = false;

                        error = validators[k].error;

                    }

                }

            });

        }

        return {

            isValid: isValid,

            error: error

        }

    };

    var showError = function($input) {

        var klass = $input.attr('class'),

            value = $input.val(),

            test = validate(klass, value);

      

        $input.removeClass('invalid');

        $('#form-error').addClass('hide');

        

        if (!test.isValid) {

            $input.addClass('invalid');

            

            if(typeof $input.data("shown") == "undefined" || $input.data("shown") == false){

               $input.popover('show');

            }

            

        }

      else {

        $input.popover('hide');

      }

    };

   

    $inputs.keyup(function() {

        showError($(this));

    });

  

    $inputs.on('shown.bs.popover', function () {

  		$(this).data("shown",true);

	});

  

    $inputs.on('hidden.bs.popover', function () {

  		$(this).data("shown",false);

	});

  

    $form.submit(function(e) {

      

        $inputs.each(function() { /* test each input */

        	if ($(this).is('.required') || $(this).hasClass('invalid')) {

            	showError($(this));

        	}

    	});

        if ($form.find('input.invalid').length) { /* form is not valid */

        	e.preventDefault();

            $('#form-error').toggleClass('hide');

        }

    });

    return this;

};

$('form').goValidate();





</script>





