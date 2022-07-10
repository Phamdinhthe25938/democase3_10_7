<%@ page import="Dao.VeDao" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Memico - Cinema Bootstrap HTML5 Template</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Bootstrap -->
    <link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <!-- Animate.css -->
    <link href="./animate.css/animate.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome iconic font -->
    <link href="./fontawesome/css/fontawesome-all.css" rel="stylesheet" type="text/css" />
    <!-- Magnific Popup -->
    <link href="./magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css" />
    <!-- Slick carousel -->
    <link href="./slick/slick.css" rel="stylesheet" type="text/css" />
    <!-- Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Oswald:300,400,500,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
    <!-- Theme styles -->
    <link href="./css/dot-icons.css" rel="stylesheet" type="text/css">
    <link href="./css/theme.css" rel="stylesheet" type="text/css">
    <style>
        #buyTicketBtn{
            margin-left: 3px;
            padding: 5px 12px 7px 12px;
            border: navajowhite;
            background: chocolate;
            color: #fff;
            border-radius: 8px;
            font-size: 17px;
            opacity: 0.8;
            cursor: pointer;
            font-weight: 300;
            letter-spacing: 1px;
            box-shadow: 0 0 4px rgba(0,0,0,0.4);
            outline: #9fcdff;
        }
        #buyTicketBtn:hover{
            color: red;
            background: rgb(0,0,0,0.4);
        }
        #buyTicketQuantity{

        }
        #buyTicketQuantityText{
            color: black;
        }
        #buyTicketEdQuantity{
            color: red;
        }
        #buyTicketQuantityRemaining{
            color: black;
        }
        .buyTicket{
            margin-top: 24px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        #navbar-extraIcon{
            margin-right: 28px;
            font-size: 26px;
            color: crimson;
        }
        #userName{
            margin-left: 6px;
            color: black;
            text-transform: capitalize;
        }
        .cartIcon{
            position: relative;
        }
        .cartIcon::after{
            position: absolute;
            content: "";
            height: 80%;
            width: 2px;
            right: 5px;
            background: #fff;
            top: 50%;
            transform: translateY(-50%);
        }
        .notifyCart{
            position: absolute;
            left: 35%;
            bottom: 63%;
            height: 22px;
            width: 23px;
            border-radius: 50%;
            background: #ea6432;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: center;
        }
    </style>
</head>
<body class="body">
<header class="header header-horizontal header-view-pannel" style="background: #d8d4cf">
    <div class="container">
        <nav class="navbar">
            <a class="navbar-brand" href="./"style="margin: 0">
                        <span class="logo-element">
                            <span class="logo-tape">
                                <span class="svg-content svg-fill-theme" data-svg="./images/svg/logo-part.svg"></span>
                            </span>
                            <span class="logo-text text-uppercase">
                                <span>M</span>emico</span>
                        </span>
            </a>
            <button class="navbar-toggler" type="button">
                        <span class="th-dots-active-close th-dots th-bars">
                            <span></span>
                            <span></span>
                            <span></span>
                        </span>
            </button>
            <div class="navbar-collapse">
                <ul class="navbar-nav">
                    <li style="margin: 0 10px" class="nav-item nav-item-arrow-down nav-hover-show-sub">
                        <a class="nav-link" href="#">Homepage</a>
                        <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                        <ul class="collapse nav">
                            <li class="nav-item">
                                <a class="nav-link" href="ViewUser.jsp">Homepage 1</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="homepage-2.html">Homepage 2</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="homepage-3.html">Homepage 3</a>
                            </li>
                        </ul>
                    </li>
                    <li style="margin: 0 10px" class="nav-item nav-item-arrow-down nav-hover-show-sub">
                        <a class="nav-link" href="#" data-role="nav-toggler">Pages</a>
                        <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                        <ul class="collapse nav">
                            <li class="nav-item nav-item-arrow-down nav-hover-show-sub">
                                <a class="nav-link" href="#" data-role="nav-toggler">Movies</a>
                                <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                                <ul class="collapse nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="movies-blocks.html">Blocks - No Sidebar</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="movies-blocks-sidebar-right.html">Blocks - Sidebar right</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="movies-posters.html">Posters - No Sidebar</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="movies-posters-sidebar-right.html">Posters - Sidebar right</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="movies-list.html">List - No Sidebar</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="movie-info-sidebar-right.html">Movie info</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="gallery.html">Gallery</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="news-blocks-sidebar-right.html">News</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="article-sidebar-right.html">Article</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about-us.html">About us</a>
                            </li>
                            <li class="nav-item nav-item-arrow-down nav-hover-show-sub">
                                <a class="nav-link" href="#" data-role="nav-toggler">User pages</a>
                                <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                                <ul class="collapse nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="sign-in.html">Sign in</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="sign-up.html">Sign up</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item nav-item-arrow-down nav-hover-show-sub">
                                <a class="nav-link" href="#" data-role="nav-toggler">Status pages</a>
                                <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                                <ul class="collapse nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="under-construction.html">Under construction</a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" href="coming-soon.html">Coming soon</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="404-1.html">404 - 1</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="404-2.html">404 - 2</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li style="margin: 0 10px" class="nav-item">
                        <a class="nav-link" href="movies-blocks.html">Movies</a>
                    </li>
                    <li style="margin: 0 10px" class="nav-item">
                        <a class="nav-link" href="/managerServlet">Manager film</a>
                    </li>
                </ul>
                <div class="navbar-extra" style="display:flex;align-items: center">
<%--                    <a href="/dichvu?action=cart&idUser=${idUser}">--%>
<%--                        <div class="cartIcon" id="cartIconOnClick">--%>
<%--                            <i id="navbar-extraIcon" class="fa-solid fa-cart-shopping"></i>--%>
<%--                            <div id="notifyCartQuantity" class="notifyCart">--%>
<%--                                ${quantity}--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </a>--%>
<%--                    &lt;%&ndash;                         <a class="btn-theme btn" href="#"><i class="fas fa-ticket-alt"></i>&nbsp;&nbsp;Buy Ticket</a>&ndash;%&gt;--%>

                </div>
                <ul class="navbar-nav">
                    <li style="margin: 0 10px" class="nav-item nav-item-arrow-down nav-hover-show-sub">
                        <a class="nav-link" href="#">
                                <span id="userName" style="font-size: inherit;">${username}
                                                        <img style="height: 25px;width: 25px ;border-radius: 50%;margin-left: 8px" src="https://cdn.popsww.com/blog/sites/2/2022/05/phim-cua-lee-min-ho.jpg" alt="">
                                </span>
                        </a>
                        <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                        <ul class="collapse nav">
                            <li class="nav-item">
                                <a class="nav-link" href="/login?action=logout">Đăng Xuất</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="homepage-2.html">Thay Ảnh Đại Diện</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</header>
<section class="section-text-white position-relative">
    <div class="d-background" data-image-src="http://via.placeholder.com/1920x1080" data-parallax="scroll"></div>
    <div class="d-background bg-theme-blacked"></div>
    <div class="mt-auto container position-relative">
        <div class="top-block-head text-uppercase">
            <h2 class="display-4">Now
                <span class="text-theme">in cinema</span>
            </h2>
        </div>
        <div class="top-block-footer">
            <div class="slick-spaced slick-carousel" data-slick-view="navigation responsive-4">
                <div class="slick-slides">
                    <c:forEach var="f" items="${films}">
                        <div class="slick-slide">
                            <article class="poster-entity" data-role="hover-wrap">
                                <div class="embed-responsive embed-responsive-poster">
                                    <img class="embed-responsive-item" src="${f.img}" alt="" />
                                </div>
                                <div class="d-background bg-theme-lighted collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show"></div>
                                <div class="d-over bg-highlight-bottom">
                                    <div class="collapse animated faster entity-play" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                        <a class="action-icon-theme action-icon-bordered rounded-circle" href="https://www.youtube.com/watch?v=d96cjJhvlMA" data-magnific-popup="iframe">
                                            <span class="icon-content"><i class="fas fa-play"></i></span>
                                        </a>
                                    </div>
                                    <h4 class="entity-title" style="font-size: 20px;color:mediumturquoise;">
                                        <a class="content-link" href="/dichvu?action=movie&cinema=${f.tenPhim}&username=${username}">${f.tenPhim}</a>
                                    </h4>
                                    <div class="entity-category" style="font-size: 13px;color:azure ">
                                        <a class="content-link" href="movies-blocks.html">${f.loaiPhim}</a>,
                                        <a class="content-link" href="movies-blocks.html">${f.quocGia}</a>
                                    </div>
                                    <div class="entity-info">
                                        <div class="info-lines">
                                            <div class="info info-short">
                                                <span class="text-theme info-icon"><i class="fas fa-star"></i></span>
                                                <span class="info-text">${f.star}</span>
                                                <span class="info-rest">/5</span>
                                            </div>
                                            <div class="info info-short">
                                                <span class="text-theme info-icon"><i class="fas fa-clock"></i></span>
                                                <span class="info-text">${f.thoiGian}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </article>
                        </div>
                    </c:forEach>
                </div>
                <div class="slick-arrows">
                    <div class="slick-arrow-prev">
                                <span class="th-dots th-arrow-left th-dots-animated">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </span>
                    </div>
                    <div class="slick-arrow-next">
                                <span class="th-dots th-arrow-right th-dots-animated">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="section-long" style="background: antiquewhite;margin-top: 0;padding-top: 96px ">
    <div class="container">
        <div class="section-head">
            <h2 class="section-title text-uppercase">Now in play</h2>
            <p class="section-text">Dates: 13 - 15 february 2019</p>
        </div>
        <c:forEach items="${films}" var="f">
            <article class="movie-line-entity" style="background: aliceblue">
                <div class="entity-poster" data-role="hover-wrap">
                    <div class="embed-responsive embed-responsive-poster">
                        <img class="embed-responsive-item" src="${f.img}" alt=""/>
                    </div>
                    <div class="d-over bg-theme-lighted collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                        <div class="entity-play">
                            <a class="action-icon-theme action-icon-bordered rounded-circle" href="${f.trailer}" data-magnific-popup="iframe">
                                <span class="icon-content"><i class="fas fa-play"></i></span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="entity-content" id="entityContent">
                    <h4 class="entity-title">
                        <a class="content-link" href="/dichvu?action=movie&cinema=${f.tenPhim}&username=${username}">${f.tenPhim}</a>
                    </h4>
                    <div class="entity-category" style="display: flex">
                        <div style="display: flex;flex-direction: column">
                            <a class="content-link" href="movies-blocks.html" style="line-height: 23px;text-transform: capitalize">Loại phim: ${f.loaiPhim}</a>
                            <a class="content-link" href="movies-blocks.html" style="line-height: 23px;text-transform: capitalize">Quốc gia: ${f.quocGia}</a>
                            <a class="content-link" href="movies-blocks.html"style="line-height: 23px;text-transform: capitalize">Ngày khởi chiếu: ${f.ngayKhoiChieu}</a>
                        </div>
                        <div style="display: flex;flex-direction: column;margin-left: 23px">
                            <a class="content-link" href="movies-blocks.html"style="line-height: 23px;text-transform: capitalize">Đạo diễn: ${f.daoDien}</a>
                            <a class="content-link" href="movies-blocks.html"style="line-height: 23px;text-transform: capitalize">Diễn viên: ${f.dienVien}</a>
                            <a class="content-link" href="movies-blocks.html"style="line-height: 23px;text-transform: capitalize">Nhà sản xuất: ${f.nhaSX}</a>
                        </div>
                    </div>
                    <div class="entity-info">
                        <div class="info-lines">
                            <div class="info info-short">
                                <span class="text-theme info-icon"><i class="fas fa-star"></i></span>
                                <span class="info-text">${f.star}</span>
                                <span class="info-rest">/5</span>
                            </div>
                            <div class="info info-short">
                                <span class="text-theme info-icon"><i class="fas fa-clock"></i></span>
                                <span class="info-text">${f.thoiGian}</span>
                            </div>
                        </div>
                    </div>
                    <p class="text-short entity-text">
                            ${f.moTa}
                    </p>
                </div>
                <div class="entity-extra" style="background: #dce2e2">
                    <div class="text-uppercase entity-extra-title" style="color: #b07272;">Showtime</div>
                    <div class="entity-showtime">
                        <div class="showtime-wrap">
                            <div class="showtime-item">
                                <span class="disabled btn-time btn" aria-disabled="true">11 : 30</span>
                            </div>
                            <div class="showtime-item">
                                <a class="btn-time btn" aria-disabled="false" href="#">13 : 25</a>
                            </div>
                            <div class="showtime-item">
                                <a class="btn-time btn" aria-disabled="false" href="#">16 : 07</a>
                            </div>
                            <div class="showtime-item">
                                <a class="btn-time btn" aria-disabled="false" href="#">19 : 45</a>
                            </div>
                            <div class="showtime-item">
                                <a class="btn-time btn" aria-disabled="false" href="#">21 : 30</a>
                            </div>
                            <div class="showtime-item">
                                <a class="btn-time btn" aria-disabled="false" href="#">23 : 10</a>
                            </div>
                        </div>
                    </div>
                    <div class="buyTicket">
<%--                        <a href="/dichvu?action=chonghe&idPhim=${f.idPhim}&idUser=${idUser}">--%>
<%--                            <button id="buyTicketBtn">Mua ngay</button>--%>
<%--                        </a>--%>
                        <p id="buyTicketQuantity">
                            <span id="buyTicketQuantityText">Số lượng</span>
                            <br>
                            <span id="buyTicketQuantityRemaining">50</span>
                        </p>
                    </div>
                </div>
            </article>
        </c:forEach>

    </div>
</section>
<section class="section-solid-long section-text-white position-relative">
    <div class="d-background" data-image-src="http://via.placeholder.com/1920x1080" data-parallax="scroll"></div>
    <div class="d-background bg-gradient-black"></div>
    <div class="container position-relative">
        <div class="section-head">
            <h2 class="section-title text-uppercase">Comming Soon</h2>
        </div>
        <div class="slick-spaced slick-carousel" data-slick-view="navigation single">
            <div class="slick-slides">
                <c:forEach  items="${films}" var="f">
                    <div class="slick-slide">
                        <article class="movie-line-entity">
                            <div class="entity-preview">
                                <div class="embed-responsive embed-responsive-16by9">
                                    <img class="embed-responsive-item" src="${f.img}" alt="" />
                                </div>
                                <div class="d-over">
                                    <div class="entity-play">
                                        <a class="action-icon-theme action-icon-bordered rounded-circle" href="https://www.youtube.com/watch?v=d96cjJhvlMA" data-magnific-popup="iframe">
                                            <span class="icon-content"><i class="fas fa-play"></i></span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="entity-content">
                                <h4 class="entity-title">
                                    <a class="content-link" href="movie-info-sidebar-right.html">${f.tenPhim}</a>
                                </h4>
                                <div class="entity-category">
                                    <a class="content-link" href="movies-blocks.html">${f.tenPhim}</a>,
                                    <a class="content-link" href="movies-blocks.html">${f.quocGia}</a>
                                </div>
                                <div class="entity-info">
                                    <div class="info-lines">
                                        <div class="info info-short">
                                            <span class="text-theme info-icon"><i class="fas fa-calendar-alt"></i></span>
                                            <span class="info-text">${f.ngayKhoiChieu}</span>
                                        </div>
                                        <div class="info info-short">
                                            <span class="text-theme info-icon"><i class="fas fa-clock"></i></span>
                                            <span class="info-text">${f.thoiGian}</span>

                                        </div>
                                    </div>
                                </div>
                                <p class="text-short entity-text">
                                        ${f.moTa}
                                </p>
                            </div>
                        </article>
                    </div>
                </c:forEach>
            </div>
            <div class="slick-arrows">
                <div class="slick-arrow-prev">
                            <span class="th-dots th-arrow-left th-dots-animated">
                                <span></span>
                                <span></span>
                                <span></span>
                            </span>
                </div>
                <div class="slick-arrow-next">
                            <span class="th-dots th-arrow-right th-dots-animated">
                                <span></span>
                                <span></span>
                                <span></span>
                            </span>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="section-long">
    <div class="container">
        <div class="section-head">
            <h2 class="section-title text-uppercase">Latest news</h2>
        </div>
        <div class="grid row">
            <c:forEach items="${films}" var="f">
                <div class="col-md-6">
                    <article class="article-tape-entity">
                        <a class="entity-preview" href="article-sidebar-right.html" data-role="hover-wrap">
                                <span class="embed-responsive embed-responsive-16by9">
                                    <img class="embed-responsive-item" src="${f.img}" alt="" />
                                </span>
                            <span class="entity-date">
                                    <span class="tape-block tape-horizontal tape-single bg-theme text-white">
                                        <span class="tape-dots"></span>
                                        <span class="tape-content m-auto">${f.ngayKhoiChieu}</span>
                                        <span class="tape-dots"></span>
                                    </span>
                                </span>
                            <span class="d-over bg-black-80 collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                    <span class="m-auto"><i class="fas fa-search"></i></span>
                                </span>
                        </a>
                        <div class="entity-content">
                            <h4 class="entity-title">
                                <a class="content-link" href="article-sidebar-right.html">${f.tenPhim}</a>
                            </h4>
                            <div class="entity-category">
                                <a class="content-link" href="news-blocks-sidebar-right.html">${f.loaiPhim}</a>,
                                <a class="content-link" href="news-blocks-sidebar-right.html">${f.quocGia}</a>
                            </div>
                            <p class="text-short entity-text">
                                    ${f.moTa}
                            </p>
                            <div class="entity-actions">
                                <a class="text-uppercase" href="article-sidebar-right.html">Xem Thêm</a>
                            </div>
                        </div>
                    </article>
                </div>
            </c:forEach>
        </div>
        <div class="section-bottom">
            <a class="btn btn-theme" href="news-blocks-sidebar-right.html">View All News</a>
        </div>
    </div>
</section>
<section>
    <div class="gmap-with-map">
        <div class="gmap" data-lat="-33.878897" data-lng="151.103737"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 ml-lg-auto">
                    <div class="gmap-form bg-white">
                        <h4 class="form-title text-uppercase">Contact
                            <span class="text-theme">us</span>
                        </h4>
                        <p class="form-text">We understand your requirement and provide quality works</p>
                        <form autocomplete="off">
                            <div class="row form-grid">
                                <div class="col-sm-6">
                                    <div class="input-view-flat input-group">
                                        <input class="form-control" name="name" type="text" placeholder="Name" />
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="input-view-flat input-group">
                                        <input class="form-control" name="email" type="email" placeholder="Email" />
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="input-view-flat input-group">
                                        <textarea class="form-control" name="message" placeholder="Message"></textarea>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <button class="px-5 btn btn-theme" type="submit">Send</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<a class="scroll-top disabled" href="#"><i class="fas fa-angle-up" aria-hidden="true"></i></a>
<footer class="section-text-white footer footer-links bg-darken">
    <div class="footer-body container">
        <div class="row">
            <div class="col-sm-6 col-lg-3">
                <a class="footer-logo" href="./">
                            <span class="logo-element">
                                <span class="logo-tape">
                                    <span class="svg-content svg-fill-theme" data-svg="./images/svg/logo-part.svg"></span>
                                </span>
                                <span class="logo-text text-uppercase">
                                    <span>M</span>emico</span>
                            </span>
                </a>
                <div class="footer-content">
                    <p class="footer-text">Sidestate NSW 4132,
                        <br/>Australia</p>
                    <p class="footer-text">Call us:&nbsp;&nbsp;(555) 555-0312</p>
                </div>
            </div>
            <div class="col-sm-6 col-lg-3">
                <h5 class="footer-title text-uppercase">Movies</h5>
                <ul class="list-unstyled list-wide footer-content">
                    <li>
                        <a class="content-link" href="#">All Movies</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">Upcoming movies</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">Top 100 movies</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">Blockbasters</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">British movies</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">Summer movies collection</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">Movie trailers</a>
                    </li>
                </ul>
            </div>
            <div class="col-sm-6 col-lg-3">
                <h5 class="footer-title text-uppercase">Information</h5>
                <ul class="list-unstyled list-wide footer-content">
                    <li>
                        <a class="content-link" href="#">Schedule</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">News</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">Contact us</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">Community</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">Blog</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">Events</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">Help center</a>
                    </li>
                </ul>
            </div>
            <div class="col-sm-6 col-lg-3">
                <h5 class="footer-title text-uppercase">Follow</h5>
                <ul class="list-wide footer-content list-inline">
                    <li class="list-inline-item">
                        <a class="content-link" href="#"><i class="fab fa-slack-hash"></i></a>
                    </li>
                    <li class="list-inline-item">
                        <a class="content-link" href="#"><i class="fab fa-twitter"></i></a>
                    </li>
                    <li class="list-inline-item">
                        <a class="content-link" href="#"><i class="fab fa-facebook-f"></i></a>
                    </li>
                    <li class="list-inline-item">
                        <a class="content-link" href="#"><i class="fab fa-dribbble"></i></a>
                    </li>
                    <li class="list-inline-item">
                        <a class="content-link" href="#"><i class="fab fa-google-plus-g"></i></a>
                    </li>
                    <li class="list-inline-item">
                        <a class="content-link" href="#"><i class="fab fa-instagram"></i></a>
                    </li>
                </ul>
                <h5 class="footer-title text-uppercase">Subscribe</h5>
                <div class="footer-content">
                    <p class="footer-text">Get latest movie news right away with our subscription</p>
                    <form class="footer-form" autocomplete="off">
                        <div class="input-group">
                            <input class="form-control" name="email" type="email" placeholder="Your email" />
                            <div class="input-group-append">
                                <button class="btn btn-theme" type="submit"><i class="fas fa-angle-right"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-copy">
        <div class="container">Copyright 2019 &copy; AmigosThemes. All rights reserved.</div>
    </div>
</footer>
<!-- jQuery library -->
<script src="./js/jquery-3.3.1.js"></script>
<!-- Bootstrap -->
<script src="./bootstrap/js/bootstrap.js"></script>
<!-- Paralax.js -->
<script src="./parallax.js/parallax.js"></script>
<!-- Waypoints -->
<script src="./waypoints/jquery.waypoints.min.js"></script>
<!-- Slick carousel -->
<script src="./slick/slick.min.js"></script>
<!-- Magnific Popup -->
<script src="./magnific-popup/jquery.magnific-popup.min.js"></script>
<!-- Inits product scripts -->
<script src="./js/script.js"></script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAJ4Qy67ZAILavdLyYV2ZwlShd0VAqzRXA&callback=initMap"></script>
<script async defer src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js"></script>
</body>
</html>
<script src="notification.js"></script>
