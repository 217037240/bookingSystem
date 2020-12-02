<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <title>Bills</title>
</head>
<body>
    <div class="panel panel-default">
        <div class="panel-heading text-center">
            <i class='fas fa-money-bill-wave' style='font-size:26px'></i>
            <strong>BILLS</strong>
            <div class="pull-right">
                <a href="javascript:void(0);" onclick="addForm('bill')">
                    New Bill
                </a>
            </div>
        </div>
        <div class="panel-body">
            <table class="table table-bordered table-condensed table-hover table-striped">
                <thead>
                <tr>
                    <td>Id</td>
                    <td>Bill Number</td>
                    <td>Appointment Id</td>
                    <td>Patient Id</td>
                    <td>Amount</td>
                    <td>Due To</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="bill" items="${bills}">
                    <tr>
                        <td>${bill.id}</td>
                        <td>${bill.billNo}</td>
                        <td>${bill.appointId}</td>
                        <td>${bill.patientId}</td>
                        <td>R${bill.amount}</td>
                        <td>${bill.user.name} ${bill.user.surname}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
