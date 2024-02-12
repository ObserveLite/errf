<?php include('userheader.php'); ?>
<?php
  include_once('../controller/connect.php');
  
  $dbs = new database();
  $db=$dbs->connection();

  $empid = $_SESSION['User']['EmployeeId'];
  $leavedetails = mysqli_query($db,"select * from form  ");
?>
            <div class="s-12 l-10">
               <h1 style="color: #858282;">HPC Application Status</h1><hr>
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
      <th>Remarks</th>
      <th>Status</th>
      </tr>
	  <?php $i=1; while($row = mysqli_fetch_assoc($leavedetails)) { //print_r($rom);exit;
			      $typeid = $row['empId'];
			      $typename = mysqli_query($db,"select * from form  ");
			      $typen = mysqli_fetch_assoc($typename); ?>
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
    

<script>
	$(".la").mouseover(function (e) 
    {
        $(this).removeClass('fa fa-refresh')
        $(this).addClass('fa fa-refresh fa-spin')
    }).mouseout(function (e)
    {
        $(this).removeClass('fa fa-refresh fa-spin')
        $(this).addClass('fa fa-refresh')
    })
</script>
<?php include('userfooter.php'); ?>