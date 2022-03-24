<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['acrsaid']==0)) {
  header('location:logout.php');
  } else{
    if(isset($_POST['submit']))
  {
    $techid=$_POST['techid'];
    $name=$_POST['name'];
    $mobnum=$_POST['mobnum'];
    $email=$_POST['email'];
    $address=$_POST['address'];
    $pass=md5($_POST['pass']);
$pic=$_FILES["pic"]["name"];

$extension = substr($pic,strlen($pic)-4,strlen($pic));
$allowed_extensions = array(".jpg","jpeg",".png",".gif");
if(!in_array($extension,$allowed_extensions))
{
echo "<script>alert('Logo has Invalid format. Only jpg / jpeg/ png /gif format allowed');</script>";
}
else
{

$pic=md5($pic).time().$extension;
 move_uploaded_file($_FILES["pic"]["tmp_name"],"images/".$pic);
 $ret=mysqli_query($con,"select TechnicianID from tbltechnician where TechnicianID='$techid'");
 $result=mysqli_fetch_array($ret);
 if($result>0){

echo "<script>alert('This technician id is already alloted to other technician');</script>";
    }
    else{
    $query=mysqli_query($con, "insert into  tbltechnician(TechnicianID,Name,MobileNumber,Email,Address,ProfilePic,Password) value('$techid','$name','$mobnum','$email','$address','$pic','$pass')");
    if ($query) {
 
    echo '<script>alert("Technician has been added")</script>';
    echo "<script>window.location.href ='add-technician.php'</script>";
  }
  else
    {
      echo '<script>alert("Something Went Wrong. Please try again.")</script>';
    }
  }
}
}
  ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Search Technician Details</title>
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
        <h3><i class="fa fa-angle-right"></i> Search Technician Details</h3>
        <!-- BASIC FORM VALIDATION -->
        <div class="row mt">
          <div class="col-lg-12">
            <h4><i class="fa fa-angle-right"></i> Search Technician Details</h4>
            <div class="form-panel">
              <form role="form" class="form-horizontal style-form" method="post" enctype="multipart/form-data" action="manage-technician-details.php">
                
                <div class="form-group has-success">
                  <label class="col-lg-2 control-label">Address</label>
                  <div class="col-lg-10">
                   <select type="text" class="form-control" name="address" value="" required='true'>
                    
                    <option value="">Choose Address</option>
                    <?php 
 $query=mysqli_query($con,"select DISTINCT Address from  tbltechnician");
 while ($row=mysqli_fetch_array($query)) {


 ?>
                    <option value="<?php  echo $row['Address'];?>"><?php  echo $row['Address'];?></option>
                   <?php }?>
                    </select>
                  </div>
                </div>
               
              
                <div class="form-group">
                  <div class="col-lg-offset-2 col-lg-10">
                    <button class="btn btn-theme" type="submit" name="submit">Search</button>
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