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
<!------------------CND JQUERY ------------------------>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!------------------ SLIDE  IMAGE --------------------->
<link rel="stylesheet"
	href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
<!------------------ CSS ---------------------->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/base.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/shared.css">
<title>Home</title>
</head>
<body>
	<div class="Employed">
		<!-- Header -->
		<header class="header-wrapper">
			<div class="header fixed-header">
				<!-- Header - top-->
				<div class="header-top">
					<div class="header-top-left">
						<i class="fas fa-home header-top-left-link"></i> <a
							class="header-top-left-link" href="#">B??n h??ng c??ng FPT</a>
						<c:choose>
							<c:when test="${sessionScope.email == null}">
							</c:when>
							<c:when test="${sessionScope.email != null}">
								<i class="fas fa-home header-top-left-link"></i>
								<a class="header-top-left-link"
									href="${pageContext.request.contextPath}/customer/registerShop">????ng
									k?? ????? tr??? th??nh ng?????i b??n</a>
							</c:when>
						</c:choose>
					</div>
					<div class="header-top-right">
						<div>
							<span class="header-top-right-link">Hotline</span> <a
								class="header-top-right-link" href="tel:0906880960">0906.880.960</a>
						</div>
						<div>
							<i class="fab fa-facebook-messenger header-top-right-link"
								style="margin-right: 3px"></i> <a class="header-top-right-link"
								href="#">B??n h??ng</a>
						</div>
					</div>
				</div>
				<!-- end Header Top -->
				<!-- Header - bottom -->
				<div class="header-bottom">
					<!-- Header-left -->
					<ul class="header-bottom-left">
						<li class="header-bottom-logo"><a href="#"> <img
								src="./assets/img/logo.svg" alt="logo" />
						</a></li>
						<li class="header-bottom-item"><a href="#"> <span
								class="header-bottom-item-text text-hover active">Shopping</span>
						</a></li>
						
					</ul>
					<!-- end Header-left -->
					<!-- Header-center -->
					<ul class="header-bottom-center">
						<div class="header-center-input">
							<input type="text" placeholder="Nh???p t??? kh??a t??m ki???m " />
						</div>
					</ul>
					<!-- end Header-center -->
					<!-- Header-right -->
					<ul class="header-bottom-right">
						<li class="header-bottom-right-items user action ">
							<div class="profile" onclick="menuToggle();">
								<div class="header-bottom-right-item">
									<a href="#"> <i class="far fa-user"></i>
									</a>
								</div>
								<div class="profile-right">
									<c:choose>
										<c:when test="${sessionScope.email == null}">
											<a class="about-user">						
											<span class="about-user-1">T??i kho???n</span>										
											<span class="about-user-2">Xin ch??o!</span>
											 <i class="fas fa-caret-down" style="font-size: 1.6rem"></i>
											</a>
										</c:when>
										<c:when test="${sessionScope.email != null}">
											<a class="about-user"
												href="${pageContext.request.contextPath}/customer/updateProfile">
												<span class="about-user-2">Xin ch??o!</span> <span
												class="about-user-1"><c:out
														value="${sessionScope.email }"></c:out></span>
											</a>
										</c:when>
									</c:choose>
								</div>
							</div>
							<div class="menu">
								<ul>
									<c:choose>
										<c:when test="${sessionScope.email == null}">
											<li><a href="login">????ng Nh???p</a></li>
											<li class="border-top"><a href="register">????ng K??</a></li>
										</c:when>
										<c:when test="${sessionScope.email != null}">
											<li><a href="logout"> Logout </a></li>
										</c:when>
									</c:choose>
								</ul>
							</div>
						</li>

					</ul>

					<!-- end Header-right -->
				</div>
				<!-- ------------------------ Begin BREADCRUMB ------------------------------- -->
				<ul class="category">
					<li class="category-item"><a href="#" class="text-hover"><span>S???n
								ph???m</span></a>
						<div class="category__dropdown-wrapper">
							<ul class="category__dropdown">
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													thun</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o c??? tr??i tim</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
							</ul>
						</div></li>
					<li class="category-item"><a href="#" class="text-hover"><span>Nam</span></a>
						<div class="category__dropdown-wrapper">
							<ul class="category__dropdown">
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													thun</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o c??? tr??i tim</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
							</ul>
						</div></li>
					<li class="category-item"><a href="#" class="text-hover"><span>N???</span></a>
						<div class="category__dropdown-wrapper">
							<ul class="category__dropdown">
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													thun</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o c??? tr??i tim</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
							</ul>
						</div></li>
					<li class="category-item"><a href="#" class="text-hover"><span>Ph???
								ki???n</span></a>
						<div class="category__dropdown-wrapper">
							<ul class="category__dropdown">
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													thun</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o c??? tr??i tim</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
							</ul>
						</div></li>
					<li class="category-item"><a href="#" class="text-hover"><span>Th????ng
								hi???u</span></a>
						<div class="category__dropdown-wrapper">
							<ul class="category__dropdown">
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													thun</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o c??? tr??i tim</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
							</ul>
						</div></li>
					<li class="category-item"><a href="#" class="text-hover"><span>X???p
								h???ng</span></a>
						<div class="category__dropdown-wrapper">
							<ul class="category__dropdown">
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													thun</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o c??? tr??i tim</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
							</ul>
						</div></li>
					<li class="category-item"><a href="#" class="text-hover"><span>M???i
								nh???t</span></a>
						<div class="category__dropdown-wrapper">
							<ul class="category__dropdown">
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													thun</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o c??? tr??i tim</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
							</ul>
						</div></li>
					<li class="category-item"><a href="#" class="text-hover"><span>Gi??
								s???c</span></a>
						<div class="category__dropdown-wrapper">
							<ul class="category__dropdown">
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													thun</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o c??? tr??i tim</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
							</ul>
						</div></li>
					<li class="category-item"><a href="#" class="text-hover"><span>S???
								ki???n</span></a>
						<div class="category__dropdown-wrapper">
							<ul class="category__dropdown">
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													thun</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o c??? tr??i tim</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o v???i Ph?????ng Ho??ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o n??? Ph?????ng Ho??ng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>??o
													kho??c</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o kho??c da h???</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>??o Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Qu???n</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng r???ng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Qu???n ???ng loe</span></a></li>
									</ul>
								</li>
							</ul>
						</div></li>
				</ul>
				<!-- ------------------------ End BREADCRUMB ------------------------------- -->
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
					<h3>S???n ph???m b??n ch???y</h3>
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
								<td style="color: red; text-align: center" colspan="12">Kh??ng
									c?? danh m???c n??o</td>
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
								<li class="col c-6 m-4 l-2-4 py-1"><a href="#">

										<div class="card">
											<div class="card-img">
												<img src="${item.pathImage }" alt="" />
											</div>
											<div class="card-text">
												<h3 class="card-title">
													<c:out value="${item.name }" />
												</h3>
												<p class="card-des truncate">${item.description }</p>
												<%-- 	<span class="card-price"> <c:out value="${item.unitPrice }" /> </span> 
 										 <span
											class="card-price-discount"> -50% </span> --%>
												<p class="card-price-cost">
													<c:out value="${item.unitPrice }" />
												</p>
											</div>
										</div>
								</a></li>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td style="color: red; text-align: center" colspan="12">Kh??ng
									c?? s???n ph???m n??o</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</ul>
			</section>

			<section class="page-section mt-1">
				<div class="tittle-product">
					<h3>Ti??u ??i???m</h3>
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
					<h3>Top danh m???c</h3>
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
											<!-- <span class="top-quant">7,337</span><span>s???n ph???m</span> -->
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
					<h3>Th????ng hi???u m???i</h3>
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
					<h3>S???n ph???m m???i</h3>
				</div>
				<ul class="category-about row">
					<c:choose>
						<c:when
							test="${listProductDate !=null && listProductDate.size() gt 0}">
							<c:forEach items="${requestScope.listProductDate }" var="item"
								varStatus="theCount">
								<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
										<div class="card">
											<div class="card-img">
												<img src="${item.pathImage }" alt="" />
											</div>
											<div class="card-text">
												<h3 class="card-title">
													<c:out value="${item.name }" />
												</h3>
												<p class="card-des truncate">${item.description }</p>
												<%-- 	<span class="card-price"> <c:out value="${item.unitPrice }" /> </span> 
 										 <span
											class="card-price-discount"> -50% </span> --%>
												<p class="card-price-cost">
													<c:out value="${item.unitPrice }" />
												</p>
											</div>
										</div>
								</a></li>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td style="color: red; text-align: center" colspan="12">Kh??ng
									c?? s???n ph???m n??o</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</ul>
			</section>

			<section class="page-section mt-1">
				<div class="tittle-product">
					<h3>Th????ng hi???u b???n c?? th??? bi???t</h3>
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
					<h3>G???i ?? cho b???n</h3>
				</div>
				<ul class="category-about wrap row">
					<c:choose>
						<c:when
							test="${listSubCategory !=null && listSubCategory.size() gt 0}">
							<c:forEach items="${requestScope.listProduct }" var="item"
								varStatus="theCount">
								<li class="col c-6 m-4 l-2-4 py-1"><a href="#">

										<div class="card">
											<div class="card-img">
												<img src="${item.pathImage }" alt="" />
											</div>
											<div class="card-text">
												<h3 class="card-title">
													<c:out value="${item.name }" />
												</h3>
												<p class="card-des truncate">${item.description }</p>
												<%-- 	<span class="card-price"> <c:out value="${item.unitPrice }" /> </span> 
 										 <span
											class="card-price-discount"> -50% </span> --%>
												<p class="card-price-cost">
													<c:out value="${item.unitPrice }" />
												</p>
											</div>
										</div>
								</a></li>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td style="color: red; text-align: center" colspan="12">Kh??ng
									c?? s???n ph???m n??o</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</ul>
				<button class="button primary">
					<span>Xem th??m</span>
				</button>
			</section>
		</div>
		<!-- end Content -->

		<!-- footer -->
		<footer>
			<!-- ================= Import Footer ============ -->
			<div id="footer"></div>
		</footer>
		<!-- end footer -->
	</div>
	<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

	<!---------------  Slide  ---------------->
	<script type="module"
		src="${pageContext.request.contextPath}/js/slide.js"></script>

	<!---------------  Import Footer ---------------->
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