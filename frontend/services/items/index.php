<?php
include_once('../congig/confi.php');

if(!empty($_GET['apikey']))
{
    if($_GET['apikey']!=$Api_Key){
        $jsondata = array("status" => 0, "msg" => "Unauthorised Access. Invalid Signature");
        publishOutput($jsondata);
        return;
    }
} else {
    $jsondata = array("status" => 0, "msg" => "Unauthorised Access. Invalid Signature");
    publishOutput($jsondata);
    return;
}

if($_SERVER['REQUEST_METHOD'] == "GET" && !empty($_GET['method']))
{
    	$request_parts = explode('/', $_GET['method']);
		$method = $request_parts[1];
        switch ($method) 
        {
            case "addCompany":
                $jsondata = addCompany();
            break;
            case "getCompany":
                $jsondata = getCompany();
            break;
            case "editCompany":
                $jsondata = editCompany();
            break; 
            case "updateCompany":
                $jsondata = updateCompany();
            break;
            case "deleteCompany":
                $jsondata = deleteCompany();
            break;
                      
              
        }
    publishOutput($jsondata);
}else 
{
	$jsonoutput = array("status" => 0, "msg" => "Unauthorised Access!");
    publishOutput($jsonoutput);
}

///// All Calls ////////////////////////////////////////////////////////////
function addCompany()
{
 echo "hi"; exit;
    $companyname= isset($_GET['companyname']) ? mysql_real_escape_string($_GET['companyname']) : "";
    $address= isset($_GET['address']) ? mysql_real_escape_string($_GET['address']) : "";
    $phone= isset($_GET['phone']) ? mysql_real_escape_string($_GET['phone']) : "";
    $website= isset($_GET['website']) ? mysql_real_escape_string($_GET['website']) : "";
    $industryid= isset($_GET['industryid']) ? mysql_real_escape_string($_GET['industryid']) : "";
    $companytypeid= isset($_GET['companytypeid']) ? mysql_real_escape_string($_GET['companytypeid']) : "";
    $sectorid= isset($_GET['sectorid']) ? mysql_real_escape_string($_GET['sectorid']) : "";
    $countryid= isset($_GET['countryid']) ? mysql_real_escape_string($_GET['countryid']) : "";
    $stateid= isset($_GET['stateid']) ? mysql_real_escape_string($_GET['stateid']) : "";
    $cityid= isset($_GET['cityid']) ? mysql_real_escape_string($_GET['cityid']) : "";
    $noofemployeesid= isset($_GET['noofemployeesid']) ? mysql_real_escape_string($_GET['noofemployeesid']) : "";
    $turnoverid= isset($_GET['turnoverid']) ? mysql_real_escape_string($_GET['turnoverid']) : "";
    $keyexecutivesid= isset($_GET['keyexecutivesid']) ? mysql_real_escape_string($_GET['keyexecutivesid']) : "";
    $groupid= isset($_GET['groupid']) ? mysql_real_escape_string($_GET['groupid']) : "";
    $companyentityid= isset($_GET['companyentityid']) ? mysql_real_escape_string($_GET['companyentityid']) : "";
    $productid= isset($_GET['productid']) ? mysql_real_escape_string($_GET['productid']) : "";
    if(!empty($companyname) && !empty($address) && !empty($phone) && !empty($website) && !empty($industryid) && !empty($companytypeid) && !empty($sectorid)  && !empty($countryid) && !empty($stateid) && !empty($cityid) && !empty($noofemployeesid) && !empty($turnoverid) && !empty($keyexecutivesid) && !empty($groupid) && !empty($companyentityid) && !empty($productid))
    {  
         $query = mysql_query("SELECT * FROM `company`  WHERE  companyname = '".$companyname."'");
        if(mysql_num_rows($query) == 0)
        {
             mysql_query("INSERT INTO `company`(`companyname`, `address`, `phone`, `website`, `industryid`, `companytypeid`, `sectorid`, `countryid`, `stateid`, `cityid`, `noofemployeesid`, `turnoverid`, `keyexecutivesid`, `groupid`, `companyentityid`, `productid`, `createddate`) 
             VALUES ('".$companyname."','".$address."','".$phone."','".$website."','".$industryid."','".$companytypeid."','".$sectorid."','".$countryid."','".$stateid."','".$cityid."','".$noofemployeesid."','".$turnoverid."','".$keyexecutivesid."','".$groupid."','".$companyentityid."','".$productid."',now())");
             $json = array("status" => "true", "msg" => "Company Added  Successfully");  
        
        }
        else
        {
              $json = array("status" => "false", "msg" => "Company Name Already Exists");
        }       
    }
    else
    {
        
        $json = array("status" => "false", "msg" => "Required fields not filled");
    }    
    
    @mysql_close($conn);
    return $json;
}
function getCompany()
{
    
        $qur = mysql_query("SELECT * FROM `company` ORDER BY companyname");
        $result =array();
        if(mysql_num_rows($qur) > 0)
        {
            while($r = mysql_fetch_assoc($qur))
            {       
                             
                $result[] = $r;
            }
            $json = array("status" => "true", "msg" => "Company List","data" => $result);
        }
        else
        {
            $json = array("status" => "false", "msg" => "Invalid Company List");
        }
    
    @mysql_close($conn);
    return $json;
}

function editCompany()
{
    $companyid= isset($_GET['companyid']) ? mysql_real_escape_string($_GET['companyid']) : "";
    if(!empty($companyid))
    {
        $qur = mysql_query("SELECT * FROM `company` WHERE  companyid = '".$companyid."'");
        $result =array();
        if(mysql_num_rows($qur) > 0)
        {
            while($r = mysql_fetch_assoc($qur))
            {       
                             
                $result[] = $r;
            }
            $json = array("status" => "true", "msg" => "Company List","data" => $result);
        }
        else
        {
            $json = array("status" => "false", "msg" => "Invalid Company Id");
        }
    }
    else
    {
        
        $json = array("status" => "false", "msg" => "Required fields not filled");
    }      
    
    @mysql_close($conn);
    return $json;
}

function updateCompany()
{
    $companyid= isset($_GET['companyid']) ? mysql_real_escape_string($_GET['companyid']) : "";
    $companyname= isset($_GET['companyname']) ? mysql_real_escape_string($_GET['companyname']) : "";
    $address= isset($_GET['address']) ? mysql_real_escape_string($_GET['address']) : "";
    $phone= isset($_GET['phone']) ? mysql_real_escape_string($_GET['phone']) : "";
    $website= isset($_GET['website']) ? mysql_real_escape_string($_GET['website']) : "";
    $industryid= isset($_GET['industryid']) ? mysql_real_escape_string($_GET['industryid']) : "";
    $companytypeid= isset($_GET['companytypeid']) ? mysql_real_escape_string($_GET['companytypeid']) : "";
    $sectorid= isset($_GET['sectorid']) ? mysql_real_escape_string($_GET['sectorid']) : "";
    $countryid= isset($_GET['countryid']) ? mysql_real_escape_string($_GET['countryid']) : "";
    $stateid= isset($_GET['stateid']) ? mysql_real_escape_string($_GET['stateid']) : "";
    $cityid= isset($_GET['cityid']) ? mysql_real_escape_string($_GET['cityid']) : "";
    $noofemployeesid= isset($_GET['noofemployeesid']) ? mysql_real_escape_string($_GET['noofemployeesid']) : "";
    $turnoverid= isset($_GET['turnoverid']) ? mysql_real_escape_string($_GET['turnoverid']) : "";
    $keyexecutivesid= isset($_GET['keyexecutivesid']) ? mysql_real_escape_string($_GET['keyexecutivesid']) : "";
    $groupid= isset($_GET['groupid']) ? mysql_real_escape_string($_GET['groupid']) : "";
    $companyentityid= isset($_GET['companyentityid']) ? mysql_real_escape_string($_GET['companyentityid']) : "";
    $productid= isset($_GET['productid']) ? mysql_real_escape_string($_GET['productid']) : "";
    if(!empty($companyid) && !empty($companyname) && !empty($address) && !empty($phone) && !empty($website) && !empty($industryid) && !empty($companytypeid) && !empty($sectorid)  && !empty($countryid) && !empty($stateid) && !empty($cityid) && !empty($noofemployeesid) && !empty($turnoverid) && !empty($keyexecutivesid) && !empty($groupid) && !empty($companyentityid) && !empty($productid))
    {
        $qur = mysql_query("SELECT * FROM `company` WHERE  companyid = '".$companyid."'");
        $result =array();
        if(mysql_num_rows($qur) > 0)
        {
            $updatequr = mysql_query("UPDATE `company` SET `companyname`='".$companyname."',`address`='".$address."',`phone`='".$phone."',`website`='".$website."',`industryid`='".$industryid."',`companytypeid`='".$companytypeid."',`sectorid`='".$sectorid."',`countryid`='".$countryid."',`stateid`='".$stateid."',`cityid`='".$cityid."',`noofemployeesid`='".$noofemployeesid."',`turnoverid`='".$turnoverid."',`keyexecutivesid`='".$keyexecutivesid."',`groupid`='".$groupid."',`companyentityid`='".$companyentityid."',`productid`='".$productid."' WHERE companyid='".$companyid."'") or die(mysql_error());
            $json = array("status" => "true","msg" => "updated successfully");
        }
        else
        {
            $json = array("status" => "false", "msg" => "Invalid Company Id");
        }
    }
    else
    {
        
        $json = array("status" => "false", "msg" => "Required fields not filled");
    }      
    
    @mysql_close($conn);
    return $json;
}

function deleteCompany()
{
    $companyid= isset($_GET['companyid']) ? mysql_real_escape_string($_GET['companyid']) : "";
    if(!empty($companyid))
    {
            $del = mysql_query("SELECT companyid from `company` where companyid=$companyid");
            if(mysql_num_rows($del)>0)
            {
                $delid = mysql_query("DELETE FROM `company` WHERE `companyid`=$companyid");
                $json = array("status" => "true", "msg" => "Company Deleted  Sucessfully");
            }
            else
            {
                $json = array("status" => "false", "msg" => "Invalid Company Id");
            } 
    }
    else
    {
        $json = array("status" => "false", "msg" => "Required fields not filled");
    }
    @mysql_close($conn);
    return $json;    
}


////// Output Function ////////////

function publishOutput($JData)
{
    header('Content-type: application/json');
    echo json_encode($JData);
}

///Services:

//addCompany=>1.http://localhost/svn_bizneeds/services/company/B234i3@24Z433N423E2E34DS/addCompany?companyname=neolabz123&address=hyd&phone=88885&website=www.neo,com&industryid=1&companytypeid=1&sectorid=1&countryid=1&stateid=1&cityid=1&noofemployeesid=1&turnoverid=1&keyexecutivesid=1&groupid=1&companyentityid=1&productid=1

//getCompany=>2.http://localhost/svn_bizneeds/services/company/B234i3@24Z433N423E2E34DS/getCompany

//editCompany=>3.http://localhost/svn_bizneeds/services/company/B234i3@24Z433N423E2E34DS/editCompany?companyid=3

//updateCompany=>4.http://localhost/svn_bizneeds/services/company/B234i3@24Z433N423E2E34DS/updateCompany?companyname=neolabz1234&address=hyd&phone=88885&website=www.neo,com&industryid=1&companytypeid=1&sectorid=1&countryid=1&stateid=1&cityid=1&noofemployeesid=1&turnoverid=1&keyexecutivesid=1&groupid=1&companyentityid=1&productid=1&companyid=3

//deleteCompany=>5.http://localhost/svn_bizneeds/services/company/B234i3@24Z433N423E2E34DS/deleteCompany?companyid=4

?>