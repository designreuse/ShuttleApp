<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Shuttle Service Booking</title>

    <!-- Bootstrap Core CSS -->
    <link href="${url}/assets/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="${url}/assets/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="${url}/assets/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="${url}/assets/bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">


    <!-- Custom CSS -->
    <link href="${url}/assets/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${url}/assets/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

     <!-- Custom CSS -->
    <link href="${url}/assets/css/custom.css" rel="stylesheet">
     <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
 <script>
     $(document).ready(function(){

                    $("#showFrom").hide().css("visibility", "hidden");
                    $("#showTo").hide().css("visibility", "hidden");
         console.log("here");
                $("#occurence").change(function() {
                    console.log("hahaha"+$(this).val());
                  if($(this).val()=="once"){
                   $("#showFrom").hide().css("visibility", "hidden");
                    $("#showTo").hide().css("visibility", "hidden");
                     $("#showSingle").show().css("visibility", "visible");
                  }
                  else if($(this).val()=="multiple"){
                  $("#showFrom").show().css("visibility", "visible");
                    $("#showTo").show().css("visibility", "visible");
                                 $("#showSingle").hide().css("visibility", "hidden");
                  }
               
                });
                //$("#hide").click(function(){
                    
                //});
                //$("#show").click(function(){
             
                });
       
    </script>

</head>

<body>

    <div id="wrapper">
        <div class = "row">
            <div class = "col-md-offset-10 col-md-2">
               Login Placeholder
            </div>
        </div>
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top rowHeader" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <div class = "col-md-12">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <img src ="${url}/assets/rsrc/logo.jpg" class = "logo pull-left">
                    <p class="navbar-brand header-brand" href="index.html">Corporate Intranet</a>
                </div>
            </div>
            <!-- /.navbar-header -->
            <div class = "col-md-8">
                <ul class="nav navbar-top-links navbar-left">
                    <li class="">
                        <a class=" header-links" href="#">
                            <i class="fa fa-fw"></i> Home  <i class="fa"></i>
                        </a>
                    </li>
                    <li class="">
                        <a class="header-links" href="#">
                            <i class="fa fa-fw"></i> Departments  <i class="fa"></i>
                        </a>
                    </li>
                    <li class="">
                        <a class="header-links" href="#">
                            <i class="fa fa-fw"></i> News  <i class="fa"></i>
                        </a>
                    </li>
                    <li class="">
                        <a class="header-links" href="#">
                            <i class="fa fa-fw"></i> Tools and Resources  <i class="fa"></i>
                        </a>
                    </li>
                </ul>
            </div>
            </br>
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a class = "main-panel" href="#"><i class="fa fa-fw"></i>Shuttle Service Reservation<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="CreateReservation.html">Create Reservation</a>
                                </li>
                                <li>
                                    <a href="ViewReservation.html">View Reservation</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a class = "main-panel" href="MyProfile.html"><i class="fa fa-fw"></i>My Profile</a>
                        </li>
                         <li>
                            <a class = "main-panel" href="#"><i class="fa fa-fw"></i>Reports<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="ViewReports.html">View Reports</a>
                                </li>
                                <li>
                                    <a href="ViewStatistics.html">View Statistics</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a class = "main-panel" href="#"><i class="fa fa-fw"></i>Control Panel<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="ManageSchedule.html">Manage Schedule</a>
                                </li>
                                <li>
                                    <a href="ManageVehicle.html">Manage Vehicle</a>
                                </li>
                                <li>
                                    <a href="ManageDepartment.html">Manage Department</a>
                                </li>
                                <li>
                                    <a href="ManageRoles.html">Manage Account Role</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="page-header">Manage Schedule</h2>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>

                <div class ="row padding-30">
                    <div class = "col-md-6">
                        <label>Route From:</label>
                        <input class="form-control" placeholder="Route From">
                    </div>
                    <div class = "col-md-6">
                        <label> Route To:</label>
                        <input class="form-control" type="text" placeholder="Route To">
                    </div>
                </div>
                <div class ="row padding-10">
                    <div class = "col-md-3">
                        <label>Time:</label>
                        <input class="form-control" type="time" placeholder="Time">
                    </div>
                    <div class = "col-md-3">
                        <label>Occurence:</label>
                        <div class="form-group">
                                            <select class="form-control" id="occurence">
                                               
                                               <option value="once">Occurs once</option>
                                              <option value="multiple">Occurs in multiple times</option>
                                          
                                            </select>
                         </div>
                    </div>
                    <div class = "col-md-6">
                        <label>Vehicle:</label>
                       <div class="form-group">
                                            <select class="form-control">
                                               <option>XCV 322</option>
                                              <option>XCV 322</option>
                                               <option>XCV 322</option>
                                            </select>
                                        </div>
                    </div>
                     <div class = "col-md-3" id="showFrom">
                        <label>Date From:</label>
                        <input class="form-control" type="date" placeholder="Time">
                    </div>
                     <div class = "col-md-3" id="showTo">
                        <label>Date To:</label>
                        <input class="form-control" type="date" placeholder="Time">
                    </div>
                     <div class = "col-md-3" id="showSingle">
                        <label>Date:</label>
                        <input class="form-control" type="date" placeholder="Time">
                    </div>
                </div>

                <div class = "row padding-20">
                    <div class = "col-md-1">
                        <button type="button" class="btn btn-primary">Save</button>
                    </div>
                    <div class = "col-md-1">
                        <button type="button" class="btn">Clear</button>
                    </div>
                  
                </div>


  <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">Add Department</h4>
                    </div>
                    <div class="modal-body">
                        <div class ="row">
                            <div class = "col-md-8">
                                <label>Department Name:</label>
                                <input class="form-control" placeholder="Department Name">
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Save changes</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
                <div class="row padding-30">
                    <div class="col-lg-12">
                            <!-- /.panel-heading -->
                        <div class="dataTable_wrapper">
                            <table class="table table-striped table-bordered table-hover" id="scheduleTable">
                                <thead>
                                    <tr>
                                        <th>From</th>
                                        <th>To</th>
                                        <th>Departure Time</th>
                                        <th>Plate Number</th>
                                        <th>Driver</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="odd gradeX">
                                        <td>Net Park</td>
                                        <td>Edsa</td>
                                        <td>7:45 am</td>
                                        <td>ABC 123</td>
                                        <td>Mang Jodi</td>
                                          <td>  <button type="button" class="btn btn-xs btn-success" data-dismiss="modal"><i class="fa fa-edit fa-fw"></i></button>  <button type="button" class="btn btn-xs btn-danger" data-dismiss="modal"><i class="fa fa-times fa-fw"></i></button></td>
                                    </tr>                                        
                                    <tr class="gradeU">
                                        <td>Net Park</td>
                                        <td>Market Market</td>
                                        <td>8:00 am</td>
                                        <td>DEF 456</td>
                                        <td>Mang Kanor</td>
                                          <td>  <button type="button" class="btn btn-xs btn-success" data-dismiss="modal"><i class="fa fa-edit fa-fw"></i></button>  <button type="button" class="btn btn-xs btn-danger" data-dismiss="modal"><i class="fa fa-times fa-fw"></i></button></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
        <!-- /#page-wrapper -->
       

    </div>
    <script src="${url}/assets/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${url}/assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="${url}/assets/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="${url}/assets/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="${url}/assets/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="${url}/assets/dist/js/sb-admin-2.js"></script>
    <script>
        $(document).ready(function() {
            $('#scheduleTable').DataTable({
                    responsive: true
            });
        });
    </script>
</body>

</html>
