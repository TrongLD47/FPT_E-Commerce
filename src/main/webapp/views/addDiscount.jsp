<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Discount</title>
<!------------ CSS core ------------ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/core.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/theme-default.css">
<!--========== CSS ==========-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/sideBar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/header.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/AddDiscount.css">
<!------------- Add Mutiple Image -------------->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!--========== BOX ICONS ==========-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
<!-- FontAwsome -->
<link rel="stylesheet"
	href="../assets/vendor/fonts/fontawesome-free-6.1.1-web/css/all.min.css">
<!--------------- form ------------------------------- -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet">

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
			<!-- Header - bottom -->
			<div class="header-bottom">

				<!-- Header-left -->
				<ul class="header-bottom-left">
				<!-- begin SideBar toggle -->
					<div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
						<a  onclick="openNav()" class="btn btn-default openbtn"><i
							class="bx bx-menu bx-sm"></i></a>
					</div>
					<!-- emd SideBar toggle -->
					<li class="header-bottom-logo"><a
						href="${pageContext.request.contextPath}/home"> <img
							src="${pageContext.request.contextPath}/imgs/logo.png"
							alt="logo" />
					</a></li>
				</ul>
				<!-- end Header-left -->
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
								class="fas fa-shopping-bag"><span class="badge"
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
											href="${pageContext.request.contextPath}/customer/updateProfile">
												Thông tin </a></li>
										<li><a href="logout"> Đăng xuất </a></li>

									</c:when>

								</c:choose>
							</ul>
						</div>
					</li>
				</ul>
				<!-- end Header-right -->
			</div>
		</div>
	</header>
	<!-- end Header -->
	<!--========== NAV ==========-->
	<aside class="nav" id="layout-menu" >
	<i class="fa-solid fa-angle-left" onclick="closeNav()"></i>
		<nav class="nav__container " id="layout-navbar">

			<div class="list-group">


				<div id="wrapper-navbar">
					<div class="nav__list">
						<div class="nav__items">
							<!-- <div class="top-nav">
                              <h3 class="nav__subtitle">Menu</h3>
                          </div> -->
							<!-- <a href="#" class="nav__link active">
                              <i class='bx bx-home nav__icon'></i>
                              <span class="nav__name">Home</span>
                          </a> -->

							<div class="nav__dropdown">
								<a class="nav__link"> <i class='bx bx-closet nav__icon'></i>
									<span class="nav__name">Quản lý sản phẩm</span>

								</a>

								<div class="nav__dropdown-collapse">
									<div class="nav__dropdown-content">
										<a href="${pageContext.request.contextPath}/shop/listProduct"
											class="nav__dropdown-item">Tất cả sản phẩm</a> <a
											href="${pageContext.request.contextPath}/shop/addProduct"
											class="nav__dropdown-item">Thêm sản phẩm</a> 
											<a href="${pageContext.request.contextPath}/shop/listProductBanned"
											class="nav__dropdown-item">Sản phẩm vi phạm</a>
									</div>
								</div>
							</div>

							<div class="nav__dropdown">
								<a class="nav__link"> <i class='bx bx-task nav__icon'></i> <span
									class="nav__name">Quản lý đơn hàng</span>

								</a>

								<div class="nav__dropdown-collapse">
									<div class="nav__dropdown-content">
										<a href="${pageContext.request.contextPath}/shop/listOrder"
											class="nav__dropdown-item">Tât cả đơn hàng</a>
											<a  class="nav__dropdown-item"></a>
									</div>
								</div>
							</div>

							<a href="${pageContext.request.contextPath}/shop/listDiscount" class="nav__link"> <i
								class='bx bxs-discount nav__icon'></i> <span class="nav__name">Khuyến mãi</span>
							</a><!--  <a href="#" class="nav__link"> <i
								class=' bx bxs-bar-chart-square nav__icon'></i> <span
								class="nav__name">Report</span> -->
							</a>
						</div>
					</div>
				</div>
			</div>
		</nav>
	</aside>

	<div class="layout-page">
		<div class="content-wrapper">
			<div class="col-sm-12 flex-grow-1 container-p-y">
				<div class="row">
					<div class=" center-block col-xxl">
						<form:form action="doAddDiscount" id="form-addDiscount"
							cssClass="card mb-3 mb-lg-5" method="post"
							modelAttribute="discount">
							<!-- Header -->
							<div class="card-header">
								<h4 class="card-header-title">Thông tin khuyến mãi</h4>
							</div>
							<!-- End Header -->
							<!-- Body -->
							<div class="card-body">
								<div class="row">
									<div class="form-group">
										<label for="productNameLabel" class="input-label">Mã
											Khuyến Mãi <i class="tio-help-outlined text-body ml-1"
											data-toggle="tooltip" data-placement="top"></i>
										</label>
										<form:input path="code" type="text" class="form-control"
											name="productName" id="productNameLabel" />
									</div>
								</div>

								<div class="row">
									<div class="col-sm-12">
										<div class="form-group">
											<label for="productPrice" class="input-label">Tên
												Khuyến Mãi</label>
											<form:input path="name" type="text" cssClass="form-control"
												name="productName" id="productNameLabel"
												placeholder="#SE1406" />
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-6">
										<!-- Form Group -->
										<div class="form-group">
											<label for="ValueOrder" class="input-label">Phần Trăm
												Khuyến Mãi</label>
											<form:input path="percentz" cssClass="form-control"
												type="text" id="ValueOrder" />
										</div>
										<!-- End Form Group -->
									</div>
									<!-- <div class="col-sm-6">
                                        Form Group
                                        <div class="form-group">
                                            <label for="ValueDiscount" class="input-label">Value Of The Discount</label>
                                            <input class="form-control" type="text" id="ValueDiscount"
                                                placeholder="10$" />
                                        </div>
                                        End Form Group
                                    </div> -->
								</div>

								<div class="row">
									<div class="col-sm-6">
										<!-- Form Group -->
										<div class="form-group">
											<label for="html5-datetime-local-input" class="input-label">Ngày
												bắt đầu </label>
											<form:input class="form-control" type="date"
												id="datetime-local-input" path="startDateDiscount" />
										</div>
										<!-- End Form Group -->
									</div>
									<div class="col-sm-6">
										<!-- Form Group -->
										<div class="form-group">
											<label for="html5-datetime-local-input" class="input-label">End
												Date</label>
											<form:input cssClass="form-control" type="date"
												id="html5-datetime-local-input" path="endDateDiscount" />
										</div>
										<!-- End Form Group -->
									</div>
								</div>

								<div class="row">
									<div class="form-group">
										<label for="productDescription" class="input-label">Mô
											tả</label>
										<form:textarea path="description" cssClass="form-control"
											id="productDescription" rows="7" />
									</div>
								</div>



								<div class="btn btnArond">
									<a onclick="clearForm()">
										<button type="button" class="btn btn-warning">Xóa</button>
									</a> <a href="#">
										<button type="submit" class="btn button primary">
											<span> Xác nhận </span>
										</button>
									</a> <a href="${pageContext.request.contextPath}/shop/listDiscount">
										<button type="button" class="btn btn-danger">Đóng</button>
									</a>
								</div>

							</div>
							<!-- Body -->
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- ================= Upload Mutilple Image ===================== -->
	<script>
		jQuery(document).ready(function() {
			ImgUpload();
		});

		function ImgUpload() {
			var imgWrap = "";
			var imgArray = [];

			$('.upload__inputfile')
					.each(
							function() {
								$(this)
										.on(
												'change',
												function(e) {
													imgWrap = $(this)
															.closest(
																	'.upload__box')
															.find(
																	'.upload__img-wrap');
													var maxLength = $(this)
															.attr(
																	'data-max_length');

													var files = e.target.files;
													var filesArr = Array.prototype.slice
															.call(files);
													var iterator = 0;
													filesArr
															.forEach(function(
																	f, index) {

																if (!f.type
																		.match('image.*')) {
																	return;
																}

																if (imgArray.length > maxLength) {
																	return false
																} else {
																	var len = 0;
																	for (var i = 0; i < imgArray.length; i++) {
																		if (imgArray[i] !== undefined) {
																			len++;
																		}
																	}
																	if (len > maxLength) {
																		return false;
																	} else {
																		imgArray
																				.push(f);

																		var reader = new FileReader();
																		reader.onload = function(
																				e) {
																			var html = "<div class='upload__img-box'><div style='background-image: url("
																					+ e.target.result
																					+ ")' data-number='"
																					+ $(".upload__img-close").length
																					+ "' data-file='"
																					+ f.name
																					+ "' class='img-bg'><div class='upload__img-close'></div></div></div>";
																			imgWrap
																					.append(html);
																			iterator++;
																		}
																		reader
																				.readAsDataURL(f);
																	}
																}
															});
												});
							});

			$('body').on('click', ".upload__img-close", function(e) {
				var file = $(this).parent().data("file");
				for (var i = 0; i < imgArray.length; i++) {
					if (imgArray[i].name === file) {
						imgArray.splice(i, 1);
						break;
					}
				}
				$(this).parent().parent().remove();
			});
		}
	</script>



	<!-- ============= Clear Button ============== -->
	<script>
		function clearForm() {
			document.getElementById("form-addProduct").reset();
		}
	</script>
	<!-- Nice Select JS -->
	<script src="${pageContext.request.contextPath}/js1/nicesellect.js"></script>
	<!-- Active JS -->
	<script src="${pageContext.request.contextPath}/js1/active.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/popup.js"></script>
</body>

</html>