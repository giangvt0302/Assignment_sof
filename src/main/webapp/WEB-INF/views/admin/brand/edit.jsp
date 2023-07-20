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
                <form:form modelAttribute="brand" method="POST" action="/admin/brand/update/${brand.id}" class=" row col-4">
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