<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: phamd
  Date: 7/9/2022
  Time: 8:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <style>
        body{
            background-color: #f3f6f8;
            margin-top:20px;
        }
        .thumb-lg {
            height: 88px;
            width: 88px;
        }
        .profile-user-box {
            position: relative;
            border-radius: 5px
        }
        .bg-custom {
            background-color: #02c0ce!important;
        }
        .profile-user-box {
            position: relative;
            border-radius: 5px;
        }

        .card-box {
            padding: 20px;
            border-radius: 3px;
            margin-bottom: 30px;
            background-color: cornsilk;
        }
        .inbox-widget .inbox-item img {
            width: 40px;
        }

        .inbox-widget .inbox-item {
            border-bottom: 1px solid #f3f6f8;
            overflow: hidden;
            padding: 10px 0;
            position: relative
        }

        .inbox-widget .inbox-item .inbox-item-img {
            display: block;
            float: left;
            margin-right: 15px;
            width: 40px
        }

        .inbox-widget .inbox-item img {
            width: 40px
        }

        .inbox-widget .inbox-item .inbox-item-author {
            color: #313a46;
            display: block;
            margin: 0
        }

        .inbox-widget .inbox-item .inbox-item-text {
            color: #98a6ad;
            display: block;
            font-size: 14px;
            margin: 0
        }

        .inbox-widget .inbox-item .inbox-item-date {
            color: #98a6ad;
            font-size: 11px;
            position: absolute;
            right: 7px;
            top: 12px
        }

        .comment-list .comment-box-item {
            position: relative
        }

        .comment-list .comment-box-item .commnet-item-date {
            color: #98a6ad;
            font-size: 11px;
            position: absolute;
            right: 7px;
            top: 2px
        }

        .comment-list .comment-box-item .commnet-item-msg {
            color: #313a46;
            display: block;
            margin: 10px 0;
            font-weight: 400;
            font-size: 15px;
            line-height: 24px
        }

        .comment-list .comment-box-item .commnet-item-user {
            color: #98a6ad;
            display: block;
            font-size: 14px;
            margin: 0
        }

        .comment-list a+a {
            margin-top: 15px;
            display: block
        }

        .ribbon-box .ribbon-primary {
            background: #2d7bf4;
        }

        .ribbon-box .ribbon {
            position: relative;
            float: left;
            clear: both;
            padding: 5px 12px 5px 12px;
            margin-left: -30px;
            margin-bottom: 15px;
            font-family: Rubik,sans-serif;
            -webkit-box-shadow: 2px 5px 10px rgba(49,58,70,.15);
            -o-box-shadow: 2px 5px 10px rgba(49,58,70,.15);
            box-shadow: 2px 5px 10px rgba(49,58,70,.15);
            color: #fff;
            font-size: 13px;
        }
        .text-custom {
            color: #02c0ce!important;
        }

        .badge-custom {
            background: #02c0ce;
            color: #fff;
        }
        .badge {
            font-family: Rubik,sans-serif;
            -webkit-box-shadow: 0 0 24px 0 rgba(0,0,0,.06), 0 1px 0 0 rgba(0,0,0,.02);
            box-shadow: 0 0 24px 0 rgba(0,0,0,.06), 0 1px 0 0 rgba(0,0,0,.02);
            padding: .35em .5em;
            font-weight: 500;
        }
        .text-muted {
            color: #98a6ad!important;
        }

        .font-13 {
            font-size: 13px!important;
        }
    </style>
</head>
<body style="background-color: bisque">
<div class="content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- meta -->
                <div class="profile-user-box card-box bg-custom">
                    <div class="row">
                        <div class="col-sm-6"><span class="float-left mr-3"><img src="https://s120-ava-talk.zadn.vn/c/0/0/8/11/120/71f38746f088837cfd940c2b8911ddd1.jpg" alt="" class="thumb-lg rounded-circle"></span>
                            <div class="media-body text-white">
                                <h4 class="mt-1 mb-1 font-18">Chu Tiến Anh</h4>
                                <p class="font-13 text-light">Thủ khoa Điện Lực university</p>
                                <p class="text-light mb-0">Công viên hòa bình,Hà Nội</p>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="text-right">
                                <button type="button" class="btn btn-light waves-effect"><i class="mdi mdi-account-settings-variant mr-1"></i> Edit Profile</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/ meta -->
            </div>
        </div>
        <!-- end row -->
        <div class="row">
            <div class="col-xl-4">
                <!-- Personal-Information -->
                <div class="card-box">
                    <h4 class="header-title mt-0">Personal Information</h4>
                    <div class="panel-body">
                        <p class="text-muted font-13">
                          Xin chào các bạn , mình là Tiến Anh hiện đang là giữ chức vụ tổng tư lệnh
                            nhóm 1 , C0322G1 -CodeGym, mọi người ủng hộ mua vé xem phim trên web mình nhé !
                            Kiếm tý tiền đèo e người yêu đi lượn Hồ Tây !
                        </p>
                        <hr>
                        <div class="text-left">
                            <p class="text-muted font-13"><strong>Họ và tên  :</strong> <span class="m-l-15">Chu Tiến Anh</span></p>
                            <p class="text-muted font-13"><strong>Số điện thoại :</strong><span class="m-l-15">(+84) 039 482 9412</span></p>
                            <p class="text-muted font-13"><strong>Email :</strong> <span class="m-l-15">tienanh98@gmail.com</span></p>
                            <p class="text-muted font-13"><strong>Địa chỉ :</strong> <span class="m-l-15">Công viên hòa bình(50k)</span></p>
                            <p class="text-muted font-13"><strong>Ngôn ngữ :</strong> <span class="m-l-5"><span class="flag-icon flag-icon-us m-r-5 m-t-0" title="us"></span>
                                <span>Tiếng việt</span>
                            </span>
<%--                                <span class="m-l-5"><span class="flag-icon flag-icon-de m-r-5" title="de"></span> <span>German</span> </span><span class="m-l-5"><span class="flag-icon flag-icon-es m-r-5" title="es"></span> <span>Spanish</span> </span><span class="m-l-5"><span class="flag-icon flag-icon-fr m-r-5" title="fr"></span> <span>French</span></span>--%>
                            </p>
                        </div>
                        <ul class="social-links list-inline mt-4 mb-0">
                            <li class="list-inline-item"><a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="" data-original-title="Facebook"><i class="fa fa-facebook"></i></a></li>
                            <li class="list-inline-item"><a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="" data-original-title="Twitter"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a title="" data-placement="top" data-toggle="tooltip" class="tooltips" href="" data-original-title="Skype"><i class="fa fa-skype"></i></a></li>
                        </ul>
                    </div>
                </div>
                <!-- Personal-Information -->
            </div>
            <div class="col-xl-8">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="card-box tilebox-one"><i class="icon-layers float-right text-muted"></i>
                            <h6 class="text-muted text-uppercase mt-0">Số khách</h6>
                            <h2 class="" data-plugin="counterup">${Sokhach}</h2>
                            <span class="badge badge-custom">+11% </span><span class="text-muted">From previous period</span></div>
                    </div>
                    <!-- end col -->
                    <div class="col-sm-4">
                        <div class="card-box tilebox-one"><i class="icon-paypal float-right text-muted"></i>
                            <h6 class="text-muted text-uppercase mt-0">Doanh thu</h6>
                            <h2 class=""><span data-plugin="counterup">${Doanhthu}</span> vnđ</h2><span class="badge badge-danger">-29% </span><span class="text-muted">From previous period</span></div>
                    </div>
                    <!-- end col -->
                    <div class="col-sm-4">
                        <div class="card-box tilebox-one" style="height: 160px;"><i class="icon-rocket float-right text-muted"></i>
                            <h6 class="text-muted text-uppercase mt-0">Số vé bán</h6>
                            <h2 class="" data-plugin="counterup">${Soveban}</h2><span class="badge badge-custom">+89% </span><span class="text-muted">Last year</span></div>
                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->
                <div class="card-box">
                    <h4 class="header-title mb-3">Thông tin khách</h4>
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Tên</th>
                                <th>Ngày sinh</th>
                                <th>Số điện thoại</th>
                                <th>Email</th>
                                <th>Chi tiết</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${listAccountBuyTicket}" var="l">
                                <tr>
                                    <td>${l.id}</td>
                                    <td>${l.userName}</td>
                                    <td>${l.birthdayUser}</td>
                                    <td>${l.numberUser}</td>
                                    <td>${l.mailUser}</td>
                                    <td><a href="/chitietmuave?idUser=${l.id}">Chi tiết</a></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- end col -->
        </div>
        <!-- end row -->
    </div>
    <!-- container -->
</div>
</body>
</html>
