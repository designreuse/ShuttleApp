<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<c:set var="url">${pageContext.request.contextPath} </c:set>
<!DOCTYPE html>
<html lang="en">
<head>
	<tiles:insertAttribute name="head"></tiles:insertAttribute>
</head>
<body>
    <div id="wrapper">
        <div class = "row">
            <div class = "col-md-offset-10 col-md-2">
               Login Placeholder
            </div>
        </div>
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top rowHeader" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <div class = "col-md-12">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <img src ="${url}/assets/rsrc/logo.jpg" class = "logo pull-left">
                    <p class="navbar-brand header-brand" href="index.html">Corporate Intranet</a>
                </div>
            </div>
            <!-- /.navbar-header -->
            <div class = "col-md-8">
                <ul class="nav navbar-top-links navbar-left">
                    <li class="">
                        <a class=" header-links" href="#">
                            <i class="fa fa-fw"></i> Home  <i class="fa"></i>
                        </a>
                    </li>
                    <li class="">
                        <a class="header-links" href="#">
                            <i class="fa fa-fw"></i> Departments  <i class="fa"></i>
                        </a>
                    </li>
                    <li class="">
                        <a class="header-links" href="#">
                            <i class="fa fa-fw"></i> News  <i class="fa"></i>
                        </a>
                    </li>
                    <li class="">
                        <a class="header-links" href="#">
                            <i class="fa fa-fw"></i> Tools and Resources  <i class="fa"></i>
                        </a>
                    </li>
                </ul>
            </div>
            </br>
            <div class="navbar-default sidebar" role="navigation">
               <!-- sidebar -->
               <tiles:insertAttribute name="sidebar"></tiles:insertAttribute>
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="page-header">Manage Account Role</h2>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>

            <div class="row">
                <div class="col-lg-12">
                        <!-- /.panel-heading -->
                    <div class="dataTable_wrapper">
                        <table class="table table-striped table-bordered table-hover" id="scheduleTable">
                            <thead>
                                <tr>
                                    <th>Role ID</th>
                                    <th>Role Type</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="odd gradeX">
                                    <td>D1</td>
                                    <td>Administrator</td>
                                </tr>                                        
                                <tr class="gradeU">
                                    <td>D2</td>
                                    <td>Employee</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
        </div>

                <div class ="row padding-20">
                    <div class = "col-md-8">
                        <label>Role Type:</label>
                        <input class="form-control" placeholder="Role Type">
                    </div>
                </div>
        <!-- /#page-wrapper -->
        <div class = "row padding-20">
            <div class = "col-md-3">
                <button type="button" class="btn btn-primary">Add (or Save daw pag iuupdate)</button>
            </div>
            <div class = "col-md-1">
                <button type="button" class="btn">Cancel</button>
            </div>
            <div class = "col-md-1">
                <button type="button" class="btn">Delete</button>
            </div>
        </div>

    </div>
    <script src="${url}/assets/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${url}/assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="${url}/assets/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="${url}/assets/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="${url}/assets/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="${url}/assets/dist/js/sb-admin-2.js"></script>
    <script>
        $(document).ready(function() {
            $('#scheduleTable').DataTable({
                    responsive: true
            });
        });
    </script>
</body>

</html>
