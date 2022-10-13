<%--
  Created by IntelliJ IDEA.
  User: Tech
  Date: 10/13/2022
  Time: 12:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Login Failure</title>
    <link href="assets/css/bootstrap-united.css" rel="stylesheet" />

</head>
<body>
<script src="jquery-1.8.3.js">

</script>

<script src="bootstrap/js/bootstrap.js">

</script>

<div class="navbar navbar-default">

    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse"
                data-target=".navbar-responsive-collapse">
            <span class="icon-bar"></span> <span class="icon-bar"></span> <span
                class="icon-bar"></span>
        </button>
    </div>

    <div class="navbar-collapse collapse navbar-responsive-collapse">
        <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search">
        </form>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/userEnrollmentWithMyBatis">Home</a></li>
            <li><a href="signup.html">Signup</a></li>
            <li class="active"><a href="login.html">Login</a></li>
            <li class="dropdown"><a href="#" class="dropdown-toggle"
                                    data-toggle="dropdown">Explore<b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="#">Contact us</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Further Actions</a></li>
                </ul></li>
        </ul>
    </div>
    <!-- /.nav-collapse -->
</div>

<!--
<legend>user Enrollment Login Success</legend>
 -->
<div class="panel panel-danger">
    <div class="panel-heading">
        <h3 class="panel-title">user Enrollment Login failure</h3>
    </div>
    <div class="panel-body">
        <div class="alert alert-dismissable alert-danger">
            <button type="button" class="close" data-dismiss="alert">�</button>
            <strong>Oh snap!</strong> Something is wrong. Change a few things up
            and try submitting again.
        </div>
    </div>
</div>
<div></div>
<div></div>

<a class="btn btn-primary" href="<spring:url value="login.html"/>">Try
    again?</a>
</body>
</html>