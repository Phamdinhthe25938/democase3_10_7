<%--
  Created by IntelliJ IDEA.
  User: TienAnh
  Date: 7/8/2022
  Time: 11:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Memico - Cinema Bootstrap HTML5 Template</title>
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
        #replybtn{
            height: 30px;
            max-width: 50px;
            display: flex;
            justify-content: center;
            margin-top: -15px;
        }
        .header-view-pannel{
            height: 40px;
        }
    </style>
</head>
<body class="body">
<header class="header header-horizontal header-view-pannel">
    <div class="container">
        <nav class="navbar" id="replybtn">
            <a class="navbar-brand" href="/viewUser">
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
                    <li class="nav-item nav-item-arrow-down nav-hover-show-sub">
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
                    <li class="nav-item nav-item-arrow-down nav-hover-show-sub">
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
                    <li class="nav-item">
                        <a class="nav-link" href="movies-blocks.html">Movies</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact-us.html">Contact us</a>
                    </li>
                </ul>
                <div class="navbar-extra">
                    <a class="btn-theme btn" href="#"><i class="fas fa-ticket-alt"></i>&nbsp;&nbsp;Buy Ticket</a>
                </div>
            </div>
        </nav>
    </div>
</header>
<section class="after-head d-flex section-text-white position-relative">
    <c:forEach items="${phim}" var="p">
        <c:set var="namephim" value="${p.tenPhim}"/>
        <c:set var="checkp" value="${cinema}"/>
        <c:choose>
            <c:when test="${namephim == checkp}">

                <div class="d-background" data-image-src="${p.img}" data-parallax="scroll"></div>
                <div class="d-background bg-black-80"></div>
                <div class="top-block top-inner container">
                    <div class="top-block-content">
                        <h1 class="section-title">${namephim}</h1>
                    </div>
                </div>
            </c:when>
        </c:choose>
    </c:forEach>

</section>
<div class="container">
    <div class="sidebar-container">
        <div class="content">
            <section class="section-long">
                <div class="section-line">
                    <div class="movie-info-entity">
                        <div class="entity-poster" data-role="hover-wrap">

                            <c:forEach items="${phim}" var="p">
                            <c:set var="namephim" value="${p.tenPhim}"/>
                            <c:set var="checkp" value="${cinema}"/>
                            <c:choose>
                            <c:when test="${namephim == checkp}">

                            <div class="embed-responsive embed-responsive-poster">
                                <img class="embed-responsive-item" src="${p.img}" alt="" />
                            </div>
                            <div class="d-over bg-theme-lighted collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                <div class="entity-play">
                                    <a class="action-icon-theme action-icon-bordered rounded-circle" href="${p.trailer}" data-magnific-popup="iframe">
                                        <span class="icon-content"><i class="fas fa-play"></i></span>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="entity-content">
                            <h2 class="entity-title">${namephim}</h2>
                            <div class="entity-category">
                                <a class="content-link" >${p.loaiPhim}</a>
                            </div>
                            <div class="entity-info">
                                <div class="info-lines">
                                    <div class="info info-short">
                                        <span class="text-theme info-icon"><i class="fas fa-star"></i></span>
                                        <span class="info-text">${p.star}</span>
                                        <span class="info-rest">/5</span>
                                    </div>
                                    <div class="info info-short">
                                        <span class="text-theme info-icon"><i class="fas fa-clock"></i></span>
                                        <span class="info-text">${p.thoiGian}</span>
                                    </div>
                                </div>
                            </div>
                            <ul class="entity-list">
                                <li>
                                    <span class="entity-list-title">Ngày khởi chiếu :</span>
                                    <a class="content-link" >${p.ngayKhoiChieu}</a>
                                </li>
                                <li>
                                    <span class="entity-list-title">Đạo diễn: </span>
                                    <a class="content-link" >${p.daoDien}</a>
                                </li>
                                <li>
                                    <span class="entity-list-title">Diễn viên:</span>
                                    <a class="content-link" href="#">${p.dienVien}</a>,
                                </li>
                                <li>
                                    <span class="entity-list-title">Công ty sản xuất:</span>
                                    <a class="content-link" href="#">${p.nhaSX}</a>
                                </li>
                                <li>
                                    <span class="entity-list-title">Quốc gia:</span>
                                    <a class="content-link" >${p.quocGia}</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>


                <div class="section-line">
                    <div class="section-head">
                        <h2 class="section-title text-uppercase">Synopsis</h2>
                    </div>
                    <div class="section-description">
                        <p> ${p.moTa}</p>
                    </div>
                </div>
                </c:when>
                </c:choose>
                </c:forEach>
                <div class="section-line">
                    <div class="section-head">
                        <h2 class="section-title text-uppercase">Comments</h2>
                    </div>
                    <c:forEach items="${comment}" var="c">
                        <c:set var="phimz" value="${idphim}"/>
                        <c:set var="phimcomment" value="${c.idphim}"/>
                    <c:choose>
                    <c:when test="${phimz == phimcomment}">

                    <div class="comment-entity">
                        <div class="entity-inner">
                            <div class="entity-content">
                                <h4 class="entity-title">${c.account}</h4>
                                <p class="entity-subtext">${c.time}</p>
                                <p class="entity-text">${c.content}
                                </p>
                            </div>
                            <div class="entity-extra">
                                <div class="grid-md row" style="height: 23px">
                                    <c:set var="sao" value="${c.star}"/>
                                    <c:choose>
                                        <c:when test="${sao==1}">
                                            <div class="col-12 col-sm-auto">
                                                <div class="entity-rating">
                                                    <span class="entity-rating-icon text-theme"><i
                                                            class="fas fa-star"></i></span>
                                                    <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                                    <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                                    <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                                    <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                                </div>
                                            </div>
                                        </c:when>
                                        <c:when test="${sao==2}">
                                              <span class="entity-rating-icon text-theme"><i
                                                      class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon text-theme"><i
                                                    class="fas fa-star"></i></span>

                                            <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                        </c:when>
                                        <c:when test="${sao==3}">
                                              <span class="entity-rating-icon text-theme"><i
                                                      class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon text-theme"><i
                                                    class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon text-theme"><i
                                                    class="fas fa-star"></i></span>


                                            <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                        </c:when>
                                        <c:when test="${sao==4}">
                                              <span class="entity-rating-icon text-theme"><i
                                                      class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon text-theme"><i
                                                    class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon text-theme"><i
                                                    class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon text-theme"><i
                                                    class="fas fa-star"></i></span>

                                            <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                        </c:when>
                                        <c:when test="${sao==5}">
                                              <span class="entity-rating-icon text-theme"><i
                                                      class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon text-theme"><i
                                                    class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon text-theme"><i
                                                    class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon text-theme"><i
                                                    class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon text-theme"><i
                                                    class="fas fa-star"></i></span>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                        </c:otherwise>
                                    </c:choose>

                                        <%--                                    ---reppppp--%>
                                    <div class="ml-sm-auto col-auto" >
                                        <header class="header header-horizontal header-view-pannel" >

                                            <div class="container">
                                                <nav class="navbar">
                                                    <div class="navbar-collapse">
                                                        <ul class="navbar-nav" style="position: relative;bottom: 26px">
                                                            <li class="nav-item nav-item-arrow-down nav-hover-show-sub">
                                                                <a class="nav-link" onclick="display()"><i class="fas fa-reply"></i>&nbsp;&nbsp;reply</a>
                                                                <div class="nav-arrow" ><i class="fas fa-chevron-down"></i></div>
                                                                <ul class=" collapse nav" style="width: 500px; padding-left: 10px; padding-right: 10px" id="block" >
                                                                    <li class="nav-item">
                                                                        <div class="section-line">
                                                                            <form autocomplete="off" action="/dichvu?action=reply&cinema=${cinema}&idphim=${idphim}&id=${c.idcomentt}&username=${username}" method="post">
                                                                                <input value="${username}"  name="accountss" hidden>
                                                                                <div class="row form-grid">
                                                                                    <div class="col-12">
                                                                                        <div class="input-view-flat input-group">
                                                                                            <textarea id="comment_1" class="form-control" name="commentss" placeholder="Add reply"></textarea>
                                                                                        </div>
                                                                                    </div>

                                                                                    <div class="col-12">
                                                                                        <button class="px-5 btn btn-theme" type="submit">Send</button>
                                                                                    </div>
                                                                                </div>
                                                                            </form>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </nav>
                                            </div>
                                        </header>
                                    </div>


                                        <%--                ---reppppp--%>

                                </div>
                            </div>
                        </div>
                        <script>

                            function display() {
                                if (document.getElementById("block").style.display === "none"){
                                    document.getElementById("block").style.display= "block";
                                }else {
                                    document.getElementById("block").style.display = "none";
                                }

                            }

                        </script>


                            <%--                        --ref--%>
                        <c:forEach items="${reply}" var="r">
                            <c:set var="id" value="${r.idcomment}"/>
                            <c:set var="idcoment" value="${c.idcomentt}"/>
                            <c:choose>
                                <c:when test="${id ==idcoment}">
                                    <div class="comment-entity">
                                        <div class="entity-inner">
                                            <div class="entity-content">
                                                <h4 class="entity-title">${r.account}</h4>
                                                <p class="entity-subtext">${r.thoigian}</p>
                                                <p class="entity-text">${r.comment}
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </c:when>
                            </c:choose>

                        </c:forEach>
                            <%--                        --ref--%>

                    </div>

                    </c:when>
                    </c:choose>

                    </c:forEach>


                    <div class="section-line">
                        <div class="section-head">
                            <h2 class="section-title text-uppercase">Add comment</h2>
                        </div>

                        <form autocomplete="off" action="/dichvu?action=movie&cinema=${cinema}&idphim=${idphim}&username=${username}" method="post">
                            <input class="form-control" value="${username}" name="nameAccount" type="text" hidden />
                            <div class="row form-grid">
                                <div class="col-12">
                                    <div class="input-view-flat input-group">
                                        <textarea id="comment" class="form-control" name="comment"
                                                  placeholder="Add your review"></textarea>
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="rating-line">
                                        <label>Rating:</label>
                                        <div class="form-rating" name="rating">
                                            <input type="radio" id="rating-10" name="rating" value="10"/>
                                            <label for="rating-10" onclick="on1()">
                                                <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                                <span class="rating-icon"><i class="far fa-star"></i></span>
                                            </label>
                                            <input type="radio" id="rating-9" name="rating" value="9"/>
                                            <label for="rating-9" onclick="on2()">
                                                <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                                <span class="rating-icon"><i class="far fa-star"></i></span>
                                            </label>
                                            <input type="radio" id="rating-8" name="rating" value="8"/>
                                            <label for="rating-8" onclick="on3()">
                                                <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                                <span class="rating-icon"><i class="far fa-star"></i></span>
                                            </label>
                                            <input type="radio" id="rating-7" name="rating" value="7"/>
                                            <label for="rating-7" onclick="on4()">
                                                <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                                <span class="rating-icon"><i class="far fa-star"></i></span>
                                            </label>
                                            <input type="radio" id="rating-6" name="rating" value="6"/>
                                            <label for="rating-6" onclick="on5()">
                                                <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                                <span class="rating-icon"><i class="far fa-star"></i></span>
                                            </label>


                                        </div>
                                    </div>
                                </div>
                                <input hidden id="sao1" name="sao" value="0">
                                <script>
                                    function on1() {
                                        console.log("5");
                                        document.getElementById("sao1").value = 5;
                                    }

                                    function on2() {
                                        console.log("4");
                                        document.getElementById("sao1").value = 4;
                                    }

                                    function on3() {
                                        console.log("3");
                                        document.getElementById("sao1").value = 3;
                                    }

                                    function on4() {
                                        console.log("2");
                                        document.getElementById("sao1").value = 2;
                                    }

                                    function on5() {
                                        console.log("1");
                                        document.getElementById("sao1").value = 1;
                                    }
                                </script>
                                <div class="col-12">
                                    <button class="px-5 btn btn-theme" type="submit">Send</button>
                                </div>
                            </div>
                        </form>

                    </div>
            </section>
        </div>
        <div class="sidebar section-long order-lg-last">
            <section class="section-sidebar">
                <div class="section-head">
                    <h2 class="section-title text-uppercase">Latest movies</h2>
                </div>

                <c:forEach items="${phim}" var="p">
                    <div class="movie-short-line-entity">
                        <a class="entity-preview" >
                                <span class="embed-responsive embed-responsive-16by9">
                                    <img class="embed-responsive-item" style="position: relative" src="${p.img}" alt="" />
                                </span>
                        </a>
                        <div class="entity-content">
                            <h4 class="entity-title">
                                <a class="content-link" href="/dichvu?action=movie&cinema=${p.tenPhim}&username=${username}">${p.tenPhim}</a>
                            </h4>
                            <p class="entity-subtext">${p.ngayKhoiChieu}</p>
                        </div>
                    </div>
                </c:forEach>

            </section>


        </div>
    </div>
</div>
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
