<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['acrsuid']==0)) {
  header('location:logout.php');
  } else{
    if(isset($_POST['submit']))
  {
     $uid=$_SESSION['acrsuid'];
    $actype=$_POST['actype'];
    $bname=$_POST['bname'];
    $acproblem=$_POST['acproblem'];
    $prmbdesc=$_POST['prmbdesc'];
    $add=$_POST['address'];
    $dos=$_POST['dos'];
    $tos=$_POST['tos'];
    $servnumber=mt_rand(100000000, 999999999);
    $query=mysqli_query($con, "insert into  tblrequest(UserID,ServiceNumber,BrandName,ACtype,Problem,ProblemDesc,Address,DateofService,SuitableTime) value('$uid','$servnumber','$bname','$actype','$acproblem','$prmbdesc','$add','$dos','$tos')");
    if ($query) {
 
  echo '<script>alert("Your Request has been sent successfully. Service number is "+"'.$servnumber.'")</script>';
  }
  else
    {
      echo '<script>alert("Something Went Wrong. Please try again.")</script>';
    }
  
}
  ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Request Form</title>
  <!-- Bootstrap core CSS -->
 <?php include_once('includes/css.php'); ?>

</head>

<body>
  <section id="container">
  
    <!--header start-->
    <?php include_once('includes/header.php');?>
   
    <!--sidebar start-->
<?php include_once('includes/sidebar.php');?>
    <!--sidebar end-->
   
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> Request Form</h3>
        <!-- BASIC FORM VALIDATION -->
        <div class="row mt">
          <div class="col-lg-12">
            <h4><i class="fa fa-angle-right"></i> Request Form</h4>
            <div class="form-panel">
              <form role="form" class="form-horizontal style-form" method="post">
                
                <div class="form-group has-success">
                  <label class="col-lg-2 control-label">Type of appliance</label>
                  <div class="col-lg-10">
                   <select type="text" class="form-control" name="actype" value="" required='true'>
                    <option value="">Choose Type</option>
                    <option value="Television">Television</option>
                    <option value="Refrigerator">Refrigerator</option>
                    <option value="Washing machine">Washing machine</option>
                    <option value="Air conditioner">Air conditioner</option>
                    <option value="Microwave">Microwave</option>
                    <option value="Mixer">Mixer</option>
                    <option value="Wet Grinder">Wet Grinder</option>
                    <option value="Others">Others</option>
                    </select>
                  </div>
                </div>
                <div class="form-group has-error">
                  <label class="col-lg-2 control-label">Brand</label>
                  <div class="col-lg-10">
                    <input type="text" class="form-control" name="bname" value="" required='true' placeholder="Brand Name">
                  </div>
                </div>

                <div class="form-group has-success">
                  <label class="col-lg-2 control-label">Nature of Problem</label>
                  <div class="col-lg-10">
                   <select type="text" class="form-control" name="acproblem" value="" required='true'>
                    <option value="">Choose Nature of Problem</option>
                    <option value="Service">Service</option>
                    <option value="Installation">Installation</option>
                    <option value="Others">Others</option>
                    </select>
                  </div>
                </div>
                <div class="form-group has-error">
                  <label class="col-lg-2 control-label">Problem Description</label>
                  <div class="col-lg-10">
                    <textarea class="form-control" name="prmbdesc" value="" required='true' rows="4" cols="4"> </textarea>
                  </div>
                </div>
               <div class="form-group has-error">
                  <label class="col-lg-2 control-label">Address</label>
                  <div class="col-lg-10">
                    <textarea class="form-control" name="address" value="" required='true' rows="4" cols="4"> </textarea>
                  </div>
                </div>
                <div class="form-group has-error">
                  <label class="col-lg-2 control-label">Date of Service</label>
                  <div class="col-lg-10">
                    <input type="date" class="form-control" name="dos" value="" required='true'>
                  </div>
                </div>
                <div class="form-group has-error">
                  <label class="col-lg-2 control-label">Suitable Time</label>
                  <div class="col-lg-10">
                    <input type="time" class="form-control" name="tos" value="" required='true'>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-lg-offset-2 col-lg-10">
                    <button class="btn btn-theme" type="submit" name="submit">Add</button>
                  </div>
                </div>
              </form>
            </div>
            <!-- /form-panel -->
          </div>
          <!-- /col-lg-12 -->
        </div>
        <!-- /row -->
        <!-- /row -->
      </section>
      <!-- /wrapper -->
    </section>
   
    <!--footer start-->
   <?php include_once('includes/footer.php');?>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
   <?php include_once('includes/js.php');?>
</body>

</html>
<?php }  ?>