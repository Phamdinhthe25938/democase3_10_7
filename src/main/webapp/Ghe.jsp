<%@ page import="Service.VeService" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>Booking Form HTML Template</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/style.css" />

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>

<body>
	<div id="booking"  class="section" style="background-image: url("")" >
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form">
						<div class="form-header">
							<h1>Book a Ticket</h1>
						</div>
						<form method="post" action="
						/BookTicket?action=chonghe&idPhim=${idPhim}&idUser=${idUser}&img=${img}
                        &tenPhim=${tenPhim}&loaiPhim=${loaiPhim}&quocGia=${quocGia}
                        &thoiGian=${thoiGian}&ngayKhoiChieu=${ngayKhoiChieu}&giaPhim=${giaPhim}&idUser=${idUser}">
							<div class="row">
								<div class="col-sm-8">
									<div class="form-group" style="display: flex">
										<div class="imgLinkTicket">
											<img style="width: 181px;height: 272px;border-radius: 15px" src="${img}" alt="">
										</div>
										<div class="inforTicket" style="margin-left: 20px;color: aliceblue">
											<div>
												<span style="font-size: 24px;font-weight: 600;color: chocolate">${tenPhim}</span>
											</div>
											<div style="margin-top: 10px;color:aquamarine;">
												<span>${loaiPhim} , </span>
												<span>${quocGia}</span>
											</div>
											<div style="margin-top: 8px">
												<p>
													<i style="color:brown;">Thời lượng: &nbsp ${thoiGian}</i>
												</p>
												<p style="margin-top: 8px">
													<i style=color:antiquewhite;>NKC: &nbsp ${ngayKhoiChieu}</i>
												</p>
												<p style="color:cornsilk;margin-top: 8px">
													<i>Giá vé: ${giaPhim}</i>
												</p>
												<p style="color:cornsilk;margin-top: 8px">
													<i>Vé đã mua: <span style="color: red"> ${soLuongDaMua}</span> / 50</i>
												</p>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div>
										<p style="color: #17a2b8;">Ghế trống :</p>
										<c:forEach items="${listGheDrum}" var="g">
											<i style="color:#fff;">${g},</i>
										</c:forEach>
									</div>
									<div class="form-group">
										<span class="form-label">Số ghế</span>
										<input name="idGhe" class="form-control" type="number" placeholder="Nhập số ghế">
										<span class="form-label">Tên ghê</span>
										<input name="tenGhe" class="form-control" type="text" placeholder="Nhập tên ghế">
									</div>
								</div>
							</div>
							<p >
								<span style="color:#fff;">Chú ý :</span>
							   <i style="color: red;">
								   <%
									   String message = (String) request.getAttribute("message");
									   if(message !=null){
										   out.print(message);
									   }
								   %>
							   </i>
							</p>
							<div id="bookingNowTicket" class="form-btn">
								<button class="submit-btn" type="submit">Book Now</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<script src="notification.js"></script>
