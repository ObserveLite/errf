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

        #upload-icon {
            font-size: 30px;
            cursor: pointer;
        }
        #file-input {
        font-size: 17px;
        opacity: 0;
       margin-top: -34px;
       width:35px;
       cursor:pointer;
        }
    
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
  $lrequest = mysqli_query($db,"SELECT * from form WHERE leave_status='' or leave_status='Pending' ORDER BY empId DESC ");
  $laccept = mysqli_query($db,"SELECT * from form WHERE leave_status='Accept' ORDER BY empId DESC");
  $ldenied = mysqli_query($db,"SELECT * from form WHERE leave_status='Reject' ORDER BY empId DESC");
  
?>
<ol class="breadcrumb" style="margin: 10px 0px ! important;">
    <li class="breadcrumb-item"><a href="Home.php">Home</a><i class="fa fa-angle-right"></i>HPC - Amvion Login</li>
</ol>


<div class="validation-form">
  <h2>Request</h2>
  
<div style="overflow-x:auto;">
  <table>
    <tr style="background: #202a29;color:white">
      <th>S.No</th>
      <th>Date</th>
      <th>Nature Of Project</th>
      <th>Brief Outline</th>
      <th>Appl Names</th>
      <th>No Of CPU</th>
      <th>Memory</th>
      <th>Operating System</th>
      <th>OS Version</th>
      <th>Remarks</th>
      <th>Supervisor</th>
      <th>Quotation</th>
      <th>View</th>
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
      <th><?php echo (isset($row['remarks']))?$row['remarks']:"";?></th>
      <th><?php echo (isset($row['leave_status']))?$row['leave_status']:"";?></th>
      <th><form action="upload.php" method="post" enctype="multipart/form-data">
      <input type="file" name="file" id="file" style="display: none;">
        <input type="hidden" name="uid" id="<?php echo (isset($row['empId']))?$row['empId']:"";?>" value="<?php echo (isset($row['empId']))?$row['empId']:"";?>" style="display: none;">
        <label for="file" style="cursor: pointer;">
            <img src="upload-icon.png" alt="Upload Icon" width="100px" height="100px">
        </label>
        <input type="submit" name="submit" value="Upload">
    </form></th>
    <th><a href="http://localhost/hrm/amvion/<?php echo (isset($row['file_path']))?$row['file_path']:"";?>">view</a></th>
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
      <th>Appl Names</th>
      <th>No Of CPU</th>
      <th>Memory</th>
      <th>Operating System</th>
      <th>OS Version</th>
      <th>Remarks</th>
      <th>Supervisor</th>
      <th>Dean</th>
      <th>Quotation</th>
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
      <th><?php echo (isset($row['remarks']))?$row['remarks']:"";?></th>
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
      <th>Appl Names</th>
      <th>No Of CPU</th>
      <th>Memory</th>
      <th>Operating System</th>
      <th>OS Version</th>
      <th>Remarks</th>
      <th>Supervisor</th>
      <th>Quotation</th>
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
      <th><?php echo (isset($row['remarks']))?$row['remarks']:"";?></th>
      <th><?php echo (isset($row['leave_status']))?$row['leave_status']:"";?></th>
      </tr>
      <?php }?> 
  </table>
</div>
    
</form>
<?php include('footer.php'); ?>


