<%@ page language="java" contentType="text/html; charset=UTF8"
         pageEncoding="UTF8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<header>
    <div class="container">
        <nav class="navbar navbar-expand-lg ">
            <div class="container-fluid">
                <a class="navbar-brand" >
                <span>
                  Kokan
                </span>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class=""> </span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0" style=" margin-left: 200px;">
                        <li class="nav-item1" >
                            <a href="/user/home">
                                <s:message code="label.home.home" />
                            </a>
                        </li>
                        <li class="nav-item1"><a href="/user/gioithieu"> <s:message code="label.home.about" /></a></li>
                        <li class="nav-item1"><a href="/user/sukien"> <s:message code="label.home.contact" /></a> </li>
                        <li class="nav-item1"><a href="/gio-hang/home"> <s:message code="label.home.product" /></a> </li>
                        <li class="nav-item1">
                            <a style="padding-left: 100px" class="nav-link active" aria-current="page" href="/logout">Logout</a>
                        </li>
                        <li class="nav-item1">
                            <a href="?language=vi">
                                <img alt="" src="https://s2.o7planning.com/templates/o7planning/resources/images/languages/vi.png">
                            </a>

                            <a href="?language=en">
                                <img alt="" src="https://s2.o7planning.com/templates/o7planning/resources/images/languages/en.png">
                            </a>
                        </li>
                    </ul>

                    <p></p>
                    <a href="/hoa-don/danh-sach-da-mua">
                        <img src="https://cdn-icons-png.flaticon.com/128/456/456212.png"
                             style="max-width: 50px; height: auto;text-decoration: none">
                        <span  class="badge bg-primary" style="text-decoration: none">${acc.username}</span>
                    </a>
                    <div class="user_option-box">
                    </div>
                </div>
            </div>
        </nav>
    </div>

</header>