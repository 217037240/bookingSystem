<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>

<form method="post" action="${path}" commandName="billForm">
    <p>Bill Number :  <form:input path="billNo" placeholder="Enter User Id"/></p>
    <p>Appointment Id  : <form:input path="appointId" placeholder="Enter User Id"/></p>
    <p>Patient Id : <form:input path="patientId" placeholder="Enter User Id"/></p>
    <p>Amount Due : <form:input path="amount" placeholder="Enter User Id"/></p>
    <p>
        <input type="submit" value="Save">
        <a href="${path}/bill/list">List Of Bills</a>
    </p>
</form>
