<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<c:set var="url">${pageContext.request.contextPath} </c:set>

<div class="navbar-header">
	<div class="col-md-12">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span> 
		</button>
		<img src="${url}/assets/rsrc/logo.jpg" class="logo pull-left">
		<p class="navbar-brand header-brand" href="index.html">
			Corporate Intranet</a>
	</div>
</div>
<!-- /.navbar-header -->
<div class="col-md-8">
	<ul class="nav navbar-top-links navbar-left">
		<li class=""><a class=" header-links" href="#"> <i
				class="fa fa-fw"></i> Home <i class="fa"></i>
		</a></li>
		<li class=""><a class="header-links" href="#"> <i
				class="fa fa-fw"></i> Departments <i class="fa"></i>
		</a></li>
		<li class=""><a class="header-links" href="#"> <i
				class="fa fa-fw"></i> News <i class="fa"></i>
		</a></li>
		<li class=""><a class="header-links" href="#"> <i
				class="fa fa-fw"></i> Tools and Resources <i class="fa"></i>
		</a></li>
	</ul>
</div> 
</br>
<!-- /.navbar-static-side -->