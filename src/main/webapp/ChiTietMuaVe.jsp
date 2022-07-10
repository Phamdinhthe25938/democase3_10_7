<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: phamd
  Date: 7/10/2022
  Time: 10:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <style>
        body{
            margin-top:20px;
            color: #484b51;
            background: aliceblue;
        }
        .text-secondary-d1 {
            color: #728299!important;
        }
        .page-header {
            margin: 0 0 1rem;
            padding-bottom: 1rem;
            padding-top: .5rem;
            border-bottom: 1px dotted #e2e2e2;
            display: -ms-flexbox;
            display: flex;
            -ms-flex-pack: justify;
            justify-content: space-between;
            -ms-flex-align: center;
            align-items: center;
        }
        .page-title {
            padding: 0;
            margin: 0;
            font-size: 1.75rem;
            font-weight: 300;
        }
        .brc-default-l1 {
            border-color: #dce9f0!important;
        }

        .ml-n1, .mx-n1 {
            margin-left: -.25rem!important;
        }
        .mr-n1, .mx-n1 {
            margin-right: -.25rem!important;
        }
        .mb-4, .my-4 {
            margin-bottom: 1.5rem!important;
        }

        hr {
            margin-top: 1rem;
            margin-bottom: 1rem;
            border: 0;
            border-top: 1px solid rgba(0,0,0,.1);
        }

        .text-grey-m2 {
            color: #888a8d!important;
        }

        .text-success-m2 {
            color: #86bd68!important;
        }

        .font-bolder, .text-600 {
            font-weight: 600!important;
        }

        .text-110 {
            font-size: 110%!important;
        }
        .text-blue {
            color: #478fcc!important;
        }
        .pb-25, .py-25 {
            padding-bottom: .75rem!important;
        }

        .pt-25, .py-25 {
            padding-top: .75rem!important;
        }
        .bgc-default-tp1 {
            background-color: rgba(121,169,197,.92)!important;
        }
        .bgc-default-l4, .bgc-h-default-l4:hover {
            background-color: #f3f8fa!important;
        }
        .page-header .page-tools {
            -ms-flex-item-align: end;
            align-self: flex-end;
        }

        .btn-light {
            color: #757984;
            background-color: #f5f6f9;
            border-color: #dddfe4;
        }
        .w-2 {
            width: 1rem;
        }

        .text-120 {
            font-size: 120%!important;
        }
        .text-primary-m1 {
            color: #4087d4!important;
        }

        .text-danger-m1 {
            color: #dd4949!important;
        }
        .text-blue-m2 {
            color: #68a3d5!important;
        }
        .text-150 {
            font-size: 150%!important;
        }
        .text-60 {
            font-size: 60%!important;
        }
        .text-grey-m1 {
            color: #7b7d81!important;
        }
        .align-bottom {
            vertical-align: bottom!important;
        }
    </style>
</head>
<body>
<div class="page-content container">
    <div class="container px-0">
        <div class="row mt-4">
            <div class="col-12 col-lg-12">
                <div class="row">
                </div>
                <!-- .row -->

                <hr class="row brc-default-l1 mx-n1 mb-4" />

                <div class="row">
                    <div class="col-sm-6">
                        <div>
                            <span class="text-sm text-grey-m2 align-middle">To:</span>
                            <span class="text-600 text-110 text-blue align-middle">${User.userName}</span>
                        </div>
                        <div class="text-grey-m2">
                            <div class="my-1">
                                Thủ dô Hà Nội
                            </div>
                            <div class="my-1">
                                Việt Nam
                            </div>
                            <div class="my-1"><i class="fa fa-phone fa-flip-horizontal text-secondary"></i> <b class="text-600">${User.numberUser}</b></div>
                        </div>
                    </div>
                    <!-- /.col -->

                    <div class="text-95 col-sm-6 align-self-start d-sm-flex justify-content-end">
                        <hr class="d-sm-none" />
                        <div class="text-grey-m2">
                            <div class="mt-1 mb-2 text-secondary-m1 text-600 text-125">
                                Invoice
                            </div>

                            <div class="my-2"><i class="fa fa-circle text-blue-m2 text-xs mr-1"></i> <span class="text-600 text-90">ID:</span> ${User.id}</div>

                            <div class="my-2"><i class="fa fa-circle text-blue-m2 text-xs mr-1"></i> <span class="text-600 text-90">Issue Date:</span> ${User.birthdayUser}</div>

                            <div class="my-2"><i class="fa fa-circle text-blue-m2 text-xs mr-1"></i> <span class="text-600 text-90">Gmail:</span> <span > ${User.mailUser}</span></div>
                        </div>
                    </div>
                    <!-- /.col -->
                </div>

                <div class="mt-4">
                    <div class="row text-600 text-white bgc-default-tp1 py-25">
                        <div class="d-none d-sm-block col-1">ID vé</div>
                        <div class="col-1 ">Img</div>
                        <div class="col-sm-2">Tên vé</div>
                        <div class="col-sm-2">Thế loại</div>
                        <div class="col-2">Thời gian</div>
                        <div class="col-2">Ngày khởi chiếu</div>
                        <div class="col-2">Giá tiền</div>
                    </div>

                    <div class="text-95 text-secondary-d3">
                        <c:forEach items="${listVeBuy}" var="l">
                            <div style="    background: antiquewhite;border-bottom: 1px solid #ccc;" class="row mb-2 mb-sm-0 py-25">
                                <div class="d-none d-sm-block col-1">${l.idVe}</div>
                                <div class="col-1 ">
                                    <img style="width: 28px;height: 36px" src="${l.film.img}" alt="">
                                </div>
                                <div class="d-none d-sm-block col-2">${l.film.tenPhim}</div>
                                <div class="d-none d-sm-block col-2 text-95">${l.film.loaiPhim}</div>
                                <div class="col-2 text-secondary-d2">${l.film.thoiGian}</div>
                                <div class="col-2 text-secondary-d2">${l.film.ngayKhoiChieu}</div>
                                <div class="col-2 text-secondary-d2">${l.film.giaPhim}</div>
                            </div>
                        </c:forEach>
                    </div>

                    <div class="row border-b-2 brc-default-l2"></div>
                    <div class="row mt-3">
                        <div class="col-12 col-sm-7 text-grey-d2 text-95 mt-2 mt-lg-0">
                            Extra note such as company or payment information...
                        </div>

                        <div class="col-12 col-sm-5 text-grey text-90 order-first order-sm-last">
                            <div class="row my-2">
                                <div class="col-7 text-right">
                                    Tổng tiền trước giảm:
                                </div>
                                <div class="col-5">
                                    <span class="text-120 text-secondary-d1">${totalMoneyUserSub}</span>
                                </div>
                            </div>

                            <div class="row my-2">
                                <div class="col-7 text-right">
                                    Tiền giảm :
                                </div>
                                <div class="col-5">
                                    <span class="text-110 text-secondary-d1">${totalMoneyreduce}</span>
                                </div>
                            </div>

                            <div class="row my-2 align-items-center bgc-primary-l3 p-2">
                                <div class="col-7 text-right">
                                   Tổng tiền thanh toán:
                                </div>
                                <div class="col-5">
                                    <span class="text-150 text-success-d3 opacity-2">${totalMoneyUserMain}</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <hr />

                    <div>
                        <span class="text-secondary-d1 text-105">Thank you for your business</span>
                        <a href="#" class="btn btn-info btn-bold px-4 float-right mt-3 mt-lg-0">Pay Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
