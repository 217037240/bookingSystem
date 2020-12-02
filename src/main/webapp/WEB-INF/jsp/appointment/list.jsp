<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Appointments</title>
</head>
<body>
<div class="panel panel-default">
    <div class="panel-heading text-center">
        <i class="fa fa-calendar" style="font-size:26px"></i>
        <strong>APPOINTMENTS</strong>
        <div class="pull-right">
            <a href="javascript:void(0);" onclick="addForm('appointment')">
                New Appointment
            </a>
        </div>
    </div>
    <div class="panel-body">
        <table class="table table-bordered table-condensed table-hover table-striped">
            <thead>
            <tr>
                <td>Id</td>
                <td>Appointment Id</td>
                <td>Patient No</td>
                <td>User</td>
                <td>Doctor Id</td>
                <td>Date</td>
                <td>Time</td>
                <td></td>
                <td></td>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="appointment" items="${appointments}">
                <tr>
                    <td>${appointment.id}</td>
                    <td>${appointment.appointID}</td>
                    <td>${appointment.patientNo}</td>
                    <td>${appointment.user.name} ${appointment.user.surname}</td>
                    <td>${appointment.docID}</td>
                    <td>${appointment.localDate}</td>
                    <td>${appointment.localTime}</td>
                    <td><a href="${path}/appointment/edit/${appointment.id}">Edit</a></td>
                    <td><a href="${path}/appointment/delete/${appointment.id}">Delete</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
