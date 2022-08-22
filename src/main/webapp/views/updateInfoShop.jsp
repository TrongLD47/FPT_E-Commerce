<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- require -->
<link href="http://fonts.cdnfonts.com/css/sf-pro-display"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
	integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/base.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
	integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- require -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/shared.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pages/setting.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/breadcrumb.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/components/footer.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/components/modal.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/components/pagination.css" />
<style type="text/css">
.error {
	color: red;
}

.user__image1 {
	position: relative;
}

.btn-inner {
	position: absolute;
	top: 89%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.user__image1 input[type="file"] {
	display: none;
}

.user__image-upload {
	position: relative;
}

.user__image {
	position: absolute;
	top: 50%;
	left: 15%;
	transform: translate(-50%, -50%);
}

.btn-inner1 {
	opacity: 0;
	position: absolute;
	top: 60%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.btn-inner1:hover, .btn-badge-border:hover {
	transition: all 0.2s ease;
	opacity: 1;
}

.btn-badge-border {
	opacity: 0;
}

.bottomright {
	width: 300px;
	align-items: center;
	text-align: center;
	margin-top: 30px;
}

.bottomright li {
	font-weight: 500;
	margin-top: 15px;
	border: 1.5px solid #ccabdb;
	text-align: center;
	height: 40px;
	align-items: center;
	background: linear-gradient(135deg, #fce6f7, #d5d0f0);
	border-radius: 10px 10px;
	padding-top: 10px;
}

.bottomright li:hover {
	font-size: 18px;
	transition: all 0.5s ease;
}

.error {
	color: red;
}
</style>
<title>FPT-EC</title>

<meta name="description" content="" />

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="../imgs/logo.png" />
</head>
<body>
	<div class="preloader">
		<div class="preloader-inner">
			<div class="preloader-icon">
				<span></span> <span></span>
			</div>
		</div>
	</div>
	<!-- Header -->
	<header class="header-wrapper">
		<div class="header fixed-header">
			<!-- Header - top-->
			<div class="header-top">
				<div class="header-top-left">
					<i class="fas fa-home header-top-left-link"></i> <a
						class="header-top-left-link" href="#">Bán hàng cùng FEC</a>
				</div>
				<div class="header-top-right">
					<div>
						<span class="header-top-right-link">Hotline</span> <a
							class="header-top-right-link" href="tel:0906880960">0906.880.960</a>
					</div>
					<div>
						<i class="fab fa-facebook-messenger header-top-right-link"
							style="margin-right: 3px"></i> <a class="header-top-right-link"
							href="#">Bán hàng</a>
					</div>
				</div>
			</div>
			<!-- end Header Top -->
			<!-- Header - bottom -->
			<div class="header-bottom">
				<!-- Header-left -->
				<ul class="header-bottom-left">
					<li class="header-bottom-logo"><a
						href="${pageContext.request.contextPath}/home"> <img
							src="${pageContext.request.contextPath}/imgs/logo.png" alt="logo" />
					</a></li>
					<li class="header-bottom-item"><a href="#"> <span
							class="header-bottom-item-text text-hover active">FPT E-Commerce</span>
					</a></li>
					<li class="header-bottom-item"><a href="#"> <span
							class="header-bottom-item-text text-hover"></span>
					</a></li>
				</ul>
				<!-- end Header-left -->
				<!-- Header-center -->
				<ul class="header-bottom-center">
					<div class="header-center-input">
						<input type="text" placeholder="Nhập từ khóa tìm kiếm " />
					</div>
				</ul>
				<!-- end Header-center -->
				<!-- Header-right -->
				<ul class="header-bottom-right">
						<li class="header-bottom-right-items">
							<div class="header-bottom-right-item">
								<a href="#"> <i class="far fa-bell"></i>
								</a>
							</div>
						</li>
						<li class="header-bottom-right-items">
							<div class="header-bottom-right-item">
								<a href="${pageContext.request.contextPath}/cart"> <i
									class="fas fa-shopping-bag "><span class="badge"
										id="quantity-product-in-cart"></span></i>
								</a>
							</div>
						</li>
						<li class="header-bottom-right-items user action ">
							<div class="profile" onclick="menuToggle();">
								<div class="header-bottom-right-item">
									<a href="#"> <i class="far fa-user"></i>
									</a>
								</div>
								<div class="profile-right">

									<a class="about-user" href="#"> <span class="about-user-1"></span>
										<span class="about-user-2">Xin chào!</span> <span
										class="about-user-1"><c:out
												value="${sessionScope.email }"></c:out></span>
									</a>
								</div>
							</div>
							<div class="menu">
								<ul>
									<c:choose>
										<c:when test="${sessionScope.email == null}">
											<li><a href="login">Đăng Nhập</a></li>
											<li class="border-top"><a href="register">Đăng Ký</a></li>
										</c:when>
										<c:when test="${sessionScope.email != null}">
											<li><a
												href="#">
													Thông tin </a></li>
											<li><a href="${pageContext.request.contextPath}/logout"> Đăng xuất </a></li>

										</c:when>

									</c:choose>
								</ul>
							</div>
						</li>
					</ul>
				<!-- end Header-right -->
			</div>
			<!-- end Header - bottom -->

		</div>

	</header>
	<!-- end Header -->



	<!-- ----------------- Begin MAIN: SETTING ---------------------- -->
	<div class="mid-container" style="margin-top: 20px;">
		<div class="setting">
			<div class="setting__left">
				<nav class="sidebar" id="sidebar">
					<div class="aside__user">
						<div class="aside__user-img">
							<img
								src="${pageContext.request.contextPath}/${sessionScope.img1 }" />
						</div>
						<div class="aside__user-name">
							<c:out value="${sessionScope.nameShop }"></c:out>
						</div>
					</div>
					<ul class="nav">
						<li class="nav-item active" data-tab-select="user-information">
							<a class="nav-link" href="/pages/user-information.html"> <span
								class="menu-icon"> <i class="fas fa-user"></i>
							</span> <span class="menu-title">Shop của tôi</span>
						</a>
							<ul class="nav-child">
								<li class="nav-child-item active"
									data-tab-select="user-information"><a
									class="nav-child-link" href="../pages/shop-information.html">
										<span class="menu-child-title">Hồ sơ</span>
								</a></li>

							</ul>
						</li>
						<li class="nav-item" data-tab-select="user-order"><a
							class="nav-link" href="${pageContext.request.contextPath}/shop/listOrder"> <span
								class="menu-icon"> <i class="fab fa-shopify"></i>
							</span> <span class="menu-title">Đơn hàng</span>
						</a></li>
						<li class="nav-item" data-tab-select="user-order"><a
							class="nav-link" href="${pageContext.request.contextPath}/shop/listProduct"> <span
								class="menu-icon"> <i class="fab fa-shopify"></i>
							</span> <span class="menu-title">Sản phẩm</span>
						</a></li>
					</ul>
				</nav>
			</div>
			<div class="setting__right">
				<div class="user-info box" id="user-information">
					<div class="user-info-wrapper">
						<div class="user-info-title">Hồ sơ của shop</div>
						<div class="user-info-description">Quản lý hồ sơ để bảo mật
							tài khoản</div>
						<div class="divider"></div>
						<c:if test="${message != null }">
							<span class="error"><c:out value="${message }"></c:out></span>
						</c:if>
						<div class="user-info-form">
							<form:form class="form" autocomplete="no-thanks"
								enctype="multipart/form-data"
								action="${pageContext.request.contextPath}/shop/doUpdateShopInfo"
								modelAttribute="shop" method="post">
								<div class="form__wrapper">
									<div class="form__left">
										<form:hidden path="id" readonly="true" />
										<form:hidden path="status" readonly="true" />
										<div class="form-group">
											<label>Email Shop</label>
											<form:input type="text" cssClass="form-input" path="email"
												readonly="true" />
										</div>

										<div class="form-group">
											<label>Tên Shop</label>
											<form:input type="text" id="shopname" cssClass="form-input"
												path="name" placeholder="Tên Shop của bạn"
												autocomplete="off" />
										</div>
										<span style="color: red; padding-left: 110px"
											id="shopname_error"></span>
										<div class="form-group">
											<label>Số điện thoại</label>
											<form:input type="text" cssClass="form-input" path="phone"
												id="sdtshop" placeholder="Số điện thoại" autocomplete="off" />
										</div>
										<span style="color: red; padding-left: 110px"
											id="sdtshop_error"></span>
										<div class="form-group">
											<label>Địa chỉ</label>
											<form:input type="text" cssClass="form-input" path="address"
												placeholder="Địa chỉ" autocomplete="off" id="addressshop" />
										</div>
										<span style="color: red; padding-left: 110px"
											id="addressshop_error"></span>

										<div class="form-group">
											<label>Mô tả shop</label>
											<form:textarea cssClass="form-input" path="description"
												placeholder="mô tả" autocomplete="off" value=""
												id="shopdesc" />
										</div>
										<span style="color: red; padding-left: 110px"
											id="shopdesc_error"></span>
										<div class="form-group">
											<label>Chọn hình nền shop</label> <input type="file"
												name="multipartFile1" accept="image/png, image/jpeg" />
										</div>

										<div class="form-button">
											<button type="submit" class="btn btn-primary">
												<span>Xác nhận</span>
											</button>
										</div>
									</div>
									<div class="v-divider"></div>
									<div class="form__right">
										<div class="user__image1">
											<img
												src="${pageContext.request.contextPath}/${sessionScope.img2 }"
												alt="banner"> <label
												class="upload__button btn btn-badge-border" for="banner">
												<div class="btn-inner" style="opacity: 0.7">
													<span>Chọn ảnh bìa</span>
												</div>
											</label><input type="file" accept="image/png, image/jpeg"
												name="multipartFile2" id="banner" />



										</div>

										<div class="bottomright">
											<!-- <ul style="list-style-type: none">
												<a>
													<li>Xem shop</li>
												</a>
											</ul> -->
										</div>

									</div>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ----------------- End MAIN: SETTING  ---------------------- -->
	<!-- ----------------- Begin FOOTER---------------------- -->
	<
	<script src="${pageContext.request.contextPath}/newjs/popup.js"></script>

	<script src="http://code.jquery.com/jquery-3.4.1.min.js"
		integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/jquery.validate.js"></script>
	<script src="${pageContext.request.contextPath}/js1/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js1/jquery-migrate-3.0.0.js"></script>
	<script src="${pageContext.request.contextPath}/js1/jquery-ui.min.js"></script>
	<!-- Popper JS -->
	<script src="${pageContext.request.contextPath}/js1/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="${pageContext.request.contextPath}/js1/bootstrap.min.js"></script>
	<!-- Color JS -->
	<script src="${pageContext.request.contextPath}/js1/colors.js"></script>
	<!-- Slicknav JS -->
	<script src="${pageContext.request.contextPath}/js1/slicknav.min.js"></script>
	<!-- Owl Carousel JS -->
	<script src="${pageContext.request.contextPath}/js1/owl-carousel.js"></script>
	<!-- Magnific Popup JS -->
	<script src="${pageContext.request.contextPath}/js1/magnific-popup.js"></script>
	<!-- Fancybox JS -->
	<script src="${pageContext.request.contextPath}/js1/facnybox.min.js"></script>
	<!-- Waypoints JS -->
	<script src="${pageContext.request.contextPath}/js1/waypoints.min.js"></script>
	<!-- Countdown JS -->
	<script
		src="${pageContext.request.contextPath}/js1/finalcountdown.min.js"></script>
	<!-- Nice Select JS -->
	<script src="${pageContext.request.contextPath}/js1/nicesellect.js"></script>
	<!-- Ytplayer JS -->
	<script src="${pageContext.request.contextPath}/js1/ytplayer.min.js"></script>
	<!-- Flex Slider JS -->
	<script src="${pageContext.request.contextPath}/js1/flex-slider.js"></script>
	<!-- ScrollUp JS -->
	<script src="${pageContext.request.contextPath}/js1/scrollup.js"></script>
	<!-- Onepage Nav JS -->
	<script src="${pageContext.request.contextPath}/js1/onepage-nav.min.js"></script>
	<!-- Easing JS -->
	<script src="${pageContext.request.contextPath}/js1/easing.js"></script>
	<!-- Active JS -->
	<script src="${pageContext.request.contextPath}/js1/active.js"></script>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$('#form')
									.submit(
											function() {

												// BƯỚC 1: Lấy dữ liệu từ form
												var shopname = $.trim($(
														'#shopname').val());
												var sdtshop = $.trim($(
														'#sdtshop').val());
												var addressshop = $.trim($(
														'#addressshop').val());
												var shopdesc = $.trim($(
														'#shopdesc').val());

												var flag = true;

												if (shopname == '') {
													$('#shopname_error')
															.text(
																	'Vui lòng nhập tên cửa hàng !');
													flag = false;
												} else {
													$('#shopname_error').text(
															'');
												}
												// subcategory
												if (sdtshop == '') {
													$('#sdtshop_error')
															.text(
																	'Vui lòng nhập số điện thoại cửa hàng !');
													flag = false;
												} else {
													$('#sdtshop_error')
															.text('');
												}
												// codesubcategory
												if (addressshop == '') {
													$('#addressshop_error')
															.text(
																	'Vui lòng nhập  đia chỉ cửa hàng !');
													flag = false;
												} else {
													$('#addressshop_error')
															.text('');
												}
												if (shopdesc == '') {
													$('#shopdesc_error')
															.text(
																	'Vui lòng nhập  mô tả cửa hàng !');
													flag = false;
												} else {
													$('#shopdesc_error').text(
															'');
												}

												return flag;
											});
						});
	</script>

</body>
</html>