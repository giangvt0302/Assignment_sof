<%@ page language="java" contentType="text/html; charset=UTF8"
         pageEncoding="UTF8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<header>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <p>Hello ${acc.username}</p>

                    </li>
                    <li class="nav-item">
                        <a style="padding-left: 50px" class="nav-link active" href="/admin/home">Laptop</a>
                    </li>
                    <li class="nav-item">
                        <a style="padding-left: 50px" class="nav-link active" href="/admin/brand/home">Brand</a>
                    </li>
                    <%--                    <li class="nav-item">--%>
                    <%--                        <a style="padding-left: 800px" class="nav-link active" aria-current="page" href="/app/login">Login</a>--%>
                    <%--                    </li>--%>
                    <li class="nav-item">
                        <a style="padding-left: 50px" class="nav-link active" aria-current="page" href="/logout">Logout</a>
                    </li>
                </ul>

            </div>
        </div>
    </nav>
</header>