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
	<tiles:insertAttribute name="head"></tiles:insertAttribute>
</head>

<body>
	<div id="wrapper">
		<div class="row">
			<div class="col-md-offset-10 col-md-2">Login Placeholder</div>
		</div>
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
						<h2 class="page-header">${table_head }</h2>
					</div>
				</div>

				<button class="btn btn-primary" data-toggle="modal"
					data-target="#myModal">Add Department</button>

				<!-- Modal -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">Add Department</h4>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-md-8">
										<label>Department Name:</label> <input class="form-control"
											placeholder="Department Name">
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-primary">Save
									changes</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Cancel</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
				<tiles:insertAttribute name="table"></tiles:insertAttribute>
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
