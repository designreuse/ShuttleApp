<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<c:set var="url">${pageContext.request.contextPath} </c:set>
<div class="row padding-30">
	<div class="col-lg-12">
		<!-- /.panel-heading -->
		<div class="dataTable_wrapper">
			<table class="table table-striped table-bordered table-hover"
				id="scheduleTable">
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
					<c:forEach var="schedule" items="${schedules}">
						<tr class="odd gradeX">
							<td>${schedule.from_location }</td>
							<td>${schedule.to_location }</td>
							<td>${schedule.dropoff_time }</td>
							<td>${schedule.plate_num }</td>
							<td>Mang Jodi</td>
							<td>
								<button type="button" class="btn btn-xs btn-success"
									data-dismiss="modal">
									<i class="fa fa-edit fa-fw"></i>
								</button>
								<button type="button" class="btn btn-xs btn-danger"
									data-dismiss="modal">
									<i class="fa fa-times fa-fw"></i>
								</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-12 -->
</div>