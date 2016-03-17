<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<c:set var="url">${pageContext.request.contextPath} </c:set>

<div class="row">
	<div class="col-md-12">
		<h2 class="page-header">Create Reservation</h2>
	</div>
	<!-- /.col-lg-12 -->
</div>
<form:form method="POST" modelAttribute="schedule"
	action="${url}${createLink }">
	<!-- /.row -->
	<div class="row">
		<div class="col-md-6">
			<label>Available schedule</label> 
			<form:select class="form-control" path="sched_id">
				<c:forEach var="schedule" items="${schedules}" >
					<option value="${schedule.id}" label="${schedule.from_location } to ${schedule.to_location}"></option>
				</c:forEach>
			</form:select>
		</div>
		<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">
					<i class="fa fa-clock-o fa-fw"></i> Reservation Details
				</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<ul class="timeline">
						<li class="timeline-inverted">
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4 class="timeline-title">Route Details</h4>
								</div>
								<div class="timeline-body">
									<p>
										<b> Net Park to Market Market </b>. Pick up time is <b>7:30
											AM </b> Drop off date <b> March 12 2016 </b>
									</p>
								</div>
							</div>
						</li>

						<li class="timeline-inverted">
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4 class="timeline-title">Car Details</h4>
								</div>
								<div class="timeline-body">
									<p>
										You will be riding a <b>Pink Honda Van </b> with plate number
										<b>XYZ 123 </b>. Driver in charge will be <b>Mang Jodi </b>
										with contact number <b> 0921-232-3232 </b>. Seating capacity:
										<b>20</b>
									</p>
								</div>
							</div>
						</li>

						<li class="timeline-inverted">
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4 class="timeline-title">Availability</h4>
								</div>
								<div class="timeline-body">
									<p>
										Available seats: <b>5</b>
									</p>
								</div>
							</div>
						</li>


					</ul>
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
	</div>



	<!-- /#page-wrapper -->
	<div class="row padding-10">
		<div class="col-md-3">
			<button type="button" class="btn btn-primary">Reserve chosen
				schedule</button>
		</div>
		<div class="col-md-1">
			<button type="button" class="btn">Clear</button>
		</div>
	</div>

</form:form>