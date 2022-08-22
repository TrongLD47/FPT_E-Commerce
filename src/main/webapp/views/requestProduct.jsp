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
<title>FPT-EC</title>

<meta name="description" content="" />

<!-- Favicon -->
<link rel="icon" type="image/x-icon" href="../imgs/logo.png" />
<!------------ CSS core ------------ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/core.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/theme-default.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/ProductList.css">

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
<!-- Helpers -->
<script src="${pageContext.request.contextPath}/newjs/helpers.js"></script>
<!---------------  Import Header JS ---------------->
<script type="module"
	src="${pageContext.request.contextPath}/newjs/importPage.js"></script>
</head>
<header class="header-wrapper">
	<div class="header fixed-header">
		<!-- Header - bottom -->
		<div class="header-bottom">

			<!-- Header-left -->
			<ul class="header-bottom-left">
				<div
					class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
					<a href="#menu-toggle" class="btn btn-default menu-toggle"><i
						class="bx bx-menu bx-sm"></i></a>


				</div>
				<li class="header-bottom-logo"><a href="#"> <img
						src="${pageContext.request.contextPath}/imgs/logo.png"
						alt="logo" />
				</a></li>
			</ul>
			<!-- end Header-left -->
			<!-- Header-right -->
			<ul class="header-bottom-right">
				<li class="header-bottom-right-item"><a href="#"> <i
						class="far fa-bell"></i>
				</a></li>
				<li class="header-bottom-right-item"><a href="#"> <i
						class="fas fa-shopping-bag"></i>
				</a></li>
				<li class="header-bottom-right-items user">
					<div class="header-bottom-right-item">
						<a href="#"> <i class="far fa-user"></i>
						</a>
					</div>
					<div class="user-right">
						<a class="about-user" href="#"> <span class="about-user-1">Tài
								khoản</span> <span class="about-user-2">Xin chào!</span>
						</a> <i class="fas fa-caret-down"></i>
					</div>
				</li>
			</ul>
			<!-- end Header-right -->
		</div>
	</div>
</header>
<
<aside class="nav" id="layout-menu">
	<i class="fa-solid fa-angle-left" onclick="closeNav()"></i>
	<nav class="nav__container " id="layout-navbar">

		<div class="list-group">


			<div id="wrapper-navbar">
				<div class="nav__list">
					<div class="nav__items">

						<div class="nav__dropdown">
							<a class="nav__link"> <i class='bx bx-closet nav__icon'></i>
								<span class="nav__name">Danh mục</span>
							</a>

							<div class="nav__dropdown-collapse">
								<div class="nav__dropdown-content">
									<a href="${pageContext.request.contextPath}/admin/listCategory"
										class="nav__dropdown-item">Tất cả danh mục</a> <a
										href="${pageContext.request.contextPath}/admin/addCategory"
										class="nav__dropdown-item">Thêm danh mục</a>
								</div>
							</div>
						</div>

						<div class="nav__dropdown">
							<a class="nav__link"> <i class='bx bx-task nav__icon'></i> <span
								class="nav__name">Danh mục phụ</span>

							</a>

							<div class="nav__dropdown-collapse">
								<div class="nav__dropdown-content">
									<a href="${pageContext.request.contextPath}/admin/listSubCategory"
										class="nav__dropdown-item">Tât cả danh mục phụ</a> <a
										href="${pageContext.request.contextPath}/admin/addSubCategory"
										class="nav__dropdown-item">Thêm danh mục phụ</a>
								</div>
							</div>
						</div>

						<div class="nav__dropdown">
							<a href=""
								class="nav__link"> <i class='bx bxs-discount nav__icon'></i>
								<span class="nav__name">Yêu cầu</span>
							</a>
							<div class="nav__dropdown-collapse">
								<div class="nav__dropdown-content">
									<a href="${pageContext.request.contextPath}/admin/requestProduct"
										class="nav__dropdown-item">Yêu cầu duyệt sản phẩm</a> <a
										href="${pageContext.request.contextPath}/admin/requestShop"
										class="nav__dropdown-item">Yêu cầu duyệt shop </a>
								</div>
							</div>
						</div>
					
						</a>
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
			<div class=" flex-grow-1 container-p-y">
				<div class="row">
					<div class="col-xxl col-sm-12">
						<div class="">
							<form:form
								action="${pageContext.request.contextPath}/admin/doSearchProduct"
								method="get">

								<div class="card mb-4 ">
									<div class="col-md-12">
										<div class="form-group">
											<label for="productName" class=""></label> <input type="text"
												class="form-control" name="keyword" id="productName"
												placeholder="Nhập tên hoặc code của sản phẩm">
										</div>

									</div>
									<div class="row">
										<div class="btn-group">
											<a href="#">
												<button type="submit" class="button btn primary">
													<span>Tìm Kiếm</span>
												</button>
											</a> <a href="#">
												<button type="button"
													class="btn btn-outline-secondary btn-clear">
													<span>Xóa</span>
												</button>
											</a>
										</div>
									</div>
								</div>

							</form:form>
						</div>

						<div class="card mb-4">
							<div class="header-table">
								<h4 class="card-header">Yêu cầu sản phẩm</h4>
							</div>
							<div class=" table-responsive text-nowrap">
								<table class="table table-hover">
									<thead class="table-light">
										<tr>
											<th>ID</th>
											<th>Tên cửa hàng</th>
											<th>Tên sản phẩm</th>
											<th>Mã sản phẩm</th>
											<th>Danh mục phụ</th>
											<th>Giá</th>
											<th>Số lượng</th>
											<th>Kích cỡ</th>
											<th>Phần trăm KM</th>
											<th>Giá KM</th>
											<th>Thao tác</th>
										</tr>
									</thead>
									<tbody class=" table-border-bottom-0">
										<c:choose>
											<c:when
												test="${listProduct !=null && listProduct.size() gt 0}">
												<c:forEach items="${requestScope.listProduct }" var="item"
													varStatus="theCount">
													<tr>
														<th scope="row"><c:out value="${theCount.count}"></c:out></th>
														<td><c:out value="${item.shopEntity.name }"></c:out></td>
														<td><c:out value="${item.name }"></c:out></td>
														<td><c:out value="${item.code }"></c:out></td>
														<td><c:out value="${item.subCategoryEntity.nameSub }"></c:out></td>
														<td><c:out value="${item.unitPrice }"></c:out></td>
														<td><c:out value="${item.quantity }"></c:out></td>
														<td><c:out value="${item.productDetailsEntity.size }"></c:out></td>
														<td><c:out value="${item.discountEntity.percentz }"></c:out></td>
														<td><c:out value="${item.promotionPrice }"></c:out></td>
														<td><div class="dropdown">
																<button type="button"
																	class="btn p-0 dropdown-toggle hide-arrow"
																	data-bs-toggle="dropdown">
																	<i class="bx bx-dots-vertical-rounded"></i>
																</button>
																<div class="dropdown-menu ">
																	<a class="dropdown-item"
																		href="${pageContext.request.contextPath}/admin/updateRequestProduct?id=${item.id }"><i
																		class="bx bx-edit-alt me-1"></i> View</a>
																</div>
															</div></td>
													</tr>
												</c:forEach>
												<tr>
													<td colspan="12"><c:import url="common/paging.jsp" />
													</td>
												</tr>
											</c:when>
											<c:otherwise>
												<tr>
													<td style="color: red; text-align: center" colspan="12">No
														data found</td>
												</tr>
											</c:otherwise>
										</c:choose>




									</tbody>
								</table>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
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

	<!-- ============= Clear Button ============== -->
	<script>
		function clearForm() {
			document.getElementById("form-addProduct").reset();
		}
	</script>

	<script>
		var e = document.getElementById("ddlViewBy");
		function show() {
			var as = document.forms[0].ddlViewBy.value;
			var strUser = e.options[e.selectedIndex].value;
			console.log(as, strUser);
		}
		e.onchange = show;
		show();
	</script>
</body>

</html>