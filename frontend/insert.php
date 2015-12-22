<?php
include_once("config/config.php");
//Other items
if(isset($_REQUEST['submit']))
{
	$oitemname = $_REQUEST['oitemname'];
	$oitemqty = $_REQUEST['oitemqty'];
	$oitemweight = $_REQUEST['oitemweight'];
	$oitemdelicate = $_REQUEST['oitemdelicate'];
	$oitemtype = $_REQUEST['oitemtype'];
	$oitemsize = $_REQUEST['oitemsize'];
	$id="";
	for($i=0; $i<count($oitemname);$i++){
	mysql_query("INSERT INTO otheritems(otherItemName,otherItemQuantity,otherItemWeight,otherItemDelicate,otherItemType,otherItemSize) VALUES('".$oitemname[$i]."'".','."'".$oitemqty[$i]."'".','."'".$oitemweight[$i]."'".','."'".$oitemdelicate[$i]."'".','."'".$oitemtype[$i]."'".','."'".$oitemsize[$i]."') ");
	//echo mysql_insert_id().",";
	$id = $id.",". mysql_insert_id();
	} 
	$oid = substr($id, 1);

	//Get the Items Quantity
	foreach($_REQUEST['itemsquantity'] as $key => $itemquantity )
	{
		if($itemquantity > 0)
		{
			$quantity[]=$itemquantity;
			//echo $key.'=>'.$itemquantity."<br>";
			$search_array_id[] = $key;
		}
	}
	$search_array=array_flip($search_array_id);

	//Get items id
	foreach($_REQUEST['itemid'] as $key => $value )
	{
		if (array_key_exists($key, $search_array))
		{
			$itemId[]=$value;
			//echo $key.'=>'.$value."<br>";
		}
	}

	//Get items weight
	echo "<br>";
	foreach($_REQUEST['itemweight'] as $key => $itemweight )
	{
		if (array_key_exists($key, $search_array)) 
		{
			$weight[]=$itemweight;
			//echo $key.'=>'.$itemweight."<br>";
		}
	}

	//Get items weight
	foreach($_REQUEST['itemsize'] as $key => $itemsize )
	{
		if (array_key_exists($key, $search_array))
		{
			$size[]=$itemsize;
			//echo $key.'=>'.$itemsize."<br>";
		}
	}
	
	//Get items delicate
	echo "<br>";
	if(isset($_REQUEST['delicate']))
	{
		foreach($_REQUEST['delicate'] as $key => $itdelicate )
		{
			$delicate[]=$itdelicate;
			//echo $key.'=>'.$itdelicate."<br>";
		}
	}	
	// insert the items into database
	$id="";
	for($i=0; $i<count($quantity);$i++)
	{
		$result=false;
		if(isset($_REQUEST['delicate']))
		{
		  	if(in_array($itemId[$i], $delicate)){
		    	$result = true;
		    }
		  	if ($result)
			{
			    $delic = 1;
			}
			else
			{
			    $delic = 0;
			}
		}
		else{ $delic=0; }	
		mysql_query("INSERT INTO currentitems(itemId,itemWeight,itemQuantity,itemsize,delicate) VALUES('".$itemId[$i]."'".','."'".$weight[$i]."'".','."'".$quantity[$i]."'".','."'".$size[$i]."'".','."'".$delic."') ");
		$id = $id.",". mysql_insert_id();
	} 
	$cid = substr($id, 1);
	

	//insert current Address 
	$caddress = $_REQUEST['caddress'];
	$cNoofbedrms = $_REQUEST['cNoofbedrms'];
	$chtype = $_REQUEST['chtype'];
	$cfloor = $_REQUEST['cfloor'];
	$celevator = $_REQUEST['celevator'];
	if(isset($_REQUEST['cpacking'])){
		if($_REQUEST['cpacking']=='yes')
		{$cpacking = 1;	}
		else{$cpacking = 0;}
	}
	else{
		$cpacking=0;
	}
	if(isset($_REQUEST['cloading'])){
		if($_REQUEST['cloading']=='yes')
		{$cloading = 1;}
		else{$cloading = 0;}	
	}
	else{
		$cloading=0;
	}
	mysql_query("INSERT INTO currentaddress(currentAddress,numberOfBedRooms,houseType,floorNumber,elevator,packing,loading,userId)
		VALUES('".$caddress."','".$cNoofbedrms."','".$chtype."','".$cfloor."','".$celevator."','".$cpacking."','".$cloading."','1')");
	
    $caddrId= mysql_insert_id();

	//insert destination address
	$daddress = $_REQUEST['daddress'];
	$dnoofbedrm = $_REQUEST['dNoofbedrms'];
	$dhtype = $_REQUEST['dhtype'];
	$dfloor = $_REQUEST['dfloor'];
	$delevator = $_REQUEST['delevator'];
	if(isset($_REQUEST['unpacking'])){
		if($_REQUEST['unpacking']=='yes')
		{$unpacking = 1;	}
		else{$unpacking = 0;}
	}
	else{
		$unpacking=0;
	}
	if(isset($_REQUEST['unloading'])){
		if($_REQUEST['unloading']=='yes')
		{$unloading = 1;}
		else{$unloading = 0;}	
	}
	else{
		$unloading=0;
	}
	mysql_query("INSERT INTO destinationaddress(destinationAddress,numberOfBedRooms,destinationHouseType,floorNumber,elevator,unpacking,unloading,userId)
		VALUES('".$daddress."','".$dnoofbedrm."','".$dhtype."','".$dfloor."','".$delevator."','".$unpacking."','".$unloading."','1')");
	$daddrId=  mysql_insert_id();
	//echo "$caddrId".','.$daddrId;
	if(isset($_REQUEST['date'])){
		$date = $_REQUEST['date'];
		$splitTimeStamp = explode(" ",$date);
		$date = $splitTimeStamp[0];
		$time = $splitTimeStamp[1];
		
		mysql_query("INSERT INTO bookingdateandtime(bookingTime,shipingDate,currentAddressId,destinationAddressId,
			currentItemsId,otherItemsId,userId) Values('".$time."','".$date."','".$caddrId."','".$daddrId."','".$cid."','".$oid."','1')");
		if(mysql_insert_id()>0){
			echo "successfully inserted";
		}


	}

//Get other items 
}			   
?>