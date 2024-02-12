<?php include('header.php');
?>
<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>
<?php
  include_once('controller/connect.php');
  
  $dbs = new database();
  $db=$dbs->connection();
  $Statusl = "Pending";
  $leavedetails = mysqli_query($db,"select * from leavedetails where LeaveStatus='$Statusl'");
  if(isset($_GET['id']))
  {
    $acceptid = $_GET['id'];
    $accept = "Accept";
    mysqli_query($db,"update leavedetails set LeaveStatus='$accept' where Detail_Id='$acceptid'");
    echo "<script>window.location='leaverequest.php';</script>";
  }
  else if(isset($_GET['msg']))
  {
    $deniedid = $_GET['msg'];
    $denied = "Denied";
    mysqli_query($db,"update leavedetails set LeaveStatus='$denied' where Detail_Id='$deniedid'");
    echo "<script>window.location='leaverequest.php';</script>";
  }
  $lrequest = mysqli_query($db,"SELECT * from form WHERE leave_status='Accept' and leave_status1='Pending'ORDER BY empId DESC");
  $laccept = mysqli_query($db,"SELECT * from form WHERE leave_status='Accept' and leave_status1='Accept'ORDER BY empId DESC");
  $ldenied = mysqli_query($db,"SELECT * from form WHERE leave_status='Accept' and leave_status1='Reject'ORDER BY empId DESC");
  
?>
<ol class="breadcrumb" style="margin: 10px 0px ! important;">
    <li class="breadcrumb-item"><a href="Home.php">Home</a><i class="fa fa-angle-right"></i>HPC - Request Status</li>
</ol>
<form method="POST">
<div class="validation-form">
  <h2>Request</h2>
  
<div style="overflow-x:auto;">
  <table>
    <tr style="background: #202a29;color:white">
      <th>S.No</th>
      <th>Date</th>
      <th>Nature Of Project</th>
      <th>Brief Outline</th>
      <th>Apps To Be Run</th>
      <th>No Of CPU</th>
      <th>Memory</th>
      <th>Operating System</th>
      <th>OS Version</th>
      <th>Supervisor</th>
      <th>Dean</th>
      </tr>
      <?php $i=1; while($row = mysqli_fetch_assoc($lrequest)) {
   
   ?>
      <tr>
      <th><?php $i=$i; echo $i; $i++;?></th>
      <th><?php echo (isset($row['currentDate']))?$row['currentDate']:"";?></th>
      <th><?php echo (isset($row['nature_of_project']))?$row['nature_of_project']:"";?></th>
      <th><?php echo ucfirst((isset($row['brief']))?$row['brief']:"");?></th>
      <th><?php echo ucfirst((isset($row['appl']))?$row['appl']:"");?></th>
      <th><?php echo (isset($row['no_cpu']))?$row['no_cpu']:"";?></th>
      <th><?php echo (isset($row['memory_req']))?$row['memory_req']:"";?></th>
      <th><?php echo ucfirst((isset($row['os']))?$row['os']:"");?></th>
      <th><?php echo (isset($row['os_version']))?$row['os_version']:"";?></th>
      <th><?php echo (isset($row['leave_status']))?$row['leave_status']:"";?></th>
      <th class="col-md-1" style="text-align: right;"><a href="approve.php?id=<?php echo $row['empId'];?>&a=1" title="Accept"><i class="fa fa-check " aria-hidden="true"></i></a>&nbsp;&nbsp;<a href="reject.php?msg=<?php echo $row['empId'];?>&a=1" title="Denied"><i class="fa fa-times" style="color: Red;" aria-hidden="true"></i></a>
      <hr style="margin-bottom: 0px;margin-top: 0px;border-top: 1px solid #eee;"></th>
      </tr>
      <?php }?> 
  </table> 
</div></div> 
 
<div class="validation-form">
  <h2>Accepted</h2>
  <div style="overflow-x:auto;">
  <table>
    <tr style="background: #202a29;color:white">
      <th>S.No</th>
      <th>Date</th>
      <th>Nature Of Project</th>
      <th>Brief Outline</th>
      <th>Apps To Be Run</th>
      <th>No Of CPU</th>
      <th>Memory</th>
      <th>Operating System</th>
      <th>OS Version</th>
      <th>Supervisor</th>
      <th>Dean</th>
      </tr>
      <?php $i=1; while($row = mysqli_fetch_assoc($laccept)) {
   
   ?>
      <tr>
      <th><?php $i=$i; echo $i; $i++;?></th>
      <th><?php echo (isset($row['currentDate']))?$row['currentDate']:"";?></th>
      <th><?php echo (isset($row['nature_of_project']))?$row['nature_of_project']:"";?></th>
      <th><?php echo ucfirst((isset($row['brief']))?$row['brief']:"");?></th>
      <th><?php echo ucfirst((isset($row['appl']))?$row['appl']:"");?></th>
      <th><?php echo (isset($row['no_cpu']))?$row['no_cpu']:"";?></th>
      <th><?php echo (isset($row['memory_req']))?$row['memory_req']:"";?></th>
      <th><?php echo ucfirst((isset($row['os']))?$row['os']:"");?></th>
      <th><?php echo (isset($row['os_version']))?$row['os_version']:"";?></th>
      <th><?php echo (isset($row['leave_status']))?$row['leave_status']:"";?></th>
      <th><?php echo (isset($row['leave_status1']))?$row['leave_status1']:"";?></th>
      </tr>
      <?php }?> 
  </table>
</div></div>
  

<div class="validation-form">
  <h2>Denied</h2>
 
  <div style="overflow-x:auto;">
  <table>
    <tr style="background: #202a29;color:white">
      <th>S.No</th>
      <th>Date</th>
      <th>Nature Of Project</th>
      <th>Brief Outline</th>
      <th>Apps To Be Run</th>
      <th>No Of CPU</th>
      <th>Memory</th>
      <th>Operating System</th>
      <th>OS Version</th>
      <th>Supervisor</th>
      <th>Dean</th>
      </tr>
      <?php $i=1; while($row = mysqli_fetch_assoc($ldenied)) {
   
   ?>
      <tr>
      <th><?php $i=$i; echo $i; $i++;?></th>
      <th><?php echo (isset($row['currentDate']))?$row['currentDate']:"";?></th>
      <th><?php echo (isset($row['nature_of_project']))?$row['nature_of_project']:"";?></th>
      <th><?php echo ucfirst((isset($row['brief']))?$row['brief']:"");?></th>
      <th><?php echo ucfirst((isset($row['appl']))?$row['appl']:"");?></th>
      <th><?php echo (isset($row['no_cpu']))?$row['no_cpu']:"";?></th>
      <th><?php echo (isset($row['memory_req']))?$row['memory_req']:"";?></th>
      <th><?php echo ucfirst((isset($row['os']))?$row['os']:"");?></th>
      <th><?php echo (isset($row['os_version']))?$row['os_version']:"";?></th>
      <th><?php echo (isset($row['leave_status']))?$row['leave_status']:"";?></th>
      <th><?php echo (isset($row['leave_status1']))?$row['leave_status1']:"";?></th>
      </tr>
      <?php }?> 
  </table>
</div>
    
</form>
<?php include('footer.php'); ?>


