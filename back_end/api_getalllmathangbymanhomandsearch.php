<?php
/*
api dùng để lấy tất cả nhóm mặt hàng trong bảng dữ liệu nhom
*/
    require_once("server.php");
    $manhom=$_POST["manhom"];
    $search=$_POST["search"];
    $record=$_POST["record"]; //số dòng cần lấy
    $page=$_POST["page"];//số trang mà client gửi lên
	$vt=$page*$record; //tính toán lại vi trị cần lấy
    $limit='limit '.$vt.' , '.$record;
	$sql="";
    $rstotal="";
	if($manhom==""){
		$sql="select l.malh,l.tenlh,l.manhom,nh.tennhom,nh.iconnhom,mh.mamh,mh.tenmh,mh.mota,mh.gia,mh.dvt,mh.hinh,mh.giamgia from loaihang l,nhom nh,mathang mh where l.manhom=nh.manhom and mh.malh=l.malh and mh.tenmh like '%".$search."%' ".$limit;
        $rstotal=mysqli_query($conn,"select COUNT(*) as 'total' from loaihang l,nhom nh,mathang mh where l.manhom=nh.manhom and mh.malh=l.malh and mh.tenmh like '%".$search."%'");  
   
	}else{
	$sql="select l.malh,l.tenlh,l.manhom,nh.tennhom,nh.iconnhom,mh.mamh,mh.tenmh,mh.mota,mh.gia,mh.dvt,mh.hinh,mh.giamgia from loaihang l,nhom nh,mathang mh where l.manhom=nh.manhom and mh.malh=l.malh and nh.manhom='".$manhom."' and mh.tenmh like '%".$search."%' ".$limit;
    $rstotal=mysqli_query($conn,"select COUNT(*) as 'total' from loaihang l,nhom nh,mathang mh where l.manhom=nh.manhom and mh.malh=l.malh and nh.manhom='".$manhom."' and mh.tenmh like '%".$search."%'");  
       
    }
	$rs=mysqli_query($conn,$sql);//bộ resultset
    $mang=array();
	while ($rows=mysqli_fetch_array($rs)){	
      //  echo $rows["manhom"]."   ".$rows["tennhom"]."<br>";
        $usertemp['malh']=$rows["malh"];
        $usertemp['tenlh']=$rows["tenlh"];
        $usertemp['manhom']=$rows["manhom"];
        $usertemp['tennhom']=$rows["tennhom"];
		 $usertemp['iconnhom']=$rows["iconnhom"];
        $usertemp['mamh']=$rows["mamh"];
        $usertemp['tenmh']=$rows["tenmh"];
        $usertemp['mota']=$rows["mota"];
        $usertemp['gia']=$rows["gia"];
        $usertemp['dvt']=$rows["dvt"];
        $usertemp['hinh']=$rows["hinh"];
		$usertemp['giamgia']=$rows["giamgia"];
        array_push($mang,$usertemp);  
    }
    $row=mysqli_fetch_array($rstotal);
    $jsondata['total'] =(int)$row['total'];
	$jsondata['totalpage'] =ceil($row['total']/$record);
	$jsondata['page'] =(int)$page;
    $jsondata['items'] =$mang;	
    echo json_encode($jsondata); //trả về cho client 1 chuỗi json dạng mảng
    //{items:[{manhom:'HS',Tennhom:'hải sản},{manhom:'HS',Tennhom:'hải sản},{manhom:'HS',Tennhom:'hải sản}]}
    mysqli_close($conn);
?>