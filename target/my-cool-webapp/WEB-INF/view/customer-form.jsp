<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Form</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/add-customer-style.css"/>
</head>

<body>
<div id = "wrapper">
    <div id = "header">
        <h2> CRM - Customer Relationship Manager</h2>
    </div>
</div>

<div id = "container">
    <h3>Save Customer</h3>

        <form:form action="saveCustomer" method="POST" modelAttribute="customer">

        <!-- need to associate this data with customer id -->
            <form:hidden path="id"/>

        <table>
            <tr>
                <td><label>First Name:</label></td>
                <td><form:input path="firstName"/></td>
            </tr>
            <tr>
                <td><label>Last Name:</label></td>
                <td><form:input path="lastName"/></td>
            </tr>
            <tr>
                <td><label>Email:</label></td>
                <td><form:input path="email"/></td>
            </tr>
            <tr>
                <td><label></label></td>
                <td><input type = "submit" value ="Save" class = "save" /></td>
            </tr>
        </table>
        </form:form>

        <div style="clear;both;"></div>

        <p>
            <a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
        </p>

</div>

</body>
</html>