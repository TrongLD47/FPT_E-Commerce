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
<title>List Orders</title>
<!------------ CSS core ------------ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/core.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/theme-default.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/OrderList.css">

<!------------- Add Mutiple Image -------------->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!----Header---->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/sideBar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/header.css" />
<!--------------- form ------------------------------- -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet">


<!-- FontAwsome...Icon -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/fonts/fontawesome-free-6.1.1-web/css/all.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">


</head>
<header class="header-wrapper">
	<div class="preloader">
		<div class="preloader-inner">
			<div class="preloader-icon">
				<span></span> <span></span>
			</div>
		</div>
	</div>
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
											class="nav__dropdown-item">Tât cả đơn hàng</a> <a
											href="${pageContext.request.contextPath}/shop/listOrderCancel"
											class="nav__dropdown-item">Đơn hủy</a>
									</div>
								</div>
							</div>

							<a href="${pageContext.request.contextPath}/shop/listDiscount" class="nav__link"> <i
								class='bx bxs-discount nav__icon'></i> <span class="nav__name">Khuyến mãi</span>
							</a> <!-- <a href="#" class="nav__link"> <i
								class=' bx bxs-bar-chart-square nav__icon'></i> <span
								class="nav__name">Report</span>
							</a> -->
						</div>
					</div>
				</div>
			</div>
		</nav>
	</aside>
<body>

	<div class="">
		<!-- Content wrapper -->
		<div class="content-wrapper">
			<!-- Content -->
			<div class="flex-grow-1">

				<div class="card mb-4 ">
					<div class="row">
						<div class="col-md-8">
							<div class="input-group input-group-merge">
								<input type="text" class="form-control"
									placeholder="    Tìm kiếm..." aria-label="     Search..."
									aria-describedby="basic-addon-search31" /> <span
									class="input-group-text" id="basic-addon-search"><i
									class="bx bx-search"></i></span>
							</div>
						</div>
						<div class="col-md-4">
							<div class="btn btnArond">
								<a>
									<button type="button" class="button btn primary">
										<span>Tìm kiếm</span>
									</button>
								</a> <a onclick="clearForm()">
									<button type="button" class="btn btn-outline-secondary">Export</button>
								</a>
							</div>
						</div>
					</div>
				</div>

				<div class="row ">
					<div class="col-sm-12 center-block col-xxl">
						<div class="">
							<div class="card mb-4 ">
								<form class="" action="">
									<div class="header-table">
										<h4 class="card-header">Danh sách đặt hàng</h4>
									</div>
									<div class="table-responsive text-nowrap">
										<table class="table table-hover">
											<thead class="table-light">
												<tr>
													<th>STT</th>
													<th>ID đơn hàng</th>
													<th>Sản Phẩm</th>
													<th>Mã Sản Phẩm</th>
													<th>Tổng cộng</th>
													<th>Thành tiền</th>
													<th>Số Lượng</th>
													<th>Ngày Tạo</th>
													<th>Trạng thái</th>
													<th>Thao tác</th>
												</tr>
											</thead>
											<tbody class="table-border-bottom-0">
												<c:forEach items="${orders}" var="item" varStatus="loop">
													<tr>
														<td>${loop.index+1}</td>
														<td>${item.orderEntity.id}</td>
														<td>${item.productEntity.name}</td>
														<!-- <td>ảnh </td> -->
														<td>${item.productEntity.id}</td>
														<td>${item.totalPrice}</td>
														<td>${item.totalDiscountPrice}</td>
														<td>${item.quantity}</td>
														<td>${item.createDateOrder}</td>
														<td><c:choose>
																<c:when test="${item.status == 1}">
																	<lable class="badge bg-label-secondary">Chờ xác
																	nhận</lable>
																</c:when>

																<c:when test="${item.status == 2}">
																	<lable class="badge bg-label-warning">Chờ lấy
																	hàng</lable>
																</c:when>

																<c:when test="${item.status == 3}">
																	<lable class="badge bg-label-primary">Đang giao</lable>
																</c:when>

																<c:when test="${item.status == 4}">
																	<lable class="badge bg-label-success">Đã giao</lable>
																</c:when>

																<c:when test="${item.status == 5}">
																	<lable class="badge bg-label-danger">Đã hủy</lable>
																</c:when>
															</c:choose></td>

														<td>
															<div class="dropdown">
																<button type="button"
																	class="btn p-0 dropdown-toggle hide-arrow"
																	data-bs-toggle="dropdown">
																	<i class="bx bx-dots-vertical-rounded"></i>
																</button>
																<div class="dropdown-menu">
																	<a class="dropdown-item"
																		href="${pageContext.request.contextPath}/shop/orderDetail/${item.id}"><i
																		class="fa-solid fa-eye me-1"></i> Xem</a>
																</div>
															</div>
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- / Content -->
	</div>

	<!-- / Content -->
	</div>


	<!-- build:js assets/vendor/js/core.js -->
	<script src="${pageContext.request.contextPath}/jquery/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/popper.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/menu.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/main.js"></script>

	<script
		src="${pageContext.request.contextPath}/newjs/perfect-scrollbar.js"></script>
	<!-- Vendors JS -->
	<script src="../assets/vendor/libs/apex-charts/apexcharts.js"></script>
	<!-- ============= Clear Button ============== -->
	<script>
		function clearForm() {
			document.getElementById("form-addProduct").reset();
		}
	</script>

	<script>
		function showMessReject(id) {
			var option = confirm('Are you sure to reject order ' + id);
			if (option === true) {
				window.location.href = 'updateStatusOrder?id=' + id;
			}
		}
	</script>
	<!-- Nice Select JS -->
	<script src="${pageContext.request.contextPath}/js1/nicesellect.js"></script>
	<!-- Active JS -->
	<script src="${pageContext.request.contextPath}/js1/active.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/popup.js"></script>
</body>

</html>