<?php
include"connect.php";
$json=$_POST['json'];
$data=json_decode($json,true);
foreach($data as $value)
{
	$madonhang=$value['madonhang'];
	$masanpham=$value['masanpham'];
	$tensanpham+=$value['tensanpham'];
	$giasanpham+=$value['giasanpham'];
	$soluongsanpham=$value['soluongsanpham'];
	$query="INSERT INTO bills(id_customer,total,note) VALUES ('SELECT SCOPE_IDENTITY();','$giasanpham','DHANG tren DIEN THOAI')";
$Data=mysqli_query($conn,$query);
if($Data)
{
   
    $query1="INSERT INTO bill_detail(id_bill,id_product,quantity,unit_price) VALUES ('SELECT SCOPE_IDENTITY();','$masanpham','$soluongsanpham','$giasanpham')";

    $Data1=mysqli_query($conn,$query1);
   

}


}



?>