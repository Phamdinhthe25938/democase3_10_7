<%--
  Created by IntelliJ IDEA.
  User: phamd
  Date: 7/10/2022
  Time: 12:56 PM
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
    body {
      margin: 0;
      padding-top: 40px;
      color: #2e323c;
      position: relative;
      height: 100%;
      background: antiquewhite;
    }
    .account-settings .user-profile {
      margin: 0 0 1rem 0;
      padding-bottom: 1rem;
      text-align: center;
    }
    .account-settings .user-profile .user-avatar {
      margin: 0 0 1rem 0;
    }
    .account-settings .user-profile .user-avatar img {
      width: 90px;
      height: 90px;
      -webkit-border-radius: 100px;
      -moz-border-radius: 100px;
      border-radius: 100px;
    }
    .account-settings .user-profile h5.user-name {
      margin: 0 0 0.5rem 0;
    }
    .account-settings .user-profile h6.user-email {
      margin: 0;
      font-size: 0.8rem;
      font-weight: 400;
      color: #9fa8b9;
    }
    .account-settings .about {
      margin: 2rem 0 0 0;
      text-align: center;
    }
    .account-settings .about h5 {
      margin: 0 0 15px 0;
      color: #007ae1;
    }
    .account-settings .about p {
      font-size: 0.825rem;
    }
    .form-control {
      border: 1px solid #cfd1d8;
      -webkit-border-radius: 2px;
      -moz-border-radius: 2px;
      border-radius: 2px;
      font-size: .825rem;
      background: #ffffff;
      color: #2e323c;
    }

    .card {
      background: #ffffff;
      -webkit-border-radius: 5px;
      -moz-border-radius: 5px;
      border-radius: 5px;
      border: 0;
      margin-bottom: 1rem;
    }
  </style>
</head>
<body>
<div class="container">
  <div class="row gutters">
    <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
      <div class="card h-100">
        <div class="card-body" style="background: aliceblue">
          <div class="account-settings">
            <div class="user-profile">
              <div class="user-avatar">
                <img src="${film.img}" alt="Maxwell Admin">
              </div>
              <h5 class="user-name">${film.tenPhim}</h5>
              <h6 class="user-email">${film.img}</h6>
            </div>
<%--            <div class="about">--%>
<%--              <h5>About</h5>--%>
<%--              <p>I'm Yuki. Full Stack Designer I enjoy creating user-centric, delightful and human experiences.</p>--%>
<%--            </div>--%>
          </div>
        </div>
      </div>
    </div>
    <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
      <div class="card h-100">
        <div class="card-body" style="background: aliceblue;">
          <form action="/filmManager?action=edit&id=${idPhim}" method="post">
            <div class="row gutters">
              <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <h6 class="mb-2 text-primary">Chỉnh sửa thông tin phim</h6>
              </div>
              <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                <div class="form-group">
                  <label for="fullName">Tên phim</label>
                  <input type="text" class="form-control" name="tenPhim" id="fullName" placeholder="Tên phim">
                </div>
              </div>
              <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                <div class="form-group">
                  <label for="eMail">Thời gian</label>
                  <input type="text" class="form-control" name="thoiGian" id="eMail" placeholder="Thời gian phim">
                </div>
              </div>
              <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                <div class="form-group">
                  <label for="phone">Loại phim</label>
                  <input type="text" class="form-control" id="phone" name="loaiPhim" placeholder="Loại phim">
                </div>
              </div>
              <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                <div class="form-group">
                  <label for="daodien">Đạo diễn </label>
                  <input type="text" class="form-control" name="daoDien" id="daodien" placeholder="Website url">
                </div>
              </div>
              <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                <div class="form-group">
                  <label for="quocgia">Quốc gia</label>
                  <input type="text" class="form-control" name="quocGia" id="quocgia" placeholder="Quốc gia">
                </div>
              </div>
              <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                <div class="form-group">
                  <label for="dienvien">Diễn viên</label>
                  <input type="text" class="form-control" name="dienVien" id="dienvien" placeholder="Diễn viên">
                </div>
              </div>
              <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                <div class="form-group">
                  <label for="nsx">Nhà sản xuất</label>
                  <input type="text" class="form-control" name="nhaSX" id="nsx" placeholder="Nhà sản xuất">
                </div>
              </div>
              <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                <div class="form-group">
                  <label for="NKC">Ngày khởi chiếu</label>
                  <input type="date" class="form-control" name="ngayKhoiChieu" id="NKC" placeholder="Ngày khởi chiếu">
                </div>
              </div>
              <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                <div class="form-group">
                  <label for="mota">Mô tả</label>
                  <textarea class="form-control" id="mota" name="moTa" required></textarea>
                </div>
              </div>
              <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                <div class="form-group">
                  <label for="linktrailer">Link trailer</label>
                  <input type="text" class="form-control"name="trailer" id="linktrailer" placeholder="Link trailer">
                </div>
              </div>
              <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                <div class="form-group">
                  <label for="linkanh">Link ảnh</label>
                  <input type="text" class="form-control" name="img" id="linkanh" placeholder="Link ảnh">
                </div>
              </div>
              <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                <div class="form-group">
                  <label for="giaPhim">Gía phim</label>
                  <input type="text" class="form-control" name="giaPhim" id="giaPhim" placeholder="Gía phim">
                </div>
              </div>
            </div>
            <button type="submit" id="submit" name="submit" class="btn btn-primary">Update</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
