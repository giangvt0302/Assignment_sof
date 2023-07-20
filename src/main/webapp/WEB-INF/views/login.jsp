<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
    <jsp:include page="bootrap.jsp"/>
</head>
<body>
<div class="container">
    <h4 style="text-align: center">Login</h4>
    <br>
<%--    <form:form modelAttribute="acc" action="${pageContext.request.contextPath}" method="post">--%>
<%--        <div>--%>
<%--            <label>User</label>--%>
<%--            <form:input path="username"/>--%>
<%--            <form:errors path="username" cssStyle="color: red" />--%>
<%--        </div>--%>
<%--        <div>--%>
<%--            <label>Pass</label>--%>
<%--            <form:input path="password"/>--%>
<%--            <form:errors path="password" cssStyle="color: red" />--%>
<%--        </div>--%>

<%--        <input type="submit" value="login">--%>
<%--    </form:form>--%>
    <div class="error" style="color:red;width:400px;margin-left: 400px;">${message}</div>
    <form:form modelAttribute="acc" action="${pageContext.request.contextPath}" method="post">
        <!-- Email input -->
        <div class="form-outline mb-4">
            <form:errors path="username" cssStyle="color: red;width:400px;margin-left: 400px;" />
            <form:input path="username"  id="form2Example1" class="form-control" cssStyle="width:350px;margin-left: 400px;" />
            <label class="form-label" for="form2Example1" style="margin-left: 400px;">Username</label>
        </div>

        <!-- Password input -->
        <div class="form-outline mb-4">
            <form:errors path="password" cssStyle="color: red;width:400px;margin-left: 400px;" />
            <form:input path="password" type="password" id="form2Example2" class="form-control" cssStyle="width:350px;margin-left: 400px;"/>
            <label class="form-label" for="form2Example2" style="margin-left: 400px;">Password</label>
        </div>

        <!-- 2 column grid layout for inline styling -->
        <div class="row mb-4">
            <div class="col d-flex justify-content-center">
                <!-- Checkbox -->
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="form2Example31" checked Style="margin-left: 350px;"/>
                    <label class="form-check-label" for="form2Example31"> Remember me </label>
                </div>
            </div>

            <div class="col">
                <!-- Simple link -->
                <a href="#!" Style="margin-left: 60px;">Forgot password?</a>
            </div>
        </div>

        <!-- Submit button -->
        <button type="submit" class="btn btn-primary btn-block mb-4" style="margin-left: 550px;">Login</button>

        <!-- Register buttons -->
        <div class="text-center">
            <p Style="margin-left: 40px;">Not a member? <a href="/register">Register</a></p>
        </div>
    </form:form>
</div>
</body>
</html>