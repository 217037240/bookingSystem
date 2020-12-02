<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>


<div class="panel panel-default">
    <div class="panel-heading">
        <strong>
            <i class='fas fa-plus-circle' style='font-size:24px'></i>
            New Appointment
        </strong>
    </div>
    <form:form method="post" action="${path}/appointment/create" modelAttribute="appointmentForm">
        <form:hidden path="id"/>
        <div class="panel-body">
            <div class="form-group">

                <label class="col-md-2 control-label">Date : </label>
                <div class="col-md-4">
                    <form:input class="form-control" path="localDate" placeholder="Enter Dater"/>
                </div>

                <label class="col-md-2 control-label">Time : </label>
                <div class="col-md-4">
                    <form:input class="form-control" path="localTime" placeholder="Enter Time"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">User : </label>
                <div class="col-md-4">
                    <form:select class="form-control" path="user.id">
                        <c:forEach items="${users}" var="user">
                            <form:option value="${user.id}">${user.name}</form:option>
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