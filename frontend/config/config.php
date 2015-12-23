<?php
$host="localhost";
$username="root";
$password="";
$connect = mysql_connect("$host","$username","$password");
mysql_select_db("packersandmovers",$connect);

$Api_Key = "B234i3@24Z433N423E2E34DS";

function getServUrl()
{
    return $_SERVER['SERVER_NAME']."/"."svn_bizneeds"."/";
}
?>