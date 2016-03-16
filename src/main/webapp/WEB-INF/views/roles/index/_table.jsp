<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<c:set var="url">${pageContext.request.contextPath} </c:set>

<div class="row">
	<div class="col-md-12">
		<h2 class="page-header">${table_head }</h2>
	</div>
</div>

<button class="btn btn-primary" data-toggle="modal"
	data-target="#addModal">${add_button }</button>

<div class="row padding-20">
	<div class="col-lg-12">
		<!-- /.panel-heading -->
		<div class="dataTable_wrapper">
			<table class="table table-striped table-bordered table-hover"
				id="scheduleTable">
				<thead>
					<tr>
						<!-- <th>ID</th> -->
						<th>Role</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="role" items="${roles}">
						<tr class="gradeU">
							<!-- <td>D${role.role_id }</td>  -->
							<td>${role.role_name }</td>
							<td>
								<button type="button" class="btn btn-xs btn-success"
									data-dismiss="modal">
									<i class="fa fa-edit fa-fw"></i>
								</button> <a href="${url}${deleteLink }/${role.role_id}" type="button"
								class="btn btn-xs btn-danger" data-dismiss="modal"> <i
									class="fa fa-times fa-fw"></i>
							</a>
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

