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
    <h4 style="text-align:center;">Sự kiện</h4>
    <p>Ngoài phát triển kinh doanh, Suntory KoKan Việt Nam chú trọng nâng cao ý thức phân loại, tái chế rác thải nhựa. Doanh nghiệp này phối hợp triển khai nhiều hoạt động thiết thực như làm sạch bờ biển và sông hồ, xây dựng nhà vệ sinh sử dụng vật liệu gạch từ chai nhựa hay tham gia Liên minh tái chế bao bì nhựa.

        Ô nhiễm môi trường nói chung và rác thải nhựa nói riêng là một trong những vấn đề nhức nhối được quan tâm hàng đầu. Đứng trước thực trạng đó, Suntory KoKan Việt Nam phối hợp triển khai loạt hoạt động nâng cao nhận thức cộng đồng, đặc biệt ở thế hệ trẻ trong việc bảo vệ môi trường, phát triển bền vững, hướng đến góp phần xây dựng văn hóa tái chế bao bì tại Việt Nam.

        Chung tay làm sạch bờ biển Việt Nam

        Năm 2019, doanh nghiệp này đồng hành cùng Trung ương Hội Sinh viên Việt Nam và gần 1.000 tình nguyện làm sạch bãi biển tại 5 tỉnh Hải Phòng, Quảng Ninh, Bình Định, Quảng Nam, Bến Tre. Kết thúc chiến dịch, 8,5 tấn rác thải các loại được thu gom.

        Suốt 3 năm qua, chiến dịch này liên tục tiếp diễn và mở rộng ra nhiều tỉnh thành, thu hút thêm nhiều tình nguyện viên cũng như lan tỏa hình ảnh đẹp, góp phần nâng cao nhận thức phân loại rác thải nhựa trong cộng đồng. Đến nay, Suntory KoKan Việt Nam phối hợp tổ chức 12 hoạt động tại 10 tỉnh thành. Trong số 2.700 tình nguyện viên, có gần 350 cán bộ nhân viên và đối tác của công ty. Tổng khối lượng rác thu gom cán mốc 32,3 tấn.

    </p>
    <p>
        Hiểu rõ nền tảng thay đổi hành động bắt đầu từ ý thức, đặc biệt với thế hệ trẻ, Suntory KoKan Việt Nam kết hợp Hội Đồng đội Trung ương tổ chức “Ngày hội tái chế - Hiệp sỹ MIZU bảo vệ môi trường” trong khuôn khổ chương trình “Mizuiku - Em yêu nước sạch”. Hoạt động triển khai tại 35 trường tiểu học, hướng đến giúp học sinh nâng cao nhận thức về tầm quan trọng của việc tái sử dụng, tái chế rác thải nhựa.

        Ngoài ra, từ năm 2020, học sinh có cơ hội tham gia các tiết học về phân loại rác thải. Nhiều khu truyền thông, thùng phân loại rác thải được thiết lập để các em thực hiện bỏ rác đúng nơi quy định.


        Không dừng ở đó, trong 2 năm qua, Suntory KoKan Việt Nam xây dựng 11 nhà vệ sinh có sử dụng vật liệu chai nhựa tại 5 tỉnh thành (Thái Nguyên, Bắc Ninh, Quảng Bình, Cao Bằng, Hải Phòng). 8 công trình còn lại đang triển khai, dự kiến hoàn thành trong năm nay. Nhờ đó, gần 35.000 chai nhựa và 380 kg rác thải nhựa cắt nhỏ được tái sử dụng, mang đến phòng vệ sinh tiện nghi cho gần 5.700 học sinh tiểu học.
    </p>
    <p>
        Tham gia Liên minh tái chế bao bì Pro Việt Nam
        Là thành viên sáng lập Liên minh tái chế bao bì (Pro Việt Nam), Suntory KoKan Việt Nam tích cực giảm nhựa trong sản xuất, đồng thời thu gom, tái chế bao bì. Từ năm 2018 đến nay, doanh nghiệp có nhiều sáng kiến nhằm cải tiến trong sản xuất như giảm trọng lượng và thay đổi chất liệu bao bì, loại bỏ màng co nắp chai… Qua đó, công ty tiết kiệm gần 8.000 tấn nhựa trong sản xuất.
        Tại chính văn phòng và nhà máy, Suntory KoKan Việt Nam khởi xướng chiến dịch “Sự hồi sinh của rác” nhằm kêu gọi toàn bộ nhân viên phân loại rác thải tại nơi làm việc để tái chế giúp bảo vệ môi trường. Gần 400 thùng rác mới, 82 tủ rác được trang bị tại các nhà máy và văn phòng của công ty. Với ý nghĩa thiết thực, chương trình nhận sự hưởng ứng và đăng ký tham gia tích cực của cán bộ nhân viên.
    </p>
    <p>
        Mới đây, Phòng Thương mại và Công nghiệp Việt Nam (VCCI), Cơ quan Phát triển Quốc tế Mỹ (USAID) và Công ty TNHH Nước giải khát Suntory KoKan Việt Nam (Suntory KoKan Việt Nam) ký kết thỏa thuận hợp tác triển khai “Chỉ số xanh”. Đây là sáng kiến nhằm thúc đẩy các tỉnh, thành phố quan tâm phát triển kinh tế gắn với bảo vệ môi trường, tạo dựng và cải thiện hoạt động kinh doanh tại địa phương theo hướng bền vững.
        Môi trường đóng vai trò quan trọng, là nền tảng cho mọi sự phát triển. Trên “hành trình vạn dặm” bảo vệ môi trường, hạn chế rác thải nhựa, Suntory KoKan Việt Nam khẳng định tiếp tục đóng góp thêm nhiều bước tiến bằng các hoạt động, sáng kiến trong thời gian tới, ở quy mô rộng và tần suất mạnh mẽ hơn
    </p>


    </div>
<jsp:include page="layout/footer.jsp"/>

</body>
</html>