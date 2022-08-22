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
	href="${pageContext.request.contextPath}/css/login.css">
</head>
<style>
input::placeholder {    
    opacity: .5;
}
</style>
<body>
	<div class="container">
		<div class="forms-container">
			<div class="signin">
				<form:form action="authenticateTheUser" cssClass="sign-in-form" id ="form-login"
					method="post">
					<h2 class="title">Đăng nhập</h2>
					<c:if test="${param.error != null }">
						<span class="error" style="color:red"> Email/Mật khẩu không hợp lệ </span>
						<br>
						<br>
					</c:if>
					<div class="input-field">
						<i class="fas fa-user"></i> <input type="text" placeholder="Email"
							name="email" id ="email">
							
					</div>
					 <span  style="color: red" id="email_error"></span>
					<div class="input-field">
						<i class="fas fa-lock"></i> <input type="password"
							placeholder="Mật Khẩu" name="password" id ="password">
							 
					</div>
					<span  style="color: red" id="password_error"></span>
					<button type="submit" class="btn solid">Đăng nhập</button>
					<!-- <p class="social-text">Or Sign in with social platforms</p>
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
			<div class="panel left-panel">
				<div class="content">
					<h3>New Here ?</h3>
					<p>FPT E-Commerce</p>
					<a href="${pageContext.request.contextPath}/register"><button class="btn transparent" id="sign-up-btn"
						>Đăng kí</button></a>
				</div>

				<img
					src="${pageContext.request.contextPath}/images/undraw_web_shopping_re_owap.svg"
					class="image" alt="">
			</div>

			<script
				src="https://cdnjs.cloudflare.com/ajax/libs/barba.js/0.0.2/barba.min.js"
				integrity="sha512-j0ThLeHF8KI1DZjV/vAJ0CKkDAMAsZbFA1KarA2jIfzAmXn3di3krSq9LJrv/gBVsUnouKqS/agIoQpxj/3Hkg=="
				crossorigin="anonymous" referrerpolicy="no-referrer"></script>
			<script src="${pageContext.request.contextPath}/js/login-regis.js"></script>
		</div>
	</div>
	
	<script src="http://code.jquery.com/jquery-3.4.1.min.js" 
    integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<script type="text/javascript"
    src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/jquery.validate.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function()
			{
			    $('#form-login').submit(function(){
			 
			        // BƯỚC 1: Lấy dữ liệu từ form
			        var email   = $.trim($('#email').val());
			        var password   = $.trim($('#password').val());
			     
			 
			      
			        var flag = true;
			 
			        
			        if (email == '' ){
			            $('#email_error').text('Vui lòng nhập lại email !');
			            flag = false;
			        }
			        else{
			            $('#email_error').text('');
			        }
			       
			        if (password == '' ){
			            $('#password_error').text('Vui lòng nhập lại mật khẩu!');
			            flag = false;
			        }
			        else{
			            $('#password_error').text('');
			        }
			 
			 
			    
			 
			     
			 
			        return flag;
			    });
			});
    </script>
</body>
</html>