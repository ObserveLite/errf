<?php include('userheader.php'); ?>
<?php
  include_once('../controller/connect.php');
  
  $dbs = new database();
  $db=$dbs->connection();

  $empid = $_SESSION['User']['EmployeeId'];
  
  if(isset($_POST['Apply']))
  {
    $currentDate = $_POST['currentDate'];
    $nature_of_project = $_POST['nature_of_project'];
    $brief = $_POST['brief'];
    $appl = $_POST['appl'];
    $no_cpu = $_POST['no_cpu'];
    $memory_req = $_POST['memory_req'];
    $os = $_POST['os'];
    $os_version = $_POST['os_version'];
    $remarks = $_POST['remarks'];

    $currentDate = date("Y-m-d");

   

    mysqli_query($db,"insert into form values('','$currentDate','$nature_of_project','$brief','$appl','$no_cpu','$memory_req','$os','$os_version','$remarks','Pending','Pending')");
    echo "<script>window.location='applyleave.php';</script>";
  }
?>
               <div class="s-12 l-10">
               <h1>Request Application</h1><hr>
               <div class="clearfix"></div>
               </div>
               <div class="s-12 l-6">
                 	<form action="" method="post">
					    
					    <label for="lname">Nature of the Project</label>
					    <input type="text" id="nature" name="nature_of_project" placeholder=" " title=" " required="" autocomplete="off">
              <label for="lname">Briefly Outline of the Project</label>
					    <input type="text" id="brief" name="brief" placeholder=" " title=" " required="" autocomplete="off">
              <label for="lname">Applications to be run</label>
					    <input type="text" id="app" name="appl" placeholder=" " title=" " required="" autocomplete="off">
              <label for="lname">No. of CPU Required</label>
					    <input type="text" id="no_cpu" name="no_cpu" placeholder=" " title=" " required="" autocomplete="off">
              <label for="lname">Memory Required</label>
					    <input type="text" id="memory_req" name="memory_req" placeholder=" " title=" " required="" autocomplete="off">
              <label for="lname">Operating System</label>
					    <input type="text" id="os" name="os" placeholder=" " title=" " required="" autocomplete="off">
              <label for="lname">Version of Operating System</label>
					    <input type="text" id="os_version" name="os_version" placeholder=" " title=" " required="" autocomplete="off">
              <label for="lname">Remarks</label>
					    <input type="text" id="remarks" name="remarks" placeholder=" " title=" " required="" autocomplete="off">
              



					    
					   <br><br>
					    
					   <button onclick="alrt()" style="width:30%;margin-left:auto;margin-right:auto;display:block;"> <input type="submit" name="Apply" title="Submit" value="Submit"> </button> 
				  	</form>
               </div>
               <script>
                function alrt(){
                  alert("Your Form Submitted !");
                }
                </script>

<?php include('userfooter.php'); ?>

