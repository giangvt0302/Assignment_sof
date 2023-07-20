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
    <h4 style="text-align:center;">Về chúng tôi</h4>
    <p>KoKan là một tập đoàn bán lẻ hàng đầu thế giới với các sản phẩm được người tiêu
        dùng thưởng thức hơn một tỷ lần mỗi ngày tại hơn 200 quốc gia và vùng lãnh thổ trên thế giới.
        Tập đoàn đạt doanh thu ròng khoảng 63 tỷ đô la trong năm 2016 với các nhãn hàng chủ lực
        bao gồm ASUS , MSI , DELL , MAC, ACER
        Danh mục sản phẩm của KoKan bao gồm một loạt các sản phẩm công nghệ và sản phẩm được yêu thích với
        tổng cộng 22 nhãn hiệu, tạo ra khoản 1 tỷ đô la mỗi doanh thu bán lẻ hàng năm.</p>
    <p>
        Nền tảng của Kokan là Hành Động Có Chủ Đích (Performance with Purpose) – thể hiện niềm tin của
        chúng tôi rằng thành công của công ty sẽ luôn gắn chặt chẽ với sự bền vững của môi trường sống
        xung quanh. Chúng tôi tin rằng việc liên tục nâng cao chất lượng sản phẩm, hoạt động có trách nhiệm
        nhằm bảo vệ nhà máy và trao quyền cho nhân viên chính là những yếu tố giúp Kokan trở thành một
        công ty thành công trên toàn cầu, tạo giá trị bền vững cho xã hội và các cổ đông của chúng tôi.
        Để biết thêm thông tin, vui lòng truy cập www.kokan.com
    </p>


    </div>

<jsp:include page="layout/footer.jsp"/>
</body>
</html>