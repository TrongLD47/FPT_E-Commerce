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
<title>Search</title>

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

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
<!-- require -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/base.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/shared.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/shop.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/search.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/breadcrumb.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/footer.css" />
<title>Search</title>
</head>


<body>
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
							src="./imgs/logo.png" alt="logo" />
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
						<input type="text" onblur="Product.searchProduct();" id="key-word"
							placeholder="Nhập từ khóa tìm kiếm " />
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
			<!-- end Header - bottom -->

			<!-- ------------------------ Begin BREADCRUMB ------------------------------- -->
			<div class="header__menu">	
				<a class="header__prev" onclick="history.back()" style="cursor: pointer;"><i class="fas fa-angle-left"></i><span
					class="menu__text--back">Quay lại</span></a>
			</div>
			<!-- ------------------------ End BREADCRUMB ------------------------------- -->
		
		</div>

	</header>
	<!-- end Header -->

	<!-- ----------------- Begin MAIN---------------------- -->
	<main class="search">
		<div class="page-section brand-store__wrapper">
			<div class="brand-store">
				<div class="brand-store__left">
					<aside class="branch-store__aside aside">
						<h3 class="filter__title">
							<i class="fa-solid fa-filter"></i><span>Bộ lọc tìm kiếm</span>
						</h3>
						<div class="filter__group">
							<div class="aside__header-box">
								<h4>Theo danh mục</h4>
							</div>
							<div class="divider"></div>
							<div class="aside-bar">
								<ul class="aside-bar__list category-filter">

									<li class="aside-bar__item">
										<div class="aside-bar__item-box">
											<a class="aside-bar__item-link">
												<div class="input--radio__wrapper">
													<input name="category" id="0" type="checkbox" value="0"
														onclick="Product.searchProduct()" /><label
														class="text-hover" for="0">Quần</label>
												</div>
											</a>
										</div>
									</li>

									<li class="aside-bar__item">
										<div class="aside-bar__item-box">
											<a class="aside-bar__item-link">
												<div class="input--radio__wrapper">
													<input name="category" id="1" type="checkbox" value="1"
														onclick="Product.searchProduct()" /><label
														class="text-hover" for="1">Nón</label>
												</div>
											</a>
										</div>
									</li>
									<li class="aside-bar__item">
										<div class="aside-bar__item-box">
											<a class="aside-bar__item-link">
												<div class="input--radio__wrapper">
													<input name="category" id="2" type="checkbox" value="2"
														onclick="Product.searchProduct()" /><label
														class="text-hover" for="2">Áo</label>
												</div>
											</a>
										</div>
									</li>
									<li class="aside-bar__item">
										<div class="aside-bar__item-box">
											<a class="aside-bar__item-link">
												<div class="input--radio__wrapper">
													<input name="category" id="3" type="checkbox" value="3"
														onclick="Product.searchProduct()" /><label
														class="text-hover" for="3">Túi</label>
												</div>
											</a>
										</div>
									</li>
									<li class="aside-bar__item">
										<div class="aside-bar__item-box">
											<a class="aside-bar__item-link">
												<div class="input--radio__wrapper">
													<input name="category" id="4" type="checkbox" value="4"
														onclick="Product.searchProduct()" /><label
														class="text-hover" for="4">Giày</label>
												</div>
											</a>
										</div>
									</li>
									<li class="aside-bar__item">
										<div class="aside-bar__item-box">
											<a class="aside-bar__item-link">
												<div class="input--radio__wrapper">
													<input name="category" id="5" type="checkbox" value="5"
														onclick="Product.searchProduct()" /><label
														class="text-hover" for="5">Phụ Kiện</label>
												</div>
											</a>
										</div>
									</li>
									<li class="aside-bar__item">
										<div class="aside-bar__item-box">
											<a class="aside-bar__item-link">
												<div class="input--radio__wrapper">
													<input name="category" id="6" type="checkbox" value="6"
														onclick="Product.searchProduct()" /><label
														class="text-hover" for="6">Váy / Đầm</label>
												</div>
											</a>
										</div>
									</li>
									<li class="aside-bar__item">
										<div class="aside-bar__item-box">
											<a class="aside-bar__item-link">
												<div class="input--radio__wrapper">
													<input name="category" id="7" type="checkbox" value="7"
														onclick="Product.searchProduct()" /><label
														class="text-hover" for="7">Đồ bộ</label>
												</div>
											</a>
										</div>
									</li>
									<li class="aside-bar__item">
										<div class="aside-bar__item-box">
											<a class="aside-bar__item-link">
												<div class="input--radio__wrapper">
													<input name="category" id="8" type="checkbox" value="8"
														onclick="Product.searchProduct()" /><label
														class="text-hover" for="8">Đồ Lót</label>
												</div>
											</a>
										</div>
									</li>
									<li class="aside-bar__item">
										<div class="aside-bar__item-box">
											<a class="aside-bar__item-link">
												<div class="input--radio__wrapper">
													<input name="category" id="9" type="checkbox" value="9"
														onclick="Product.searchProduct()" /><label
														class="text-hover" for="9">Nước Hoa</label>
												</div>
											</a>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<div class="filter__group">
							<div class="aside__header-box">
								<h4>Kích Thước</h4>
							</div>
							<div class="divider"></div>
							<div class="aside-bar">
								<ul class="aside-bar__list size-item size-filter">
									<li class="aside-bar__item">
										<div class="aside-bar__item-box">
											<a class="aside-bar__item-link">
												<div class="input--radio__wrapper">
													<input name="size" id="size-0" type="checkbox"
														onclick="Product.searchProduct()" value="0" /><label
														class="text-hover" for="size-0">XS</label>
												</div>
											</a>
										</div>
									</li>
									<li class="aside-bar__item">
										<div class="aside-bar__item-box">
											<a class="aside-bar__item-link">
												<div class="input--radio__wrapper">
													<input name="size" id="size-1" type="checkbox"
														onclick="Product.searchProduct()" value="1" /><label
														class="text-hover" for="size-1">S</label>
												</div>
											</a>
										</div>
									</li>
									<li class="aside-bar__item">
										<div class="aside-bar__item-box">
											<a class="aside-bar__item-link">
												<div class="input--radio__wrapper">
													<input name="size" id="size-2" type="checkbox"
														onclick="Product.searchProduct()" value="2" /><label
														class="text-hover" for="size-2">M</label>
												</div>
											</a>
										</div>
									</li>
									<li class="aside-bar__item">
										<div class="aside-bar__item-box">
											<a class="aside-bar__item-link">
												<div class="input--radio__wrapper">
													<input name="size" id="size-3" type="checkbox"
														onclick="Product.searchProduct()" value="3" /><label
														class="text-hover" for="size-3">L</label>
												</div>
											</a>
										</div>
									</li>
									<li class="aside-bar__item">
										<div class="aside-bar__item-box">
											<a class="aside-bar__item-link">
												<div class="input--radio__wrapper">
													<input name="size" id="size-4" type="checkbox"
														onclick="Product.searchProduct()" value="4" /><label
														class="text-hover" for="size-4">XL</label>
												</div>
											</a>
										</div>
									</li>
									<li class="aside-bar__item">
										<div class="aside-bar__item-box">
											<a class="aside-bar__item-link">
												<div class="input--radio__wrapper">
													<input name="size" id="size-5" type="checkbox"
														onclick="Product.searchProduct()" value="5" /><label
														class="text-hover" for="size-5">XXL</label>
												</div>
											</a>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<div class="button__wrapper">
							<button class="btn btn-primary"
								onclick="Product.clearCheckBox();">
								<span>Xóa Tất Cả</span>
							</button>
						</div>
					</aside>
				</div>
				<div class="brand-store__right">
					<div class="tittle-product">
						<h3>
							Shop liên quan đến "<span class="text-highlight key-word"></span>"
						</h3>
						<div class="section-description quantity-result"></div>
					</div>
					<div class="search__shop-list">
						<%--                    <div class="search-shop__item-wrapper">--%>
						<%--                        <a href="#">--%>
						<%--                            <div class="search-shop__item">--%>
						<%--                                <div class="search-shop__item-left">--%>
						<%--                                    <div class="search-shop__image-wrapper">--%>
						<%--                                        <img src="/../assets/img/shop/shop-banner.webp"--%>
						<%--                                             alt="shop-image" width="80px" height="80px">--%>
						<%--                                        <div class="badge"></div>--%>
						<%--                                    </div>--%>
						<%--                                    <div class="search-shop__info-wrapper">--%>
						<%--                                        <div class="search-shop__name">Name of the shop</div>--%>
						<%--                                        <div class="search-shop__username">mot-hai-ba-bon</div>--%>
						<%--                                        <div class="search-shop__statistic">--%>
						<%--                                            <strong>3</strong>&nbsp;người theo dõi--%>
						<%--                                        </div>--%>
						<%--                                    </div>--%>
						<%--                                </div>--%>
						<%--                            </div>--%>
						<%--                        </a>--%>
						<%--                    </div>--%>
					</div>
					<div class="tittle-product">
						<i class="fa-regular fa-lightbulb"></i>
						<h3>
							Kết quả tìm kiếm cho từ khoá '<span
								class="text-highlight key-word"></span>'
						</h3>
						<div class="section-description quantity-result-p"></div>
					</div>
					<div class="search__product-list">
						<div>
							<div class="grid grid-20">
								<!-- ======================= Begin PRODUCT ================================== -->
								<div>
									<ul class="category-about row product-search">
									</ul>
								</div>
								<!-- ======================= End PRODUCT ================================== -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<!-- ----------------- End MAIN---------------------- -->


	<script src="${pageContext.request.contextPath}/js/dropdownFilter.js"></script>
	<script src="${pageContext.request.contextPath}/js/search.js"></script>

	<!-- Nice Select JS -->
	<script src="${pageContext.request.contextPath}/js1/nicesellect.js"></script>
	<!-- Active JS -->
	<script src="${pageContext.request.contextPath}/js1/active.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/popup.js"></script>
</body>
<!-- ----------------- Begin FOOTER---------------------- -->
<footer class="footer">
		<div class="footer_top">
			<div class="footer_top-item">
				<div class="block_wrapper">
					<ul class="block_list">
						<li class="block_item logo">
						<a href="/"><img
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
<!-- ----------------- End FOOTER---------------------- -->
</html>