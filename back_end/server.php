<?php
$hostname = '103.48.190.69';//đia chi IP tỉnh javcript var hostname='localhost', String hostname='localhost'
$username = 'nha'; //username cua he quan tri
$password = 'egevymu9y';//mat khau
$dbname = "zadmin_qlthucphamtest";
$port=3306; //MYSQL:3306, mariadb:3307
$conn = mysqli_connect($hostname, $username, $password,$dbname,$port);

if (!$conn) {
 die('Không thể kết nối: ' . mysqli_error($conn));
 exit();
}
//echo 'Kết nối thành công';
mysqli_set_charset($conn,"utf8");

?>
