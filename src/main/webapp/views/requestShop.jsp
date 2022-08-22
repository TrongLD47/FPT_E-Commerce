<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>

<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="../assets/"
	data-template="vertical-menu-template-free">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<title>FPT-EC Admin</title>

<meta name="description" content="" />

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="../imgs/logo.png" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
<!--------------- form ------------------------------- -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet">

<!-- FontAwsome chua -->

<link rel="stylesheet"
	href="../assets/vendor/fonts/fontawesome-free-6.1.1-web/css/all.min.css">

<!-- Icons. Uncomment required icon fonts -->


<!-- Core CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/RequestShop.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/perfect-scrollbar.css" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/apex-charts.css" />

<!-- Page CSS -->

<!-- Helpers -->
<script src="${pageContext.request.contextPath}/newjs/helpers.js"></script>

<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="${pageContext.request.contextPath}/newjs/config.js"></script>
</head>

<body>
	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">
			<!-- Menu -->

				<aside id="layout-menu"
				class="layout-menu menu-vertical menu bg-menu-theme">
				<div class="app-brand demo">
					<a href="${pageContext.request.contextPath}/home" class="app-brand-link"> <span
						class="app-brand-logo demo"> <img alt="" src="../imgs/logo.png">
					</span> <span class="app-brand-text demo menu-text fw-bolder ms-2">FPT-EC</span>
					</a> <a href="javascript:void(0);"
						class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
						<i class="bx bx-chevron-left bx-sm align-middle"></i>
					</a>
				</div>

				<div class="menu-inner-shadow"></div>

				<ul class="menu-inner py-1">
					<!-- Dashboard -->
					<li class="menu-item active"><a href="${pageContext.request.contextPath}/admin/mainAdmin"
						class="menu-link"> <i
							class="menu-icon tf-icons bx bx-home-circle"></i>
							<div data-i18n="Analytics">Bảng điều khiển</div>
					</a></li>

					<!-- E-Commerce -->
					<li class="menu-header small text-uppercase"><span
						class="menu-header-text">E-Commerce</span></li>
					<li class="menu-item "><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons bx bx-dock-top"></i>
							<div data-i18n="Category">Danh mục</div>
					</a>
						<ul class="menu-sub">
							<li class="menu-item"><a href="${pageContext.request.contextPath}/admin/listCategory"
								class="menu-link">
									<div data-i18n="CategoryList">Tất cả danh mục</div>
							</a></li>
							<li class="menu-item "><a href="${pageContext.request.contextPath}/admin/addCategory"
								class="menu-link">
									<div data-i18n="AddCategory">Thêm danh mục</div>
							</a></li>

						</ul></li>



					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <!-- <i class="menu-icon tf-icons bx bx-dock-top"></i> -->
							<i class="menu-icon tf-icons bx bx-copy"></i>
							<div data-i18n="SubCategory">Danh mục phụ</div>
					</a>
						<ul class="menu-sub">
							<li class="menu-item"><a href="${pageContext.request.contextPath}/admin/listSubCategory"
								class="menu-link">
									<div data-i18n="SubCategoryList">Tất cả danh mục phụ</div>
							</a></li>
							<li class="menu-item"><a href="${pageContext.request.contextPath}/admin/addSubCategory"
								class="menu-link">
									<div data-i18n="AddSubCategory">Thêm danh mục phụ</div>
							</a></li>

						</ul></li>

					<!-- <li class="menu-item">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bx-lock-open-alt"></i>
              <div data-i18n="SubCategory"> Sub Caregory</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item">
                <a href="./SubCategoryList.Html" class="menu-link">
                  <div data-i18n="SubCategoryList"> Sub Category List</div>
                </a>
              </li>
              <li class="menu-item">
                <a href="./AddSubCategory.html" class="menu-link">
                  <div data-i18n="AddSubCategory">Add Sub Category</div>
                </a>
              </li>

            </ul>
          </li> -->




					<li class="menu-item active"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons bx bx-cube-alt"></i>
							<div data-i18n="Misc">Yêu Cầu</div>
					</a>
						<ul class="menu-sub">
							<li class="menu-item"><a href="${pageContext.request.contextPath}/admin/requestProduct"
								class="menu-link">
									<div data-i18n="Error">Yêu cầu sản phẩm</div>
							</a></li>
							<li class="menu-item active"><a
								href="${pageContext.request.contextPath}/admin/requestShop" class="menu-link">
									<div data-i18n="Under Maintenance">Yêu cầu trở thành Shop</div>
							</a></li>
						</ul></li>
				</ul>
			</aside>
			<!-- / Menu -->

			<!-- Layout container -->
			<div class="layout-page">
				<!-- Navbar -->

				<nav
					class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
					id="layout-navbar">
					<div
						class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
						<a class="nav-item nav-link px-0 me-xl-4"
							href="javascript:void(0)"> <i class="bx bx-menu bx-sm"></i>
						</a>
					</div>

					<div class="navbar-nav-right d-flex align-items-center"
						id="navbar-collapse">
						<!-- Search -->
						<form:form
							action="${pageContext.request.contextPath}/admin/doSearchShop"
							method="get">
						<div class="navbar-nav align-items-center">
							<div class="nav-item d-flex align-items-center">
								<i class="bx bx-search fs-4 lh-0"></i> <input type="text"
									class="form-control border-0 shadow-none"
									placeholder="Search..." />
							</div>
						</div>
						</form:form>
						<!-- /Search -->

						<ul class="navbar-nav flex-row align-items-center ms-auto">
							<!-- Place this tag where you want the button to render. -->
							<li class="nav-item lh-1 me-3">
								<button
									class="btn rounded-pill btn-icon btn-outline-secondary
                ">
									<i class="fa-solid fa-bell"></i>
								</button>
							</li>

							<!-- User -->
							<li class="nav-item navbar-dropdown dropdown-user dropdown">
								<a class="nav-link dropdown-toggle hide-arrow"
								href="javascript:void(0);" data-bs-toggle="dropdown">
									<div class="avatar avatar-online">
										<img src="../assets/img/avatars/1.png" alt
											class="w-px-40 h-auto rounded-circle" />
									</div>
							</a>
								<ul class="dropdown-menu dropdown-menu-end">
									<li><a class="dropdown-item" href="#">
											<div class="d-flex">
												<div class="flex-shrink-0 me-3">
													<div class="avatar avatar-online">
														<img src="../assets/img/avatars/1.png" alt
															class="w-px-40 h-auto rounded-circle" />
													</div>
												</div>
												<div class="flex-grow-1">
													<span class="fw-semibold d-block">John Doe</span> <small
														class="text-muted">Admin</small>
												</div>
											</div>
									</a></li>
									<li>
										<div class="dropdown-divider"></div>
									</li>
									
									
									
									
									<li><a class="dropdown-item" href="${pageContext.request.contextPath}/logout">
											<i class="bx bx-power-off me-2"></i> <span
											class="align-middle">Đăng xuất</span>
									</a></li>
								</ul>
							</li>
							<!--/ User -->
						</ul>
					</div>
				</nav>

				<!-- / Navbar -->

				<!-- Content wrapper -->
				<div class="content-wrapper">
					<!-- Content -->

					<div class="container-xxl col-sm-12 center-block">
						<div class="">
							<div class="card mb-4 ">
								<form class="" action="">
									<div class="header-table">
										<h4 class="card-header">Danh sách yêu cầu</h4>

									</div>
									<div class="table-responsive text-nowrap">
										<table class="table table-hover">
											<thead class="table-light">
												<tr>
													<th>ID</th>
													<th>Tên người dùng</th>
													<th>Tên Shop</th>
													<th>Ngày gửi yêu cầu</th>
													<th>thao tác</th>
												</tr>
											</thead>
											<tbody class="table-border-bottom-0">
												<c:forEach items="${requestScope.shop }" var="item"
													varStatus="theCount">
													<tr>
														<!--   <td><input type="checkbox" name="" value="1" class="checkSingle" /></td> -->

														<td><c:out value="${item.id }"></c:out></td>
														<td><c:out value="${item.userEntity.username } "></c:out></td>
														<td><c:out value="${item.name }"></c:out>
														</td>
														<td><c:out value="${item.userEntity.createTime }"></c:out>
														</td>
														<td>
															<div class="dropdown">
																<button type="button"
																	class="btn p-0 dropdown-toggle hide-arrow"
																	data-bs-toggle="dropdown">
																	<i class="bx bx-dots-vertical-rounded"></i>
																</button>
																<div class="dropdown-menu ">
																	<a class="dropdown-item"
																	href="${pageContext.request.contextPath}/admin/updateShopStatus?id=${item.id }"><i
																	class="bx bx-edit-alt me-1"></i> Chi tiết</a>
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
				<!-- / Content -->

				<!-- Footer -->
				<footer class="content-footer footer bg-footer-theme">
					<div
						class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
						<div class="mb-2 mb-md-0">
							©
							<script>
								document.write(new Date().getFullYear());
							</script>
							, made with ❤️ by <a href="#" target="_blank"
								class="footer-link fw-bolder">Group 19 - FPT University</a>
						</div>
						<div>
							<a
								href="https://github.com/themeselection/sneat-html-admin-template-free/issues"
								target="_blank" class="footer-link me-4">Support</a>
						</div>
					</div>
				</footer>
				<!-- / Footer -->

				<div class="content-backdrop fade"></div>
			</div>
			<!-- Content wrapper -->
		</div>
		<!-- / Layout page -->
	</div>

	<!-- Overlay -->
	<div class="layout-overlay layout-menu-toggle"></div>
	</div>
	<!-- / Layout wrapper -->



	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
	<script src="${pageContext.request.contextPath}/jquery/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/popper.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/bootstrap.js"></script>
	<script
		src="${pageContext.request.contextPath}/newjs/perfect-scrollbar.js"></script>

	<script src="${pageContext.request.contextPath}/newjs/menu.js"></script>
	<!-- endbuild -->

	<!-- Vendors JS -->
	<script src="${pageContext.request.contextPath}/newjs/apexcharts.js"></script>

	<!-- Main JS -->
	<script src="${pageContext.request.contextPath}/newjs/main.js"></script>

	<!-- Page JS -->
	<script
		src="${pageContext.request.contextPath}/newjs/dashboards-analytics.js"></script>

	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<script>
		$(document).ready(function() {
			$("#checkedAll").change(function() {
				if (this.checked) {
					$(".checkSingle").each(function() {
						this.checked = true;
					});
				} else {
					$(".checkSingle").each(function() {
						this.checked = false;
					});
				}
			});

			$(".checkSingle").click(function() {
				if ($(this).is(":checked")) {
					var isAllChecked = 0;

					$(".checkSingle").each(function() {
						if (!this.checked)
							isAllChecked = 1;
					});

					if (isAllChecked == 0) {
						$("#checkedAll").prop("checked", true);
					}
				} else {
					$("#checkedAll").prop("checked", false);
				}
			});
		});
	</script>
</body>

</html>