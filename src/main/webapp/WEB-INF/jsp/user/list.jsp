<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <script type="text/javascript" src="${path}/webjars/jquery/3.2.1/jquery.min.js "></script>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <title>Users</title>
</head>
<body>
    <div class="panel panel-default">
        <div class="panel-heading text-center">
            <i class='fas fa-user-alt' style='font-size:26px'></i>
            <strong>USERS</strong>
            <div class="pull-right">
                <a href="javascript:void(0);" onclick="addForm('user')">
                    New User
                </a>
            </div>
        </div>
        <div class="panel-body">
            <table class="table table-bordered table-condensed table-hover table-striped">
                <thead>
                <tr>
                    <td>Id</td>
                    <td>User Id</td>
                    <td>User Name</td>
                    <td>First Name</td>
                    <td>last Name</td>
                    <td>Cellphone Number</td>
                    <td>Email Address</td>
                    <td></td>
                    <td></td>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${users}">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.userId}</td>
                        <td>${user.username}</td>
                        <td>${user.name}</td>
                        <td>${user.surname}</td>
                        <td>${user.cellNo}</td>
                        <td>${user.emailAddress}</td>
                        <td><a href="javascript:void(0);" onclick="editForm('user', '${user.id}')">Edit</a></td>
                        <td><a href="${path}/user/delete/${user.id}">Delete</a></td>
                    </tr>
                </c:forEach>
                <tr>
                    <p>
                        <a href="${path}/">Home</a>
                    </p>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
