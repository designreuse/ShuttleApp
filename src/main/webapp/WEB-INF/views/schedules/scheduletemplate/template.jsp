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
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top rowHeader"
			role="navigation" style="margin-bottom: 0">
			<tiles:insertAttribute name="navbar"></tiles:insertAttribute>
			<tiles:insertAttribute name="sidebar"></tiles:insertAttribute>
		</nav>

		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<tiles:insertAttribute name="new_sched"></tiles:insertAttribute>
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
				<!-- /#page-wrapper -->
			</div>
		</div>
	</div>
	<tiles:insertAttribute name="foot"></tiles:insertAttribute>
	<script>
			$(document).ready(function() {
				$("#showFrom").hide().css("visibility", "hidden");
				$("#showTo").hide().css("visibility", "hidden");
				console.log("here");
				$("#occurence").change(function() {
					console.log("hahaha" + $(this).val());
					if ($(this).val() == "once") {
						$("#showFrom").hide().css("visibility", "hidden");
						$("#showTo").hide().css("visibility", "hidden");
						$("#showSingle").show().css("visibility", "visible");
					} else if ($(this).val() == "multiple") {
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
</body>

</html>
