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
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/newcss/404NotFound.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:700,900" rel="stylesheet">
    <!---------------  Import Header JS ---------------->
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
    integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <!-- CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/newcss/base.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/newcss/shared.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/newcss/footer.css" />
</head>

<body>
    <header>
        <div class="header fixed-header">
            <!-- Header - bottom -->
            <div class="header-bottom">

                <!-- Header-left -->
                <ul class="header-bottom-left">
                    <li class="header-bottom-logo">
                        <a href="#">
                            <img src="${pageContext.request.contextPath}/newimage/logo.svg" alt="logo" />
                        </a>
                    </li>
                </ul>
                <!-- end Header-left -->
                <!-- Header-right -->
                <ul class="header-bottom-right">
                    <li class="header-bottom-right-item">
                        <a href="#">
                            <i class="far fa-bell"></i>
                        </a>
                    </li>
                    <li class="header-bottom-right-item">
                        <a href="#">
                            <i class="fas fa-shopping-bag"></i>
                        </a>
                    </li>
                    <li class="header-bottom-right-items user">
                        <div class="header-bottom-right-item">
                            <a href="#">
                                <i class="far fa-user"></i>
                            </a>
                        </div>
                    </li>
                </ul>
                <!-- end Header-right -->
            </div>
        </div>
    </header>

    <div class="content-wrapper">
        <h1>Oops!  Page not found.</h1>
        <section class="error-container">
            <span class="four"><span class="screen-reader-text">4</span></span>
            <span class="zero"><span class="screen-reader-text">0</span></span>
            <span class="four"><span class="screen-reader-text">4</span></span>
        </section>
        <div class="link-container">
            <a target="_blank" href="../index.html"
                class="more-link">Go back to Home Page</a>
        </div>
    </div>

</body>

<footer class="footer">
    <div class="footer_top">
      <div class="footer_top-item">
        <div class="block_wrapper">
          <ul class="block_list">
            <li class="block_item logo">
              <a href="/"><img src="${pageContext.request.contextPath}/newimage/logo-white.png" alt="logo-white" /></a>
            </li>
            <li class="block_item">
              <a class="block_link" href="tel:0906.880.960" title="Hotline: 0906.880.960">Hotline: 0906.880.960</a>
            </li>
            <li class="block_item">
              <a class="block_link" href="/" title="9h-18h t??? Th??? 2 ?????n Th??? 6">(9h-18h t??? Th??? 2 ?????n Th??? 6)</a>
            </li>
            <li class="block_item">
              <a class="block_link" href="email:customer@dosiinvn.com" title="Email: customer@dosiinvn.com">Email:
                customer@dosiinvn.com</a>
            </li>
          </ul>
          <h5 class="block_heading">K???t n???i v???i ch??ng t??i</h5>
          <ul class="block-app-list">
            <li class="block-app-item">
              <a href="https://www.instagram.com/dosiin.magz/" title="Instagram"><i
                  class="fab fa-instagram-square"></i></a>
            </li>
            <li class="block-app-item">
              <a class="dosiin_d-block" href="https://www.facebook.com/dosiinvietnam/" title="Facebook"><i
                  class="fab fa-facebook"></i></a>
            </li>
          </ul>
        </div>
        <div class="block_wrapper">
          <h5 class="block_heading">V??? Dosiin</h5>

          <ul class="block_list">
            <li class="block_item">
              <a class="block_link" href="#">C??c ??i???u kho???n kh??c</a>
            </li>
            <li class="block_item"><a class="block_link" href="#">H???p t??c</a></li>
            <li class="block_item"><a class="block_link" href="#">H???i v?? ????p</a></li>
            <li class="block_item">
              <a class="block_link" href="#">H???n ch??? v???i th???i gian v?? qu???n l??</a>
            </li>
            <li class="block_item">
              <a class="block_link" href="#">Ngh??a v??? c???a ng?????i b??n</a>
            </li>
            <li class="block_item">
              <a class="block_link" href="#">Ngh??a v??? c???a kh??ch h??ng</a>
            </li>
            <li class="block_item">
              <a class="block_link" href="#">Ch??nh s??ch v???n chuy???n</a>
            </li>
            <li class="block_item">
              <a class="block_link" href="#">V??? ch??ng t??i</a>
            </li>
          </ul>
        </div>
        <div class="block_wrapper">
          <h5 class="block_heading">N???i dung ch??nh s??ch</h5>
          <ul class="block_list">
            <li class="block_item">
              <a class="block_link" href="#">Ch??nh s??ch b???o m???t</a>
            </li>
            <li class="block_item"><a class="block_link" href="#">??i???u kho???n d???ch v???</a></li>
            <li class="block_item"><a class="block_link" href="#">Ch??nh s??ch th??nh vi??n</a></li>
            <li class="block_item">
              <a class="block_link" href="#">Ch??nh s??ch thanh to??n</a>
            </li> 
            <li class="block_item">
              <a class="block_link" href="#">Ch??nh s??ch b???o m???t thanh to??n</a>
            </li>
            <li class="block_item">
              <a class="block_link" href="#">Ch??nh s??ch d??nh cho kh??ch h??ng</a>
            </li>
          </ul>
        </div>
        <div class="block_wrapper">
          <h5 class="block_heading">C??ch th???c thanh to??n</h5>
          <ul class="block_card-list">
            <li class="block_card-item">
              <div class="card-item_list">
                <a class="block_link" href="/" title="COD Ti???n m???t">
                  <div class="card-item_box">
                    <div class="card-item_icon"><img src="${pageContext.request.contextPath}/newimage/cod.jpg" alt="Ti???n m???t"
                        title="Ti???n m???t">
                    </div>
                    <div class="card-item_text">Ti???n m???t</div>
                  </div>
                </a><a class="block_link" href="/" title="Momo">
                  <div class="card-item_box">
                    <div class="card-item_icon"><img src="${pageContext.request.contextPath}/newimage/momo.png" alt="Momo" title="Momo" />
                    </div>
                    <div class="card-item_text">Momo</div>
                  </div>
                </a>
              </div>
            </li>
            <li class="block_card-item">
              <div class="card-item_list">
                <a class="block_link" href="/" title="VISA, MASTER, JCB">
                  <div class="card-item_box">
                    <div class="card-item_icon"><img src="${pageContext.request.contextPath}/newimage/credit-card.png" alt="VISA, MASTER, JCB"
                        title="VISA, MASTER, JCB" /></div>
                    <div class="card-item_text">VISA, MASTER, JCB</div>
                  </div>
                </a>
              </div>
            </li>
            <li class="block_card-item">
              <div class="card-item_list">
                <a class="block_link" href="/" title="Internet Banking">
                  <div class="card-item_box">
                    <div class="card-item_icon"><img src="${pageContext.request.contextPath}/newimage/credit-card.png" alt="Internet Banking"
                        title="Internet Banking" /></div>
                    <div class="card-item_text">Internet Banking</div>
                  </div>
                </a>
              </div>
            </li>
          </ul>
       
      
        </div>
      </div>
    </div>
    <div class="footer_bot">
      Copyright 2022 &copy; FPT University DaNang
    </div>
  </footer>

</html>