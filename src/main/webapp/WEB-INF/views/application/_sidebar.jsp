<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>

<c:set var="url">${pageContext.request.contextPath} </c:set>
<div class="navbar-default sidebar" role="navigation">
	<div class="sidebar-nav navbar-collapse">
		<ul class="nav" id="side-menu">
			</br>
			<li class="">
				<div class="input-group padding-auto">
					<img src="${url}/assets/rsrc/dp.jpg" class="dp">
				</div>
				<div class="padding-b-10">
					<center>
						<h4>
							Name Placeholder</br> <small>Placeholder</small></br>
						</h4>
					</center>
				</div> <!-- /input-group -->
			</li>
			<li><a class="main-panel" href="#"><i class="fa fa-fw"></i>Shuttle
					Service Reservation<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="CreateReservation.html">Create Reservation</a></li>
					<li><a href="ViewReservation.html">View Reservation</a></li>
				</ul> <!-- /.nav-second-level --></li>
			<li><a class="main-panel" href="#"><i class="fa fa-fw"></i>Reports<span
					class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="ViewReports.html">View Reports</a></li>
					<li><a href="ViewStatistics.html">View Statistics</a></li>
				</ul> <!-- /.nav-second-level --></li>
			<li><a class="main-panel" href="#"><i class="fa fa-fw"></i>Control
					Panel<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="ManageSchedule.html">Manage Schedule</a></li>
					<li><a href="ManageVehicle.html">Manage Vehicle</a></li>
					<li><a href="ManageDepartment.html">Manage Department</a></li>
					<li><a href="ManageRoles.html">Manage Account Role</a></li>
				</ul> <!-- /.nav-second-level --></li>
		</ul>
	</div>
	<!-- /.sidebar-collapse -->
</div>
<!-- /.sidebar-collapse -->