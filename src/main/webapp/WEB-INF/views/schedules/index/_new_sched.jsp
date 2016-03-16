<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<c:set var="url">${pageContext.request.contextPath} </c:set>

<div class="row">
	<div class="col-md-12">
		<h2 class="page-header">Manage Schedule</h2>
	</div>
	<!-- /.col-lg-12 -->
</div>

<div class="row padding-30">
	<div class="col-md-6">
		<label>Route From:</label> <input class="form-control"
			placeholder="Route From">
	</div>
	<div class="col-md-6">
		<label> Route To:</label> <input class="form-control" type="text"
			placeholder="Route To">
	</div>
</div>
<div class="row padding-10">
	<div class="col-md-3">
		<label>Time:</label> <input class="form-control" type="time"
			placeholder="Time">
	</div>
	<div class="col-md-3">
		<label>Occurence:</label>
		<div class="form-group">
			<select class="form-control" id="occurence">

				<option value="once">Occurs once</option>
				<option value="multiple">Occurs in multiple times</option>

			</select>
		</div>
	</div>
	<div class="col-md-6">
		<label>Vehicle:</label>
		<div class="form-group">
			<select class="form-control">
				<option>XCV 322</option>
				<option>XCV 322</option>
				<option>XCV 322</option>
			</select>
		</div>
	</div>
	<div class="col-md-3" id="showFrom">
		<label>Date From:</label> <input class="form-control" type="date"
			placeholder="Time">
	</div>
	<div class="col-md-3" id="showTo">
		<label>Date To:</label> <input class="form-control" type="date"
			placeholder="Time">
	</div>
	<div class="col-md-3" id="showSingle">
		<label>Date:</label> <input class="form-control" type="date"
			placeholder="Time">
	</div>
</div>

<div class="row padding-20">
	<div class="col-md-1">
		<button type="button" class="btn btn-primary">Save</button>
	</div>
	<div class="col-md-1">
		<button type="button" class="btn">Clear</button>
	</div>
</div>
