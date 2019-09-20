<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>List Customers</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>

<body>

<div id="wrapper">
    <div id = "header">
        <h2>CRM - Customer Relationship Manager</h2>
    </div>
</div>

<div id="container">
    <div id="content">

        <!-- put new button : Add Customer -->
        <input type = "button" value = "Add Customer"
               onclick = "window.location.href='showForm'; return false;"
               class = "add-button"/>

        <table>
            <tr>
                <th>Index</th>
                <th>Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Action</th>
            </tr>
            <c:forEach items="${customers}" var="theCustomer" varStatus="theCount">

                <!-- construct an "update" link with customer id -->
                <c:url var="updateLink" value="/customer/updateForm">
                    <c:param name="customerId" value="${theCustomer.id}" />
                </c:url>

                <!-- construct an "delete" link with customer id -->
                <c:url var="deleteLink" value="/customer/delete">
                    <c:param name="customerId" value="${theCustomer.id}" />
                </c:url>

                <tr>
                    <td>${theCount.count}</td>
                    <td>${theCustomer.id}</td>
                    <td>${theCustomer.firstName}</td>
                    <td>${theCustomer.lastName}</td>
                    <td>${theCustomer.email}</td>
                    <td><a href="${updateLink}">Update</a> | <a href="${deleteLink}"
                                                                onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false"
                    >Delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>

</body>
</html>