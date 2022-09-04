<?php
/*
api dùng để lấy tất cả nhóm mặt hàng trong bảng dữ liệu nhom
*/
    require_once("server.php");
    $sql="select manhom,tennhom,iconnhom from nhom order by manhom asc";
    $rs=mysqli_query($conn,$sql);//bộ resultset
    $mang=array();
	while ($rows=mysqli_fetch_array($rs)){	
      //  echo $rows["manhom"]."   ".$rows["tennhom"]."<br>";
        $usertemp['manhom']=$rows["manhom"];
        $usertemp['tennhom']=$rows["tennhom"];
        $usertemp['iconnhom']=$rows["iconnhom"];
        array_push($mang,$usertemp);  
    }
    $jsondata['items'] =$mang;	
    echo json_encode($jsondata); //trả về cho client 1 chuỗi json dạng mảng
    //{items:[{manhom:'HS',Tennhom:'hải sản},{manhom:'HS',Tennhom:'hải sản},{manhom:'HS',Tennhom:'hải sản}]}
    mysqli_close($conn);
?>