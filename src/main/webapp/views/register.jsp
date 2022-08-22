<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>FPT-EC</title>

<meta name="description" content="" />

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="../imgs/logo.png" />
<script src="https://kit.fontawesome.com/64d58efce2.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/regis.css">
<script type="text/javascript"></script>
</head>
<style type="text/css">
.error {
	color: red;
}
input::placeholder {    
    opacity: .5;
}
</style>
<body>
	<div class="container">
		<div class="forms-container">
			<div class="signup">
				<form:form action="doRegister" cssClass="sign-up-form" method="post"
					modelAttribute="user">
					<h2 class="title">Đăng kí</h2>
					<c:if test="${message3 != null }">
						<span class="error"><c:out value="${message3 }"></c:out></span>
					</c:if>
					<div class="input-field">

						<i class="fas fa-user"></i>
						<form:input type="text" placeholder="Tên" path="username" />


					</div>
					<c:if test="${message1 != null }">
						<span class="error"><c:out value="${message1 }"></c:out></span>
					</c:if>
					<form:errors path="username" cssClass="error" />
					<div class="input-field">

						<i class="fas fa-envelope"></i>
						<form:input type="text" placeholder="Email" path="email" />


					</div>
					<c:if test="${message2 != null }">
						<span class="error"><c:out value="${message2 }"></c:out></span>
					</c:if>
					<form:errors path="email" cssClass="error" />

					<div class="input-field">

						<i class="fas fa-lock"></i>
						<form:input type="password" placeholder="Mật Khẩu" path="password" />

					</div>
					<form:errors path="password" cssClass="error" />

					<button type="submit" class="btn solid">Đăng kí</button>
					<!-- 	<p class="social-text">Or Sign up with social platforms</p>
					<div class="social-media">
						<a href="#" class="social-icon"> <i class="fab fa-facebook-f"></i>
						</a> <a href="#" class="social-icon"> <i class="fab fa-twitter"></i>
						</a> <a href="#" class="social-icon"> <i class="fab fa-google"></i>
						</a> <a href="#" class="social-icon"> <i
							class="fab fa-linkedin-in"></i>
						</a>
					</div> -->
				</form:form>

			</div>
		</div>

		<div class="panels-container">
			<!-- <div class="panel left-panel">
                <img src="./images/undraw_web_shopping_re_owap.svg" class="image" alt="">
            </div> -->

			<div class="panel right-panel">
				<div class="content">
					<h3>One of us ?</h3>
					<p>FPT E-Commerce</p>
					<a href="${pageContext.request.contextPath}/login">
						<button class="btn transparent" id="sign-in-btn">Đăng
							nhập</button>
					</a>

				</div>

				<img
					src="${pageContext.request.contextPath}/images/undraw_shopping_re_hdd9.svg"
					class="image" alt="">
			</div>

			<script src="${pageContext.request.contextPath}/js/login-regis.js"></script>
		</div>
	</div>


	<script src="http://code.jquery.com/jquery-3.4.1.min.js"
		integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/jquery.validate.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#form-login').submit(function() {

				// BƯỚC 1: Lấy dữ liệu từ form
				var email = $.trim($('#email').val());
				var password = $.trim($('#password').val());

				var flag = true;

				if (email == '') {
					$('#email_error').text('Vui lòng nhập lại email !');
					flag = false;
				} else {
					$('#email_error').text('');
				}

				if (password == '') {
					$('#password_error').text('Vui lòng nhập lại mật khẩu!');
					flag = false;
				} else {
					$('#password_error').text('');
				}

				return flag;
			});
		});
	</script>
</body>
</html>