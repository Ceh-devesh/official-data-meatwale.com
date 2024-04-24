<?
class Sms
{
	
function sendsms($mobile ,$message)
	{
		
		
		$lenth= strlen("$mobile");
		
		if($lenth>'10')
		{
			
			$start=$lenth-10;
			$smsno= substr("$mobile","$start");
			
			//$smsurl="http://bhashsms.com/api/sendmsg.php?user=9717927789&pass=8954abc&sender=060000&phone=$smsno&text=You got enquiry on www.sourcekey.in.Please check your email for detail.&priority=dnd&stype=normal";
			
		$smsurl="http://bhashsms.com/api/sendmsg.php?user=sourcekey&pass=123&sender=source&phone=$smsno&text=$message&priority=sdnd&stype=normal";
			
			
			//$file = fopen("$smsurl","r");

//fclose($file);

$shortUrl=file($smsurl);

			
			
			}
			else if($lenth=='10')
			{
				
				$smsno= $mobile;
			
		$smsurl="http://bhashsms.com/api/sendmsg.php?user=sourcekey&pass=123&sender=source&phone=$smsno&text=$message&priority=sdnd&stype=normal";
			
			//$file = fopen("$smsurl","r");

//fclose($file);

$shortUrl=file($smsurl);
				
				}
				
		
		
	}

}
?>