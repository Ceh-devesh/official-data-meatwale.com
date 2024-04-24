<?php
function redirect($url)
{
echo '<script type="text/javascript">window.location="'.$url.'";</script>';
}
redirect('https://play.google.com/store/apps/details?id=com.meatwale');
?>