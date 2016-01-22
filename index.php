<?php

error_reporting(-1);
ini_set('display_errors', 'On');

require_once __DIR__ . '/libs/gcm/gcm.php';

$gcm = new GCM();

$data = array();
$data['score'] = array('value' => '4.5');
$data['name'] = 'Ravi Tamada';
$data['title'] = 'Demo GCM';
$data['message'] = 'Hello GCM 3.0';


// $to - can be registration ID / topic / notification key
$to = 'duFQf2M-BNo:APA91bGz86Js4rFf8ZHQWRgJRRfAPvblt_vVsDW_VJVJ9q7lsoh4KhCdOnjIVL-12jKmozXx1ZJizuzFKK_N5J1-eZI-zidJy72VNvlPbkZNt-lWX0OB5diXw5a_K6WRJyEMaQLMV3Fv';
$res = $gcm->send($to, $data);
echo '<pre>';
var_dump($res);
echo '</pre>';

$registrationIds = array('duFQf2M-BNo:APA91bGz86Js4rFf8ZHQWRgJRRfAPvblt_vVsDW_VJVJ9q7lsoh4KhCdOnjIVL-12jKmozXx1ZJizuzFKK_N5J1-eZI-zidJy72VNvlPbkZNt-lWX0OB5diXw5a_K6WRJyEMaQLMV3Fv');
$res = $gcm->sendMultiple($registrationIds, $data);
echo '<pre>';
var_dump($res);
echo '</pre>';

$data['message'] = 'Message to global topic';
$res = $gcm->sendToTopic('global', $data);

echo '<pre>';
var_dump($res);
echo '</pre>';
?>