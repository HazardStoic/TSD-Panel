<?php
$domain = $_SERVER['HTTP_HOST'];
$files = [
    'autolike_c463dfc58a0ada8f746081b15e9777d2.php',
    'autoreply_c1b01fbc39e138a53b52b1977c0a9e38.php',
    'average_59baa8226b6806d459212876cc69fd6b.php',
    'dripfeed_f47827699085dee3a62a9d1e310d4cd6.php',
    'orders_d0ae3bdcc8687cf4afc35beadce9b9da.php',
    'refill_14ad1f7f1a831e32a5722de5a902eeb6.php',
    'seller-sync_4c0cb8cecbcfb5de188255356814af5f.php',
    'payments_44a39a7c53c3a177deb043ca6edf4f55.php'
];

function executeFiles($domain, $files) {
    foreach ($files as $file) {
        $url = "https://$domain/automations/cronjobs/$file";
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($ch);
        curl_close($ch);
    }
}

while (true) {
    executeFiles($domain, $files);sleep(120);
    clearstatcache(true, '/taperrorlog.txt');
    $tapErrorLog = file_get_contents('/taperrorlog.txt');
    if (strpos($tapErrorLog, 'terminate') !== false) {
        break;
    }
}