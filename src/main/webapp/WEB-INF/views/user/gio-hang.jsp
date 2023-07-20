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
    <style>
        body {
            margin-top: 30px;
        }

        li {
            list-style-type: none;
            line-height: 35px;
        }

        h6,
        img {
            padding-left: 32px;
            font-weight: 700;
        }

        .sub {
            margin-left: 0px;
            font-size: 14px;
            color: #ffffff;
            font-weight: 750;
            text-transform: uppercase;
            display: inline-block;
            padding: 13px 30px 12px;
            background: #f0d43a;
            border: none;
            border-radius: 0%;
        }

        .input {
            font-size: 16px;
            padding-left: 20px;
            color: #1c1c1c;
            height: 46px;
            border: 1px solid #ededed;
        }

        i {
            padding: 20px;
            margin-top: 10px;
        }

        .nav-item {
            padding-right: 30px;
        }

        .navbar-nav {
            margin-left: 350px;
        }

        .nav-item1 {
            padding-right: 30px;
            font-weight: 700;
            font-size: 20px;

        }

        .nav-item1 a {
            color: black;
            text-decoration: none;
        }


        .navbar-brand span {
            font-weight: bold;
            color: #000000;
            font-size: 24px;
        }

        .user_option-box {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
        }

        .user_option-box a {
            color: #000000;
            text-transform: uppercase;
            margin-left: 10px;
            font-size: 17px;
        }

        .user_option-box a:hover {
            color: #3b4a6b;
        }
        .header_section {
            padding: 15px 0;
        }

        .header_section .container-fluid {
            padding-right: 25px;
            padding-left: 25px;
        }

        .header__top {
            background: #f5f5f5;
            width: 100%;
        }

        .header__top__left {
            padding: 5px 0 13px;
        }

        .header__top__left ul li {
            font-size: 14px;
            color: #1c1c1c;
            display: inline-block;
            margin-right: 15px;
            position: relative;
        }

        .header__top__right {
            text-align: right;
            padding: 10px 0 13px;
        }

        .ok {
            background-color: #1359f1;
            color: #ffffff;
            padding-top: 60px;
        }

        .ok h4 {
            font-weight: 600;
            margin-bottom: 20px;
        }

        .ok .footer-col {
            margin-bottom: 30px;
        }

        .ok .footer_contact .contact_link_box a {
            margin: 5px 0;
            color: #ffffff;
        }

        .ok .footer_contact .contact_link_box a i {
            margin-right: 5px;
        }

        .ok .footer_contact .contact_link_box a:hover {
            color: #ffffff;
        }

        .ok .footer-info {
            text-align: center;
        }

        .ok .footer-info p {
            padding: 25px 0;
            margin: 0;
        }

        .ok .footer-info p a {
            color: inherit;
        }

        /*.img-box img {*/
        /*    width: 1;*/
        /*    height: 1;*/
        /*}*/

        .detail-box {

            display: flex;

            justify-content: space-between;
        }

        .detail-box h6 span {
            color: #3b4a6b;
            font-weight: 600;
        }


        .img-box img {
            max-width: 100%;
            max-height: 175px;
        }

        .box {
            background-color: #faf9fa;
            position: relative;
            padding: 10px 15px;
            margin-top: 25px;
            border-radius: 15px;
            overflow: hidden;
        }

        .box a {
            color: #000000;
        }

        .nav-item2 a {
            color: white;
            text-decoration: none;
        }
        .ok .footer_social {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            margin-top: 20px;
            margin-bottom: 10px;
        }

        .ok .footer_social a {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            color: #3b4a6b;
            width: 30px;
            height: 30px;
            border-radius: 100%;
            background-color: #ffffff;
            border-radius: 100%;
            margin-right: 10px;
            font-size: 18px;
        }

        .ok .footer_social a:hover {
            color: #f0d43a;
        }

        .ok .footer_social a i {
            margin-bottom: 10px;
        }
        .sidebar-item {
            margin-bottom: 35px;
        }

        .sidebar-item h4 {
            color: #1c1c1c;
            font-weight: 700;
            margin-bottom: 25px;
        }

        .sidebar-item ul li {
            list-style: none;
            margin-bottom: 25px;
            position: relative;
        }

        .sidebar-item ul li a {
            font-size: 16px;
            color: #1c1c1c;
            line-height: 39px;
            display: block;
            text-decoration: none;

        }

        .form1 label{
            margin-left: 350px;
        }
        .form1 input{
            margin-left: 200px;
        }
        .form1 select{
            margin-left: 150px;
        }

        .btn{
            text-align:right;
        }    </style>
</head>
<body>
<jsp:include page="layout/header.jsp"/>
<div class="container">
    <h1 style="font-size: 40px; text-align: center; margin-bottom: 20px">Giỏ hàng</h1>
    <div class="row">
        <div class="col-ms-8 col-md-8 col-xs-12">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">STT</th>
                    <th scope="col">Ảnh</th>
                    <th scope="col">tên SP</th>
                    <th scope="col">Giá</th>
                    <th scope="col" style="text-align: center">Số lượng</th>
                    <th scope="col">Tổng giá</th>
                    <th scope="col">function</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="ds" varStatus="i">
                <tr>
                    <td>${i.index+1}</td>
                    <td><img src="${pageContext.request.contextPath}/image/${ds.id.laptop.image}"
                             style="max-width: 150px; height: auto">
                    </td>
                    <td >${ds.id.laptop.name}</td>
                    <td >${ds.id.laptop.price}</td>
                    <td>
                        <a href="/gio-hang/giam?idSP=${ds.id.laptop.id}&&idGioHang=${ds.id.gioHang.id}">
                            <button type="button" class="btn">
                                <input class="minus is-form" type="button" value="-"/>
                            </button>
                        </a>
                        <input class="input-qty" type="text" value="${ds.soLuong}"
                               style="width: 30px; text-align: center; pointer-events: none;"/>
                        <a href="/gio-hang/tang?idSP=${ds.id.laptop.id}&&idGioHang=${ds.id.gioHang.id}">
                            <button type="button" class="btn">
                                <input class="minus is-form" type="button" value="+"/>
                            </button>
                        </a>
                    </td>
                    <td>${ds.soLuong * ds.id.laptop.price}</td>

                    <td>
                        <a href="/gio-hang/delete?idSP=${ds.id.laptop.id}&&idGioHang=${ds.id.gioHang.id}">
                            <button type="button" class="btn btn-danger">Xóa</button>
                        </a>
                    </td>

                </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <!--            <div>Tổng tiền: <span th:text="${tongGia}"></span></div>-->
        <!--            <a th:href="@{/hoa-don/show}"><button class="btn btn-primary">Đặt hàng</button></a>-->

        <div class="col-ms-4 col-md-4 col-xs-12">
            <div class="sidebox-order">
                <div class="sidebox-order-inner">
                    <div class="sidebox-order_title">
                        <h3>Thông tin đơn hàng</h3>
                    </div>
                    <div class="sidebox-order_total">
                        <p>Tổng tiền:
                            <span class="total-price">${tongGia}</span>
                        </p>
                    </div>
                   
                    <div class="sidebox-order_action">
                        <a class="button dark btncart-checkout" href="/hoa-don/show">THANH TOÁN</a>
                        <p class="link-continue text-center">
                            <a href="/user/home">
                                <i class="fa fa-reply"></i> Tiếp tục mua hàng
                            </a>
                        </p>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<jsp:include page="layout/footer.jsp"/>
</body>
</html>