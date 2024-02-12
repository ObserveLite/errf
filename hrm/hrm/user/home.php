<?php include('userheader.php'); ?>
<style>
	.dash-summary{
	display: flex;
	justify-content:space-between;
	width: 83%;
	}
	.dash-panel {
		border: 1px solid #f0efef;
		width: 48%;
		padding: 1em 1em;
		box-shadow: 2px 2px 7px #c8c8c8;
	}
</style>
<?php 
include_once('../controller/connect.php');
$dbs = new database();
$db=$dbs->connection();
$pending = 0;
$accepted = 0;
$EmpId = $_SESSION['User']['EmployeeId'];
$pending_sql = "SELECT empId FROM `form` where  `leave_status` = 'Pending'";
$pending_qry = mysqli_query($db, $pending_sql);
$pending = $pending_qry->num_rows;

$accepted_sql = "SELECT empId FROM `form` where `leave_status` = 'Accept'";
$accepted_qry = mysqli_query($db, $accepted_sql);
$accepted = $accepted_qry->num_rows;

?>
               <div class="s-12 l-10">
               <h1>Dashboard</h1><hr>
               <div class="clearfix"></div>
               </div>
               <div class="s-12 dash-summary">
                 	<div class="dash-panel">
						<h3>Pending Request</h3>
						<h4 text-align="right"><?= number_format($pending) ?></h4>
					</div>
					<div class="dash-panel">
						<h3>Accepted Request</h3>
						<h4 text-align="right"><?= number_format($accepted) ?></h4>
					</div>
               </div>
<?php include('userfooter.php'); ?>