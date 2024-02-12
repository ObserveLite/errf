<?php
session_start();
    $empId ="";
    $a="";
    if(isset($_REQUEST['id'])) 
    {
        $empId=$_REQUEST['id'];
      
    }
    if(isset($_REQUEST['a'])) 
    {
        $a=$_REQUEST['a'];
      
    }


    include_once('connect.php');
  
    $dbs = new database();
    $db=$dbs->connection();
    echo $empId;
  if ($a==''){
    mysqli_query($db,"UPDATE `form` SET `leave_status`='Accept' WHERE `empId`='$empId'");
    header ("Location: leaverequest.php"); 
  }
  else{
    mysqli_query($db,"UPDATE `form` SET `leave_status1`='Accept' WHERE `empId`='$empId'");
    header ("Location: leaverequest1.php"); 
  }
  // 
?>
