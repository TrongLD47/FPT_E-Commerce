<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
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
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
	integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
	integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!------------------ SLIDE  IMAGE --------------------->
<link rel="stylesheet"
	href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
<!------------------ CSS ---------------------->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/base.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/shared.css">
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
	<div class="Employed">
		<!-- Header -->
		<header class="header-wrapper">
			<div class="header fixed-header">
				<!-- Header - top-->
				<div class="header-top">
					<div class="header-top-left">
						<i class="fas fa-home header-top-left-link"></i> <a
							class="header-top-left-link" href="#">Bán hàng cùng FPT</a>
						<c:choose>
							<c:when test="${sessionScope.email == null}">
							</c:when>
							<c:when test="${sessionScope.email != null}">
								<i class="fas fa-home header-top-left-link"></i>
								<a class="header-top-left-link"
									href="${pageContext.request.contextPath}/customer/registerShop">Đăng
									kí để trở thành người bán</a>
							</c:when>
						</c:choose>
					</div>
					<div class="header-top-right">
						<div>
							<span class="header-top-right-link">Hotline</span> <a
								class="header-top-right-link" href="tel:0933932517">0933.932.517</a>
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
								src="./imgs/logo.png" alt="logo" />
						</a></li>
						<li class="header-bottom-item"><a href="#"> <span
								class="header-bottom-item-text text-hover active">FPT
									E-Commerce</span>
						</a></li>
						<li class="header-bottom-item"><a href="#"> <span
								class="header-bottom-item-text text-hover"></span>
						</a></li>
					</ul>
					<!-- end Header-left -->
					<!-- Header-center -->
					<ul class="header-bottom-center">
						<div class="header-center-input">
						<a  href="${pageContext.request.contextPath}/search">
							<input type="text" placeholder="Nhập từ khóa tìm kiếm " />
						</a>
							
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

				<!-- end Header - bottom -->
			</div>
		</header>
		<!-- end Header -->

		<!-- Slide -->

		<div class="swiper-container two page-section bg-w"
			style="margin-top: 1px; padding-bottom: 60px">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="slider-image">
						<img src="${pageContext.request.contextPath}/imgs/slidetop-3.webp"
							alt="" />
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slider-image">
						<img src="${pageContext.request.contextPath}/imgs/slidetop-1.webp"
							" alt="" />
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slider-image">
						<img src="${pageContext.request.contextPath}/imgs/slidetop-2.webp"
							" alt="" />
					</div>
				</div>
				<!-- Add Pagination -->
			</div>
			<div class="swiper-pagination"></div>

			<div class="swiper-button-prev"></div>
			<div class="swiper-button-next"></div>
		</div>
		<!-- end Slide -->

		<!-- Content -->
		<div class="content">
			<section class="product page-section">
				<div class="tittle-product">
					<h3>Sản phẩm bán chạy</h3>
				</div>
				<ul class="category-product">
					<c:choose>
						<c:when
							test="${listSubCategory !=null && listSubCategory.size() gt 0}">
							<c:forEach items="${requestScope.listSubCategory }" var="item"
								varStatus="theCount">
								<li class="category-product-item"><a href="#"><c:out
											value="${item.nameSub }" /></a></li>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td style="color: red; text-align: center" colspan="12">Không
									có danh mục nào</td>
							</tr>
						</c:otherwise>

					</c:choose>
				</ul>
				<ul class="category-about row">
					<c:choose>
						<c:when
							test="${listSubCategory !=null && listSubCategory.size() gt 0}">
							<c:forEach items="${requestScope.listProduct }" var="item"
								varStatus="theCount">
								<li class="col c-6 m-4 l-2-4 py-1"><a
									href="${pageContext.request.contextPath}/detailProduct?id=${item.id}">
										<div class="card">
											<div class="card-img">
												<img src="${item.pathImage }" alt="" />
											</div>
											<div class="card-text">
												<a
													href="${pageContext.request.contextPath}/shop-detail?id=${item.shopEntity.id}"><h3
														class="card-title">
														<c:out value="${item.shopEntity.name }" />
													</h3></a>
												<%--<p class="card-des truncate">${item.description }</p> --%>
												<a href="${pageContext.request.contextPath}/detailProduct?id=${item.id}">
													<p class="card-des truncate">
														${item.name }</p> <span class="card-price"> <c:out
															value="${item.unitPrice }" />
												</span> <span class="card-price-discount"> <c:out
															value="${item.discountEntity.percentz }" />%
												</span>
													<p class="card-price-cost">
														<c:out value="${item.promotionPrice }" />
														<i> đ</i>
													</p>
												</a>

											</div>
										</div>
								</a></li>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td style="color: red; text-align: center" colspan="12">Không
									có sản phẩm nào</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</ul>
			</section>

			<section class="page-section mt-1">
				<div class="tittle-product">
					<h3>Tiêu điểm</h3>
				</div>
				<ul class="category-about row">
					<li class="col c-12 m-6 l-6"><a href="#">
							<div class="card">
								<img
									src="${pageContext.request.contextPath}/imgs/tieudiem1.webp"
									alt="tieu diem" />
							</div>
					</a></li>
					<li class="col c-12 m-6 l-6"><a href="#">
							<div class="card">
								<img
									src="${pageContext.request.contextPath}/imgs/tieudiem2.webp"
									alt="tieu diem" />
							</div>
					</a></li>
				</ul>
			</section>

			<section class="page-section mt-1">
				<div class="tittle-product">
					<h3>Top danh mục</h3>
					<ul class="top-category row">
						<c:forEach items="${requestScope.listCategory }" var="item"
							varStatus="theCount">
							<li class="col c-4 m-3 l-2-4"><a href="#">
									<div class="top-item">
										<span><i class="fas fa-tshirt"></i></span>
										<div class="top-text">
											<p class="top-title">
												<c:out value="${item.name }" />
											</p>
											<!-- <span class="top-quant">7,337</span><span>sản phẩm</span> -->
										</div>
										<span class="top-arr"><i class="fas fa-angle-right"></i></span>
									</div>
							</a></li>
						</c:forEach>
					</ul>
				</div>
			</section>

			<section class="page-section mt-1 three">
				<div class="tittle-product"
					style="margin-bottom: 15px; padding-left: 40px">
					<h3>Thương hiệu mới</h3>
				</div>
				<div class="slide-bottom-wraper">
					<ul class="slide-bottom bg-w">
						<li class="slide-bottom-item"><a href="#">
								<div class="slide-bottom-img">
									<img
										src="${pageContext.request.contextPath}/imgs/slidebot-1.webp"
										alt="bran-new" />
								</div>
						</a></li>
						<li class="slide-bottom-item active"><a href="#">
								<div class="slide-bottom-img">
									<img
										src="${pageContext.request.contextPath}/imgs/slidebot-2.webp"
										alt="bran-new" />
								</div>
						</a></li>
						<li class="slide-bottom-item"><a href="#">
								<div class="slide-bottom-img">
									<img
										src="${pageContext.request.contextPath}/imgs/slidebot-3.webp"
										alt="bran-new" />
								</div>
						</a></li>
						<li class="slide-bottom-item"><a href="#">
								<div class="slide-bottom-img">
									<img
										src="${pageContext.request.contextPath}/imgs/slidebot-4.webp"
										alt="bran-new" />
								</div>
						</a></li>
						<li class="slide-bottom-item"><a href="#">
								<div class="slide-bottom-img">
									<img
										src="${pageContext.request.contextPath}/imgs/slidebot-5.webp"
										alt="bran-new" />
								</div>
						</a></li>
						<li class="slide-bottom-item"><a href="#">
								<div class="slide-bottom-img">
									<img
										src="${pageContext.request.contextPath}/imgs/slidebot-6.webp"
										alt="bran-new" />
								</div>
						</a></li>
					</ul>
					<div class="btn-group">
						<span class="btn-pre"><i class="fas fa-angle-left"></i></span> <span
							class="btn-next"><i class="fas fa-angle-right"></i></span>
					</div>
					<div class="dots"></div>
				</div>
			</section>

			<section class="page-section mt-1">
				<div class="tittle-product">
					<h3>Sản phẩm mới</h3>
				</div>
				<ul class="category-about row">
					<c:choose>
						<c:when
							test="${listProductDate !=null && listProductDate.size() gt 0}">
							<c:forEach items="${requestScope.listProductDate }" var="item"
								varStatus="theCount">
								<li class="col c-6 m-4 l-2-4 py-1"><a
									href="${pageContext.request.contextPath}/detailProduct?id=${item.id}">
										<div class="card">
											<div class="card-img">
												<img src="${item.pathImage }" alt="" />
											</div>
											<div class="card-text">
												<a
													href="${pageContext.request.contextPath}/shop-detail?id=${item.shopEntity.id}"><h3
														class="card-title">
														<c:out value="${item.shopEntity.name }" />
													</h3></a>
												<%--<p class="card-des truncate">${item.description }</p> --%>
												<a href="${pageContext.request.contextPath}/detailProduct?id=${item.id}">
													<p class="card-des truncate">
														${item.name }</p> <span class="card-price"> <c:out
															value="${item.unitPrice }" />
												</span> <span class="card-price-discount"> <c:out
															value="${item.discountEntity.percentz }" />%
												</span>
													<p class="card-price-cost">
														<c:out value="${item.promotionPrice }" />
														<i> đ</i>
													</p>
												</a>
											</div>
										</div>
								</a></li>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td style="color: red; text-align: center" colspan="12">Không
									có sản phẩm nào</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</ul>
			</section>

			<section class="page-section mt-1">
				<div class="tittle-product">
					<h3>Thương hiệu bạn có thể biết</h3>
				</div>
				<ul class="category-about row">
					<li class="col c-12 m-4 l-4"><a href="#">
							<div class="card">
								<img
									src="${pageContext.request.contextPath}/imgs/slidebot-4.webp"
									alt="tieu diem" />
							</div>
					</a></li>
					<li class="col c-12 m-8 l-8"><a href="#">
							<div class="card">
								<img
									src="${pageContext.request.contextPath}/imgs/last_slide_1.webp"
									alt="tieu diem" />
							</div>
					</a></li>
				</ul>
			</section>

			<section class="page-section mt-1">
				<div class="tittle-product">
					<h3>Gợi ý cho bạn</h3>
				</div>
				<ul class="category-about wrap row">
					<c:choose>
						<c:when
							test="${listSubCategory !=null && listSubCategory.size() gt 0}">
							<c:forEach items="${requestScope.listProduct }" var="item"
								varStatus="theCount">
								<li class="col c-6 m-4 l-2-4 py-1"><a
									href="${pageContext.request.contextPath}/detailProduct?id=${item.id}">
										<div class="card">
											<div class="card-img">
												<img src="${item.pathImage }" alt="" />
											</div>
											<div class="card-text">
												<a
													href="${pageContext.request.contextPath}/shop-detail?id=${item.shopEntity.id}"><h3
														class="card-title">
														<c:out value="${item.shopEntity.name }" />
													</h3></a>
												<%--<p class="card-des truncate">${item.description }</p> --%>
												<a href="${pageContext.request.contextPath}/detailProduct?id=${item.id}">
													<p class="card-des truncate">
														${item.name }</p> <span class="card-price"> <c:out
															value="${item.unitPrice }" />
												</span> <span class="card-price-discount"> <c:out
															value="${item.discountEntity.percentz }" />%
												</span>
													<p class="card-price-cost">
														<c:out value="${item.promotionPrice }" />
														<i> đ</i>
													</p>
												</a>
											</div>
										</div>
								</a></li>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td style="color: red; text-align: center" colspan="12">Không
									có sản phẩm nào</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</ul>

			</section>
		</div>
		<!-- end Content -->

		<!-- footer -->
	</div>
	<footer class="footer">
		<div class="footer_top">
			<div class="footer_top-item">
				<div class="block_wrapper">
					<ul class="block_list">
						<li class="block_item logo"><a href="/"><img
								src="${pageContext.request.contextPath}/imgs/logo.png"
								alt="logo-white" /></a></li>
						<li class="block_item"><a class="block_link"
							href="tel:0906.880.960" title="Hotline: 0906.880.960">Hotline:
								0933.932.517</a></li>
						<li class="block_item"><a class="block_link" href="/"
							title="9h-18h từ Thứ 2 đến Thứ 6">(9h-18h từ Thứ 2 đến Thứ 6)</a>
						</li>
						<li class="block_item"><a class="block_link"
							href="email:customer@fecvn.com"
							title="Email: customer@fecvn.com">Email:
								Trongldde140257@fpt.edu.vn</a></li>
					</ul>
					<h5 class="block_heading">Kết nối với chúng tôi</h5>
					<ul class="block-app-list">
						<li class="block-app-item"><a
							href="https://www.instagram.com/" title="Instagram"><i
								class="fab fa-instagram-square"></i></a></li>
						<li class="block-app-item"><a class="dosiin_d-block"
							href="https://www.facebook.com/daihocfptdanang" title="Facebook"><i
								class="fab fa-facebook"></i></a></li>
					</ul>
				</div>
				<div class="block_wrapper">
					<h5 class="block_heading">Về FEC</h5>

					<ul class="block_list">
						<li class="block_item"><a class="block_link" href="#">Các
								điều khoản khác</a></li>
						<li class="block_item"><a class="block_link" href="#">Hợp
								tác</a></li>
						<li class="block_item"><a class="block_link" href="#">Hỏi
								và Đáp</a></li>
						<li class="block_item"><a class="block_link" href="#">Hạn
								chế với thời gian và quản lý</a></li>
						<li class="block_item"><a class="block_link" href="#">Nghĩa
								vụ của người bán</a></li>
						<li class="block_item"><a class="block_link" href="#">Nghĩa
								vụ của khách hàng</a></li>
						<li class="block_item"><a class="block_link" href="#">Chính
								sách vận chuyển</a></li>
						<li class="block_item"><a class="block_link" href="#">Về
								chúng tôi</a></li>
					</ul>
				</div>
				<div class="block_wrapper">
					<h5 class="block_heading">Nội dung chính sách</h5>
					<ul class="block_list">
						<li class="block_item"><a class="block_link" href="#">Chính
								sách bảo mật</a></li>
						<li class="block_item"><a class="block_link" href="#">Điều
								khoản dịch vụ</a></li>
						<li class="block_item"><a class="block_link" href="#">Chính
								sách thành viên</a></li>
						<li class="block_item"><a class="block_link" href="#">Chính
								sách thanh toán</a></li>
						<li class="block_item"><a class="block_link" href="#">Chính
								sách bảo mật thanh toán</a></li>
						<li class="block_item"><a class="block_link" href="#">Chính
								sách dành cho khách hàng</a></li>
					</ul>
				</div>
				<div class="block_wrapper">
					<h5 class="block_heading">Cách thức thanh toán</h5>
					<ul class="block_card-list">
						<li class="block_card-item">
							<div class="card-item_list">
								<a class="block_link" href="/" title="COD Tiền mặt">
									<div class="card-item_box">
										<div class="card-item_icon">
											<img
												src="${pageContext.request.contextPath}/imgs/social/cod.webp"
												alt="Tiền mặt" title="Tiền mặt">
										</div>
										<div class="card-item_text">Tiền mặt</div>
									</div>
								</a>
								<%-- <a class="block_link" href="/" title="Momo">
									<div class="card-item_box">
										<div class="card-item_icon">
											<img
												src="${pageContext.request.contextPath}/imgs/social/momo.png"
												alt="Momo" title="Momo" />
										</div>
										<div class="card-item_text">Momo</div>
									</div>
								</a> --%>
							</div>
						</li>

						<%-- <li class="block_card-item">
							<div class="card-item_list">
								<a class="block_link" href="/" title="Internet Banking">
									<div class="card-item_box">
										<div class="card-item_icon">
											<img
												src="${pageContext.request.contextPath}/imgs/social/credit-card.png"
												alt="Internet Banking" title="Internet Banking" />
										</div>
										<div class="card-item_text">Internet Banking</div>
									</div>
								</a>
							</div>
						</li> --%>
					</ul>
				</div>
			</div>
		</div>
		<div class="footer_bot">Copyright 2022 &copy; FPT University
			DaNang</div>
	</footer>
	<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

	<!---------------  Slide  ---------------->
	<script type="module"
		src="${pageContext.request.contextPath}/js/slide.js"></script>



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

	<script type="module"
		src="${pageContext.request.contextPath}/newjs/importPage.js"></script>
	<script>
		function menuToggle() {
			const toggleMenu = document.querySelector(".menu");
			toggleMenu.classList.toggle("active");
		}
	</script>
</body>
</html>