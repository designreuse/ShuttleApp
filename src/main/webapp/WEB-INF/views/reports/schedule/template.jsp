<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<c:set var="url">${pageContext.request.contextPath} </c:set>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<title>Shuttle Service Booking</title>

<!-- Bootstrap Core CSS -->
<link
	href="${url}/assets/bower_components/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link
	href="${url}/assets/bower_components/metisMenu/dist/metisMenu.min.css"
	rel="stylesheet">

<!-- DataTables CSS -->
<link
	href="${url}/assets/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css"
	rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link
	href="${url}/assets/bower_components/datatables-responsive/css/dataTables.responsive.css"
	rel="stylesheet">


<!-- Custom CSS -->
<link href="${url}/assets/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="${url}/assets/bower_components/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- Custom CSS -->
<link href="${url}/assets/css/custom.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script>
        function printData()
        {
           var divToPrint=document.getElementById("printThis");
           newWin= window.open("");
           newWin.document.write(divToPrint.outerHTML);
           newWin.print();
           newWin.close();
        }

            $(document).ready(function(){
                $( "#print" ).click(function() {
                  $('#scheduleTable').attr('id','printThis'); 
                 // $('printThis').show().printElement();
                  printData();
                });
                
            });
    </script>

</head>

<body>

	<div id="wrapper">
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top rowHeader"
			role="navigation" style="margin-bottom: 0">
			<tiles:insertAttribute name="navbar"></tiles:insertAttribute>
			<tiles:insertAttribute name="sidebar"></tiles:insertAttribute>
		</nav>

		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<h2 class="page-header">Schedule Reports</h2>
					</div>
					<!-- /.col-lg-12 -->
				</div>

				<div class="row">
					<div class="col-lg-12">
						<!-- /.panel-heading -->
						<div class="dataTable_wrapper">
							<div id="scheduleDiv">
								<table class="table table-striped table-bordered table-hover"
									id="scheduleTable">
									<thead>
										<tr>
											<th colspan="5">Schedule Report</th>
										</tr>
										<tr>
											<th>FROM</th>
											<th>TO</th>
											<th>Drop off time</th>
											<th>Date</th>
											<th>Driver Assigned</th>
										</tr>
									</thead>
									<tbody>
										<tr class="odd gradeX">
											<th>Net Park</th>
											<th>Market Market</th>
											<th>5:20 PM</th>
											<th>02/22/2016</th>
											<th>Mang Jodi</th>
										</tr>
										<tr class="gradeU">
											<th>Net Park</th>
											<th>Ayala</th>
											<th>6:20 AM</th>
											<th>03/22/2016</th>
											<th>TBA</th>
										</tr>
										<tr class="odd gradeX">
											<th>Net Cube</th>
											<th>Market Market</th>
											<th>6:20 PM</th>
											<th>02/23/2016</th>
											<th>Mang Jodi</th>
										</tr>
										<tr class="gradeU">
											<th>Net Park</th>
											<th>Ayala</th>
											<th>6:40 PM</th>
											<th>03/22/2016</th>
											<th>Mang Jose</th>
										</tr>

										<tr class="odd gradeX">
											<th>Net Cube</th>
											<th>Market Market</th>
											<th>5:20 PM</th>
											<th>02/26/2016</th>
											<th>Mang Jodi</th>
										</tr>
										<tr class="gradeU">
											<th>Net Park</th>
											<th>Ayala</th>
											<th>6:20 AM</th>
											<th>03/22/2016</th>
											<th>TBA</th>
										</tr>

										<tr class="odd gradeX">
											<th>Net Park</th>
											<th>Market Market</th>
											<th>5:20 PM</th>
											<th>02/22/2016</th>
											<th>Mang Jodi</th>
										</tr>
										<tr class="gradeU">
											<th>Net Park</th>
											<th>Ayala</th>
											<th>6:20 AM</th>
											<th>03/22/2016</th>
											<th>TBA</th>
										</tr>
									</tbody>
								</table>
							</div>

						</div>
						<!-- /.panel -->
					</div>
					<!-- /.col-lg-12 -->
				</div>



				<!-- /#page-wrapper -->
				<div class="row padding-20">
					<div class="col-md-3">
						<button id="print" type="button" class="btn btn-primary">Print
							Report</button>
					</div>
				</div>

			</div>
			<script
				src="${url}/assets/bower_components/jquery/dist/jquery.min.js"></script>

			<!-- Bootstrap Core JavaScript -->
			<script
				src="${url}/assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

			<!-- Metis Menu Plugin JavaScript -->
			<script
				src="${url}/assets/bower_components/metisMenu/dist/metisMenu.min.js"></script>

			<!-- DataTables JavaScript -->
			<script
				src="${url}/assets/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
			<script
				src="${url}/assets/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

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
