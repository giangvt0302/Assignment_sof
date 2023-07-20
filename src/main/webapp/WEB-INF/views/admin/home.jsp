<%@ page language="java" contentType="text/html; charset=UTF8"
         pageEncoding="UTF8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF8">
    <title>Insert title here</title>
    <jsp:include page="layout/bootrap.jsp"/>
</head>
<body>
<div class="container">
    <jsp:include page="layout/header.jsp"/>

    <h1 style="text-align: center">Quan Ly Laptop</h1>

    <br/>
    <div class="row">
        <div class="col-6">
            <a href="/admin/add" class="btn btn-primary">Thêm mới</a>
        </div>
        <div class="col-6"></div>
    </div>
    <br>
    <div>
    </div>
    <table class="table table-hover">
        <tr>
            <th>Ma</th>
            <th>Name</th>
            <th>Brand</th>
            <th>CPU</th>
            <th>Description</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Image</th>
        </tr>
        <c:forEach items="${dsLaptop}" var="ds" varStatus="i">
            <tr>
                <td>${i.index+1}</td>
                <td>${ds.name}</td>
                <td>${ds.brand.name}</td>
                <td>${ds.cpu}</td>
                <td>${ds.description}</td>
                <td>${ds.price}</td>
                <td>${ds.quantity}</td>
                <td>
<%--                    <img src="../image/${ds.image}">--%>
                    <img src="${pageContext.request.contextPath}/image/${ds.image}" style="max-width: 50px; height: auto">
                </td>
                <td>

                    <a type="button" class="btn btn-primary" href="/admin/edit/${ds.id}">Edit</a>
                        <%--                <a class="btn btn-primary" href="/app/laptop-view-update?id=${ds.id}" role="button">Update</a>--%>
                        <%--                <a class="btn btn-primary" href="/app/laptop-xoa?id=${ds.id}" role="button">Delete</a>--%>
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modal_delete_${ ds.id }">
                        Delete
                    </button>
                    <div class="modal fade" id="modal_delete_${ds.id}"
                         tabindex="-1" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Alert</h5>
                                    <button type="button"
                                            class="btn-close"
                                            data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <h4>Do you want to delete it ?</h4>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                    <a type="button" class="btn btn-primary" href="/admin/delete/${ds.id}">Delete</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>
    <br>
</div>

</body>
</html>