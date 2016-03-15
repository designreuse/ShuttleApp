<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<div class="row">
	<div class="col-md-12">
		<h2 class="page-header">${table_head }</h2>
	</div>
</div>

<button class="btn btn-primary" data-toggle="modal"
	data-target="#myModal">Add Department</button>

<div class="row padding-20">
	<div class="col-lg-12">
		<!-- /.panel-heading -->
		<div class="dataTable_wrapper">
			<table class="table table-striped table-bordered table-hover"
				id="scheduleTable">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<tr class="odd gradeX">
						<td>D1</td>
						<td>IRD-EIGHL</td>
						<td>
							<button type="button" class="btn btn-success"
								data-dismiss="modal">
								<i class="fa fa-edit fa-fw"></i>
							</button>
							<button type="button" class="btn btn-danger" data-dismiss="modal">
								<i class="fa fa-times fa-fw"></i>
							</button>
						</td>
					</tr>
					<tr class="gradeU">
						<td>D2</td>
						<td>IRD-ACE</td>
						<td>
							<button type="button" class="btn btn-success"
								data-dismiss="modal">
								<i class="fa fa-edit fa-fw"></i>
							</button>
							<button type="button" class="btn btn-danger" data-dismiss="modal">
								<i class="fa fa-times fa-fw"></i>
							</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-12 -->
</div>