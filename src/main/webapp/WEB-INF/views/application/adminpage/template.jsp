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
				<!-- Modal -->
				<tiles:insertAttribute name="add_modal"></tiles:insertAttribute>
				<!-- /.modal -->
				<tiles:insertAttribute name="table"></tiles:insertAttribute>
			</div>
		</div>
	</div>
	<tiles:insertAttribute name="foot"></tiles:insertAttribute>
</body>

</html>
