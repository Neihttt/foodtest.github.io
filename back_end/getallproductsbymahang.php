 <?php       
   //lấy tất cả các mặt hàng theo mã nhóm
       require_once("server.php");     
	    $mamh=$_GET["mamh"];
		
		$sql="select nh.manhom,nh.tennhom,nh.iconnhom, lh.malh,lh.tenlh, mh.mamh,mh.tenmh,mh.mota,mh.gia,mh.giamgia,mh.dvt,mh.hinh from nhom nh,loaihang lh, mathang mh where lh.manhom=nh.manhom and mh.malh=lh.malh and mh.mamh='".$mamh."'";
		
	    $rs=mysqli_query($conn,$sql);
		$mang=array();// var mang=[];
        while($row=mysqli_fetch_array($rs)){
			$temp["manhom"]=$row["manhom"]; //{manhom:"A"},
			$temp["tennhom"]=$row["tennhom"];//{tenhom:"Hải Sản"},
			$temp["iconnhom"]=$row["iconnhom"];//{iconnhom:"iconseafood.png"},
			$temp["malh"]=$row["malh"];
			$temp["tenlh"]=$row["tenlh"];
			$temp["mamh"]=$row["mamh"];
			$temp["tenmh"]=$row["tenmh"];
			$temp["mota"]=$row["mota"];
			$temp["gia"]=$row["gia"];
			$temp["giamgia"]=$row["giamgia"];
			$temp["dvt"]=$row["dvt"];
			$temp["hinh"]=$row["hinh"];
			array_push($mang,$temp);// [{pt1},{},{}]
		}
		$json_data["items"]=$mang;
        
        echo json_encode($json_data);
        mysqli_close($conn);
?>