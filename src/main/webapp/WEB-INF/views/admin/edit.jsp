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
<%--<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modal_update_${ ds.id }">--%>
<%--    Update--%>
<%--</button>--%>

<%--<div class="modal fade" id="modal_update_${ds.id}"--%>
<%--     tabindex="-1" aria-hidden="true">--%>
<%--    <div class="modal-dialog">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <h5 class="modal-title">Alert</h5>--%>
<%--                <button type="button"--%>
<%--                        class="btn-close"--%>
<%--                        data-bs-dismiss="modal"--%>
<%--                        aria-label="Close"></button>--%>
<%--            </div>--%>
<%--            <div class="modal-body">--%>
<div class="container">
    <h4 style="text-align: center">Create</h4>
    <br>
                <form:form modelAttribute="lapUpdate" method="POST" action="/admin/update/${ds.id}" enctype="multipart/form-data" class=" row col-4">
                    <label class="label-control mt-1">Name</label>
                    <form:input path="name" class="form-control" type="text" name="name" value="${ds.name}" />
                    <form:errors path="name" cssStyle="color: red" />

                    <label class="form-label">Brand</label>
                    <form:select path="brand"   class="form-select" name="brand"   aria-label="Default select example">

                        <c:forEach items="${dsBrand}" var="br" >
                            <option value="${br.id}" selected="${ds.brand.id == br.id}">${br.name}</option>
                        </c:forEach>
                    </form:select>

                    <label class="label-control mt-1">CPU</label>
                    <form:input path="cpu" class="form-control" type="text" name="cpu" value="${ds.cpu}" />

                    <form:errors path="cpu" cssStyle="color: red" />
                    <label class="label-control mt-1">Description</label>
                    <form:input path="description" class="form-control" type="text" name="description" value="${ds.description}" />
                    <form:errors path="description" cssStyle="color: red" />

                    <label class="label-control mt-1">Price</label>
                    <form:input path="price" class="form-control" type="text" name="price" value="${ds.price}" />


                    <label class="label-control mt-1">Quantity</label>
                    <form:input path="quantity" class="form-control" type="text" name="quantity" value="${ds.quantity}" />

                    <label class="form-label">Image</label>
                    <input type="file" name="file" class="form-control" value="${ds.image}"  />

                    <div class="mt-3">
<%--                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Cancel</button>--%>
                        <button data-bs-dismiss="modal" class="btn btn-primary" type="submit">Update</button>
<%--                        <input type="submit" value="Update">--%>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>

</body>
</html>