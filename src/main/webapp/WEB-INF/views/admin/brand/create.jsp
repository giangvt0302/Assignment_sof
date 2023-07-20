<%@ page language="java" contentType="text/html; charset=UTF8"
         pageEncoding="UTF8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF8">
    <title>Insert title here</title>
    <jsp:include page="../layout/bootrap.jsp"/>
</head>
<body>
<%--<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modal_add_id">--%>
<%--    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">--%>
<%--        <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>--%>
<%--        <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>--%>
<%--    </svg>--%>
<%--    Add a new laptop--%>
<%--</button>--%>
<%--<!-- Modal add -->--%>
<%--<div class="modal fade" id="modal_add_id"--%>
<%--     tabindex="-1" aria-hidden="true">--%>
<%--    <div class="modal-dialog">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <h5 class="modal-title"><a >Add a new laptop</h5>--%>
<%--                <button type="button"--%>
<%--                        class="btn-close"--%>
<%--                        data-bs-dismiss="modal"--%>
<%--                        aria-label="Close"></button>--%>
<%--            </div>--%>
<%--            <div class="modal-body">--%>
<div class="container">
    <h4 style="text-align: center">Create</h4>
    <br>
                <form:form modelAttribute="brand" method="POST" action="/admin/brand/add" class=" row col-4">
                    <label class="form-label">Name</label>
                    <form:input path="name" type="text" name="name" class="form-control" required="required"
                                oninvalid="this.setCustomValidity('Không được để trống name')"
                                oninput="this.setCustomValidity('')"
                    />
                    <form:errors path="name" cssStyle="color: red" />

                    <label class="form-label">Ma</label>
                    <form:input path="ma" type="text" name="ma" class="form-control" required="required"
                                oninvalid="this.setCustomValidity('Không được để trống ma')"
                                oninput="this.setCustomValidity('')"
                    />
                    <form:errors path="ma" cssStyle="color: red" />



                    <div class="mt-3">
<%--                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>--%>
                        <button data-bs-dismiss="modal" class="btn btn-danger" type="submit" >Add</button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>