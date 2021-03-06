<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<c:set var="url">${pageContext.request.contextPath} </c:set>
<div class="modal fade" id="addModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">${add_button }</h4>
			</div>
			<form:form method="POST" modelAttribute="car"
				action="${url}${createLink }">

				<div class="modal-body">
					<div class="row padding-20">
						<div class="col-md-4">
							<label>Plate Number:</label>
							<form:input class="form-control" placeholder="Plate Number"
								path="plate_num"></form:input>
						</div>
						<div class="col-md-4">
							<label> Vehicle Type:</label>
							<form:input class="form-control" type="text"
								placeholder="Vehicle Type" path="model"></form:input>
						</div>
						<div class="col-md-4">
							<label> Seating Capacity:</label>
							<form:input class="form-control" type="text"
								placeholder="Seating Capacity" path="capacity"></form:input>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-primary">Save</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
				</div>
			</form:form>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>