
<?php

include('header/header.php');



?>



<style>


.main-section {
	width: 65%;
    margin: 0 auto;
    text-align: center;
    padding: 140px 4px;
}
.dashbord {
  width: 42%;
  display: inline-block;
  background-color: #34495e;
  color: #fff;
  margin-top: 50px;
}
.icon-section i {
  font-size: 30px;
  padding: 10px;
  border: 1px solid #fff;
  border-radius: 50%;
  margin-top: -25px;
  margin-bottom: 10px;
  background-color: #34495e;
}
.icon-section p {
  margin: 0px;
  font-size: 20px;
  padding-bottom: 10px;
}
.detail-section {
  background-color: #2f4254;
  padding: 5px 0px;
}
.dashbord .detail-section:hover {
  background-color: #5a5a5a;
  cursor: pointer;
}
.detail-section a {
  color: #fff;
  text-decoration: none;
}
.dashbord-green .icon-section,
.dashbord-green .icon-section i {
  background-color: #16a085;
}
.dashbord-green .detail-section {
  background-color: #149077;
}
.dashbord-orange .icon-section,
.dashbord-orange .icon-section i {
  background-color: #f39c12;
}
.dashbord-orange .detail-section {
  background-color: #da8c10;
}
.dashbord-blue .icon-section,
.dashbord-blue .icon-section i {
  background-color: #2980b9;
}
.dashbord-blue .detail-section {
  background-color: #2573a6;
}
.dashbord-red .icon-section,
.dashbord-red .icon-section i {
  background-color: #e74c3c;
}
.dashbord-red .detail-section {
  background-color: #cf4436;
}
.dashbord-skyblue .icon-section,
.dashbord-skyblue .icon-section i {
  background-color: #8e44ad;
}
.dashbord-skyblue .detail-section {
  background-color: #803d9b;
}













</style>

<section>
      
<div class="main-section">
          <div class="dashbord dashbord-red">
            <div class="icon-section">
              <i class="fa fa-users" aria-hidden="true"></i><br>
              <small>Employee Info</small>
              <p>You Have 66 Employees</p>
            </div>
            <div class="detail-section">
              <a href="employeeinfo.php">View All </a>
            </div>
          </div>
		  
		  
          <div class="dashbord dashbord-green">
            <div class="icon-section">
              <i class="fa fa-users" aria-hidden="true"></i><br>
              <small>Modarator Info</small>
              <p>You have 88 Modarators</p>
            </div>
            <div class="detail-section">
              <a href="modaratorinfo.php">View All </a>
            </div>
          </div>
		  
		   <div class="dashbord dashbord-blue">
            <div class="icon-section">
              <i class="fa fa-users" aria-hidden="true"></i><br>
              <small>Notifications</small>
              <p>You have 7 Unread Notifications</p>
            </div>
            <div class="detail-section">
              <a href="report.php">View All </a>
            </div>
          </div>
		  
		  
          <div class="dashbord dashbord-orange">
            <div class="icon-section">
              <i class="fa fa-users" aria-hidden="true"></i><br>
              <small>Report Box</small>
              <p>You Have 99 Reports</p>
            </div>
            <div class="detail-section">
              <a href="notification.php">View All </a>
            </div>
          </div>
          </div>
         
          

</section>




<?php

include('footer/footer.php');



?>