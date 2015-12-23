<?php
include_once("./config/config.php");

$sql=mysql_query("SELECT * FROM defaultitems d left join roomtype r ON r.roomTypeId=d.roomType");
if(mysql_num_rows($sql) > 0){
	while($res= mysql_fetch_assoc($sql))
	{
		if($res['roomType'] == 1){
			$livingroom[]=$res;	
		}
		else if($res['roomType'] == 2){
			$bedroom[]=$res;	
		}
		else if($res['roomType'] == 3){
			$kitchen[]=$res;	
		}
		else if($res['roomType'] == 4){
			$storeroom[]=$res;	
		}
		else if($res['roomType'] == 5){
			$poojaroom[]=$res;	
		}
		else if($res['roomType'] == 6){
			$gym[]=$res;	
		}
		else if($res['roomType'] == 7){
			$vehicles[]=$res;	
		}
	}




	$json = array("status" => "true","msg" => "items list", "livingroom" => $livingroom,"bedroom" => $bedroom,"kitchen"=>$kitchen
		, "kitchen" => $kitchen, "storeroom" => $storeroom, "poojaroom" => $poojaroom, "gym" => $gym, "vehicles" => $vehicles);
}
else{
	$livingroom="No data Found";
}




/*
$sql=mysql_query("SELECT * FROM defaultitems where roomType=2");
if(mysql_num_rows($sql) > 0){
	while($res= mysql_fetch_assoc($sql))
	{
		$bedroom[]=$res;
	}
	//$json = array("status" => "true","msg" => "items list", "livingroom" => $livingroom);
}
else{
	$bedroom="No data Found";
}

$sql=mysql_query("SELECT * FROM defaultitems where roomType=3");
if(mysql_num_rows($sql) > 0){
	while($res= mysql_fetch_assoc($sql))
	{
		$Kitchen[]=$res;
	}
	//$json = array("status" => "true","msg" => "items list", "livingroom" => $livingroom);
}
else{
	$Kitchen="No data Found";
}

$sql=mysql_query("SELECT * FROM defaultitems where roomType=4");
if(mysql_num_rows($sql) > 0){
	while($res= mysql_fetch_assoc($sql))
	{
		$Storeroom[]=$res;
	}
	//$json = array("status" => "true","msg" => "items list", "livingroom" => $livingroom);
}
else{
	$Storeroom="No data Found";
}

$sql=mysql_query("SELECT * FROM defaultitems where roomType=5");
if(mysql_num_rows($sql) > 0){
	while($res= mysql_fetch_assoc($sql))
	{
		$poojaroom[]=$res;
	}
	//$json = array("status" => "true","msg" => "items list", "livingroom" => $livingroom);
}
else{
	$poojaroom="No data Found";
}
*/
header('Content-type: application/json');
echo json_encode($json);





?>