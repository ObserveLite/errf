<?php include('header.php'); ?>
<?php 
  
  $CountryId = 0;
  $StateId = 0;
  $CityId = 0;

  include_once('controller/connect.php');
  $dbs = new database();
  $db=$dbs->connection();

  //$cityn = mysqli_query($db,"select * from city ORDER BY Name");
  //$staten = mysqli_query($db,"select * from state  ORDER BY Name");
  $countryn = mysqli_query($db,"select * from country  ORDER BY Name");
  $gendern = mysqli_query($db,"select * from gender  ORDER BY Name");
  $rolen = mysqli_query($db,"select * from role  ORDER BY Name");
  $statusn = mysqli_query($db,"select * from status  ORDER BY Name");
  $maritaln = mysqli_query($db,"select * from maritalstatus  ORDER BY Name");
  $positionn = mysqli_query($db,"select * from position  ORDER BY Name");

  $result ="";
  $id="";
  if(isset($_GET['msg']))
  {
    $result=$_GET['msg'];
  }
  else if(isset($_GET['id']))
  {
    $id=$_GET['id'];
  }
  else if (isset($_GET['empid'])) 
  {
    $empid = $_GET['empid'];
    $editempid = mysqli_query($db,"SELECT e.*,ss.StateId,cc.CountryId FROM employee e join city c on e.CityId=c.CityId join state ss on c.StateId=ss.StateId join country cc on cc.CountryId=ss.CountryId where EmpId='$empid'");
    $editemp = mysqli_fetch_assoc($editempid);
    // $CountryId = $editemp["CountryId"];
    // $StateId = $editemp['StateId'];
    // $CityId = $editemp['CityId'];
  }  
?>
<ol class="breadcrumb" style="margin: 10px 0px ! important;">
    <li class="breadcrumb-item"><a href="Home.php">Home</a><i class="fa fa-angle-right"></i>Employee<i class="fa fa-angle-right"></i> Employee Add</li>
</ol>
<!--grid-->
 	<div class="validation-system" style="margin-top: 0;">
 		
 		<div class="validation-form">
 	<!---->
        <form method="POST" action="controller/employee.php?empedit=<?php echo isset($_GET['empid']) ? $_GET['empid'] : ''; ?>" enctype="multipart/form-data">
        <?php 
          if($result)
          {
            echo '<h4 style="color: #FF0000;">'.$result.'</h4>';
          }
          else
          {
            echo '<h4 style="color: #008000;">'.$id.'</h4>'; 
          }
        ?>
        <div class="vali-form-group">
          <div class="col-md-4 control-label">
              <label class="control-label">Employee ID*</label>
              <div class="input-group">             
                  <span class="input-group-addon">
              <i class="fa fa-user" aria-hidden="true"></i>
              </span>
              <input type="text" name="empid" title="Employee ID" value="<?php echo(isset($editemp["EmployeeId"]))?$editemp["EmployeeId"]:""; ?>" class="form-control" placeholder="Employee ID" required="">
              </div>
            </div>
            

            <!-- <div class="col-md-4 control-label">
              <label class="control-label">Profile Image*</label>
              <div class="input-group">             
                  <span class="input-group-addon">
              <i class="fa fa-picture-o" aria-hidden="true"></i>
              </span>
              <input type="file" name="pfimg" title="Profile Image" class="form-control" name="fileupload"  >
              </div>
            </div> -->

            <div class="col-md-4 control-label">
              <label class="control-label">Gender*</label>
              <div class="input-group">             
                  <span class="input-group-addon">
              <i class="fa fa-male" aria-hidden="true"></i>
              </span>
              <select name="gender" title="Gender" required="" style="padding: 5px 5px; text-transform: capitalize;"">
                <option value="">-- Select Gender --</option>
                <?php while($rw = mysqli_fetch_assoc($gendern)){ ?> 
                <option value="<?php echo $rw["GenderId"]; ?>" <?php if(isset($editemp["Gender"]) && $editemp["Gender"]==$rw["GenderId"]){ echo "Selected"; }?>> <?php echo $rw["Name"]; ?> </option>
                <?php } ?>
              </select>
              </div>
            </div>
            </div>
            <div class="clearfix"> </div>

         	<div class="vali-form-group">
            <div class="col-md-4 control-label">
              <label class="control-label">First Name*</label>
              <div class="input-group">             
                  <span class="input-group-addon">
              <i class="fa fa-user" aria-hidden="true"></i>
              </span>
              <input type="text" name="fname" title="First Name" value="<?php echo(isset($editemp["FirstName"]))?$editemp["FirstName"]:""; ?>" class="form-control" placeholder="First Name" required="">
              </div>
            </div>

            <div class="col-md-4 control-label">
              <label class="control-label">Last Name*</label>
              <div class="input-group">             
                  <span class="input-group-addon">
              <i class="fa fa-user" aria-hidden="true"></i>
              </span>
              <input type="text" name="lname" title="Last Name" value="<?php echo(isset($editemp["LastName"]))?$editemp["LastName"]:""; ?>" class="form-control" placeholder="Last Name" required="">
              </div>
            </div>
              <div class="clearfix"> </div>
            </div>
            
            </div>
            <div class="clearfix"> </div>


            <div class="col-md-3 control-label">
              <label class="control-label">Role*</label>
              <div class="input-group">             
                  <span class="input-group-addon">
              <i class="fa fa-user" aria-hidden="true"></i>
              </span>
              <select name="role" required="" title="Role" style="text-transform: capitalize;"  >
                <option value="">-- Select Role --</option>
                <?php while($rw = mysqli_fetch_assoc($rolen)){ ?> 
                  <option value="<?php echo $rw["RoleId"]; ?>" <?php if(isset($editemp["RoleId"]) && $editemp["RoleId"]==$rw["RoleId"]){ echo "Selected"; }?>> <?php echo $rw["Name"]; ?> </option>
                <?php } ?>
              </select>
              </div>
            </div>
            <div class="clearfix"> </div>
            </div>

            <div class="col-md-3 control-label">
              <label class="control-label">Email*</label>
              <div class="input-group">             
                  <span class="input-group-addon">
              <i class="fa fa-envelope" aria-hidden="true"></i>
              </span>
              <input type="email" name="email" title="Email" value="<?php echo(isset($editemp["Email"]))?$editemp["Email"]:""; ?>" class="form-control" placeholder="Email Address" required="">
              </div>
            </div>
            
            <div class="col-md-3 control-label">
              <label class="control-label">Password*</label>
              <div class="input-group">             
                  <span class="input-group-addon">
              <i class="fa fa-pencil" aria-hidden="true"></i>
              </span>
              <input type="password" id="Psw" title="Password" value="<?php echo(isset($editemp["Password"]))?$editemp["Password"]:""; ?>" name="password" placeholder="Password " class="form-control" required="">
              <span class="input-group-addon">
              <a><i class='fa fa-eye' aria-hidden='false' onclick="passwordeyes()"></i></a>
              </span>
              </div>              
            </div>
          
              <div class="clearfix"> </div>
          </div>
            <div class="col-md-12 form-group">
              <button type="submit" name="submit" class="btn btn-primary">Submit</button>
              <button type="reset" class="btn btn-default">Reset</button>
              <input type="text" name="imagefilename" hidden="" value="<?php echo(isset($editemp['ImageName']))?$editemp['ImageName']:''; ?>">
            </div>
          <div class="clearfix"> </div>
        </form>
 	<!---->
 </div>
</div>
<script>
function passwordeyes() {
    var x = document.getElementById("Psw").type;
    if(x=="password")
      document.getElementById("Psw").type="text";
    else
      document.getElementById("Psw").type="password";
}

</script>
<script>
var OneStepBack;
function nmac(val,e){
  if(e.keyCode!=8)
  {
    if(val.length==2)
      document.getElementById("mac").value = val+"-";
    if(val.length==5)
      document.getElementById("mac").value = val+"-";
    if(val.length==8)
      document.getElementById("mac").value = val+"-";
      if(val.length==11)
      document.getElementById("mac").value = val+"-";
      if(val.length==14)
      {
        document.getElementById("mac").value = val+"-";   
      }
  }
}

function nmac1(val,e){
if(e.keyCode==32){
return false;
}

  if(e.keyCode!=8){

    if(val.length==2)
      document.getElementById("mac").value = val+"-";
    if(val.length==5)
      document.getElementById("mac").value = val+"-";
    if(val.length==8)
      document.getElementById("mac").value = val+"-";
      if(val.length==11)
      document.getElementById("mac").value = val+"-";
      if(val.length==14){
      document.getElementById("mac").value = val+"-";   
    }

    if(val.length==17){
        return false;
    }
  } 
}
</script>
<script>
  contrychange();
  function contrychange()
  {
    var selectedstateid = "<?php echo $StateId; ?>";
    var selectedstateid = parseInt(selectedstateid);

    var selectedcountry = $('#contryid').val();
    $.get("controller/getstatecity.php?Type=s&ci="+selectedcountry+"&ss="+selectedstateid,function(data,status){
        $("#stateid").html(data);
    });
    statechange(selectedstateid);
  }
  function statechange(si)
  {

    var selectedstate = $('#stateid').val();
    if(si!=undefined)
      selectedstate=si;

    var selectedcityid = "<?php echo $CityId; ?>";
    selectedcityid = parseInt(selectedcityid);
    
    $.get("controller/getstatecity.php?Type=c&si="+selectedstate+"&sc="+selectedcityid,function(data,status){
      $("#cityid").html(data);
    });
  }
</script>

<script>
  
  var birthdate = $('#Birthdate').val();
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth()+1;
    var yy = today.getFullYear();
    var tdate = yy+"/"+mm+"/"+dd;

$('#Birthdate').datetimepicker({
  yearOffset:0,
  lang:'ch',
  timepicker:false,
  format:'Y/m/d',
  formatDate:'Y/m/d',
  //minDate:'-1980/01/01', // yesterday is minimum date
  maxDate: tdate // and tommorow is maximum date calendar
});

$('#JoinDate').datetimepicker({
  yearOffset:0,
  lang:'ch',
  timepicker:false,
  format:'Y/m/d',
  formatDate:'Y/m/d',
  //minDate:'-1980/01/01', // yesterday is minimum date
  //maxDate: tdate // and tommorow is maximum date calendar
});

$('#LeaveDate').datetimepicker({
  yearOffset:0,
  lang:'ch',
  timepicker:false,
  format:'Y/m/d',
  formatDate:'Y/m/d',
  //minDate:'-1980/01/01', // yesterday is minimum date
  //maxDate: tdate // and tommorow is maximum date calendar
});

</script>
<?php include('footer.php'); ?>