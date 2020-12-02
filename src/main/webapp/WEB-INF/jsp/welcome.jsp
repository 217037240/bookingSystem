<%--
  Created by IntelliJ IDEA.
  User: Bezui
  Date: 2020/12/01
  Time: 13:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <title>Home page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="${path}/jquery.boot.js"></script>

    <style>
        .row {
            margin-top: 50px;
            margin-left: 0px;
            margin-right: 0px;
        }
        .menu {
            height: 100%;
            max-width: 220px;
            position: fixed;
            background-color: antiquewhite;
        }
        .menu .navbar-nav li {
            width: 100%;
            border-bottom: 1px solid darkgoldenrod;
        }
    </style>

</head>
<body>

    <div class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <div class="navbar-brand">Appointment Booking System</div>
            </div>
        </div>
    </div>



    <div class="row">
        <div class="menu navbar navbar-default">
            <div class="menu-container">
                <ul class="nav navbar-nav">
                    <li><a href="javascript:void(0)" id="userList">Users</a></li>
<%--                    <li><a href="${path}/user/form">Create User</a></li>--%>
                    <li><a href="javascript:void(0)" id="appointmentList">Appointments</a></li>
<%--                    <li><a href="${path}/appointment/form">Create Appointment</a></li>--%>
                    <li><a href="javascript:void(0)" id="billList">Bills</a></li>
<%--                    <li><a href="${path}/bill/form">Create Bill</a></li>--%>
                </ul>
            </div>
        </div>

        <div class="container-fluid">
            <div class="panel-body" style="margin-left: 210px;">
                <p>${message}</p>
            </div>
        </div>
    </div>
    <div class="navbar navbar-default navbar-fixed-bottom">
        <div class="container">
            <div class="col-md-10 navbar-text text-center">2020, All Rights Reserved</div>
        </div>
    </div>


</body>
</html>
