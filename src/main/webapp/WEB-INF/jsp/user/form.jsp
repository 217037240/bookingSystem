<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<div class="panel panel-default">
    <div class="panel-heading">
        <strong>
            <i class='fas fa-plus-circle' style='font-size:24px'></i>
            New User
        </strong>
    </div>
    <form:form method="post" action="${path}/user/add" modelAttribute="userForm">
        <form:hidden path="id"/>
        <div class="panel-body">
            <div class="form-group">

                <label class="col-md-2 control-label">User Id : </label>
                <div class="col-md-4">
                    <form:input class="form-control" path="userId" placeholder="Enter User Id"/>
                </div>

                <label class="col-md-2 control-label">User Name : </label>
                <div class="col-md-4">
                    <form:input class="form-control" path="username" placeholder="Enter User Name"/>
                </div>

                <label class="col-md-2 control-label">First Name  : </label>
                <div class="col-md-4">
                    <form:input class="form-control" path="name" placeholder="Enter First Name"/>
                </div>

                <label class="col-md-2 control-label">Last Name : </label>
                <div class="col-md-4">
                    <form:input class="form-control" path="surname" placeholder="Enter Last Name"/>
                </div>

                <label class="col-md-2 control-label">Cellphone Number : </label>
                <div class="col-md-4">
                    <form:input class="form-control" path="cellNo" placeholder="Enter Cellphone Number"/>
                </div>

                <label class="col-md-2 control-label">Email Address :  </label>
                <div class="col-md-4">
                    <form:input class="form-control" path="emailAddress" placeholder="Enter Email Address"/>
                </div>

                <label class="col-md-2 control-label">Password : </label>
                <div class="col-md-4">
                    <form:input class="form-control" path="password" placeholder="Enter Password"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">Role : </label>
                <div class="col-md-4">
                    <form:select class="form-control" path="role.id">
                        <c:forEach items="${roles}" var="role">
                            <form:option value="${role.id}">${role.name}</form:option>
                        </c:forEach>
                    </form:select>
                </div>
            </div>
        </div>

        <div class="panel-footer">
            <form:button value="Save" class="btn btn-xs btn-default">Save</form:button>
        </div>
    </form:form>
</div>
