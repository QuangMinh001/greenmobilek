<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">

    <title>Green Mobile</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
    
    
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
        <!-- 
         -->
        <link rel="preload" type="text/css" href="${classpath}/user/Content/web/fonts/Segoe UI/Segoe UI.woff2" as="font" type="font/woff2" crossorigin="">
        <link rel="preload" type="text/css" href="${classpath}/user/Content/web/fonts/Segoe UI/Segoe UI Italic.woff2" as="font" type="font/woff2" crossorigin="">
        <link rel="preload" type="text/css" href="${classpath}/user/Content/web/fonts/Segoe UI/Segoe UI Bold.woff2" as="font" type="font/woff2" crossorigin="">
        <link rel="preload" type="text/css" href="${classpath}/user/Content/web/fonts/Segoe UI/Segoe UI Bold Italic.woff2" as="font" type="font/woff2" crossorigin="">
        <link rel="preload" type="text/css" href="${classpath}/user/Content/web/fonts/Segoe UI/Segoe UI Semilight.woff2" as="font" type="font/woff2" crossorigin="">
        <link rel="preload" type="text/css" href="${classpath}/user/Content/web/fonts/Segoe UI/Segoe UI Semilight Italic.woff2" as="font" type="font/woff2" crossorigin="">
        <link rel="preload" type="text/css" href="${classpath}/user/Content/web/fonts/icon/fonts/hoangha.woff" as="font" type="font/woff" crossorigin="">
        <link rel="preload" as="script" href="${classpath}/user/js-css/web_v1.1.8.5.js">
        <link rel="preload" as="style" href="${classpath}/user/js-css/web_v1.1.8.5.css">
        <link href="${classpath}/user/js-css/web_v1.1.8.5.css" rel="stylesheet" type="text/css">


    <style> .product-center .current-product-price label.text-green { display: none } </style>
    <script> window.insider_object = {}; </script>


    <link rel="canonical" href="home.jsp" />
    <meta name="description" content="Siêu thị điện thoại di động giá rẻ nhất" />
    <meta name="keywords" content="" />


    
    <script async src="${classpath}/user/greenmobilevn.api.useinsider.com/ins05e0.js?id=10005327"></script>
</head>


<body>

    <div class="ticker">
        <ul>
            <li>
                <div class="top-link">
                    <span class="pulse"></span> <p><strong>Sale rẻ hết cỡ - Xiaomi Redmi Note 12 Series, Giá chỉ hơn 4.000.000đ</strong> <a href="#" target="_top">Xem chi tiết</a></p>
                </div>
            </li>
            <li>
                <div class="top-link">
                    <span class="pulse"></span> <p><strong>Cơ hội sở hữu Samsung S20 FE 256GB chỉ với 6.990.000đ - SL có hạn</strong> <a href="#" target="_top">Xem chi tiết</a></p>
                </div>
            </li>
            <li>
                <div class="top-link">
                    <span class="pulse"></span> <p><strong>Sale rẻ hết cỡ - reno8T 5G - Chính hãng, Giá chỉ từ 8.690.000đ</strong> <a href="#" target="_blank">Xem chi tiết</a></p>
                </div>
            </li>
        </ul>
    </div>

	<!-- --------------------------Header------------------------------ -->
	<!-- -------------------------------------------------------------- -->
	<!-- -------------------------------------------------------------- -->
	<jsp:include page="/WEB-INF/views/user/layout/header.jsp"></jsp:include>
    <!-- -------------------------------------------------------------- -->
    <!-- -------------------------------------------------------------- -->
    <!-- -------------------------------------------------------------- -->
    	

    
						<!-- slider -->
						<!-- slider -->
						<!-- slider -->
						<!-- slider -->
<%--     <section>
        <div class="container">
            <div class="top-slider">
                <div id="jssor_1" class="jssor-1200">
                    <!-- Loading Screen -->
                    <div data-u="loading" class="jssor-spin">
                        <img src="${classpath}/user/Content/web/img/spin.svg" />
                    </div>
                    <div data-u="slides" class="jssor-1200-container">
                        <div>
                            <a target="_blank" href="${classpath}/detail/${product.id}" title="Samsung Galaxy S20 FE"><img src="${classpath}/user/images/home/Uploads/2023/06/22/1200x382-ss-s20fe.png" title="Samsung Galaxy S20 FE" /></a>
                            <div u="thumb">
                                Samsung Galaxy S20 FE
                                    <br /><small>Ưu đãi lên tới 60%</small>
                            </div>
                        </div>
                        <div>
                            <a target="_blank" href="${classpath}/detail/${product.id}" title="Samsung Galaxy S23 Serries"><img src="${classpath}/user/images/home/Uploads/2023/06/12/s23-seriesweb.png" title="Samsung Galaxy S23 Serries" /></a>
                            <div u="thumb">
                                Samsung Galaxy S23 Serries
                                    <br /><small>Zoom Cận Idol - Chấp Mọi Khoảng Cách</small>
                            </div>
                        </div>
                        <div>
                            <a target="_blank" href="${classpath}/detail/${product.id}" title="Redmi Note 12 series"><img src="${classpath}/user/images/home/Uploads/2023/06/01/redmi-note-12-series-kv-mono-pc.png" title="Redmi Note 12 series" /></a>
                            <div u="thumb">
                                Redmi Note 12 series
                                    <br /><small>Nhiều ưu đãi giảm giá hấp dẫn</small>
                            </div>
                        </div>
                        <div>
                            <a target="_blank" href="${classpath}/detail/${product.id}" title="realme C55"><img src="${classpath}/user/images/home/Uploads/2023/06/08/realme-c55-04.jpg" title="realme C55" /></a>
                            <div u="thumb">
                                realme C55
                                    <br /><small>Chụp chuyên sâu - Nhớ siêu lâu</small>
                            </div>
                        </div>
                        <div>
                            <a target="_blank" href="${classpath}/detail/${product.id}" title="Tuần lễ Laptop Gaming"><img src="${classpath}/user/images/home/Uploads/2023/06/19/tuan-le-laptop-gaming-02.jpg" title="Tuần lễ Laptop Gaming" /></a>
                            <div u="thumb">
                                Tuần lễ Laptop Gaming
                                    <br /><small>Chiến game cực đỉnh</small>
                            </div>
                        </div>
                        <div>
                            <a target="_blank" href="${classpath}/detail/${product.id}" title="Hello Summer, Hello Huawei"><img src="${classpath}/user/images/home/Uploads/2023/06/16/web_638225331330645082.png" title="Hello Summer, Hello Huawei" /></a>
                            <div u="thumb">
                                Hello Summer, Hello Huawei
                                    <br /><small>Chinh phục m&#249;a hhè; c&#249;ng Huawei</small>
                            </div>
                        </div>
                        <div>
                            <a target="_blank" href="${classpath}/detail/${product.id}" title="Loa JBL - Ưu đãi chính hãng"><img src="${classpath}/user/images/home/Uploads/2023/06/19/web-jbl.png" title="Loa JBL - Ưu đãi chính hãng" /></a>
                            <div u="thumb">
                                Loa JBL - Ưu đãi chính hãng
                                    <br /><small>Đón hhè; rộn ràng</small>
                            </div>
                        </div>
                        <div>
                            <a target="_blank" href="${classpath}/detail/${product.id}" title="Sạc dự phòng giảm đến 60%"><img src="${classpath}/user/images/home/Uploads/2023/06/22/san-sale-giam-soc-tu-khong-lo-mat-dien-02.jpg" title="Sạc dự phòng giảm đến 60%" /></a>
                            <div u="thumb">
                                Sạc dự phòng giảm đến 60%
                                    <br /><small>Mua sạc không lo mất điện</small>
                            </div>
                        </div>
                        <div>
                            <a target="_blank" href="${classpath}/detail/${product.id}" title="Smart TV 4K giá shock"><img src="${classpath}/user/images/home/Uploads/2023/06/06/tv-01.jpg" title="Smart TV 4K giá shock" /></a>
                            <div u="thumb">
                                Smart TV 4K giá shock
                                    <br /><small>Chỉ từ 6.990.000đ</small>
                            </div>
                        </div>
                        <div>
                            <a target="_blank" href="${classpath}/detail/${product.id}" title="Ốp lưng ZAGG Mỹ – Xài không phải nghĩ"><img src="${classpath}/user/images/home/Uploads/2023/06/05/web-chuong-trinh-trai-nghiem-pk-zagg-01.jpg" title="Ốp lưng ZAGG Mỹ – Xài không phải nghĩ" /></a>
                            <div u="thumb">
                                Ốp lưng ZAGG Mỹ – Xài không phải nghĩ
                                    <br /><small>Đổi lỗi lên tới 30 ngày</small>
                            </div>
                        </div>
                        <div>
                            <a target="_blank" href="${classpath}/detail/${product.id}" title="Hhè; tới, sắm Nokia mới"><img src="${classpath}/user/images/home/Uploads/2023/05/12/2400x750.jpg" title="Hhè; tới, sắm Nokia mới" /></a>
                            <div u="thumb">
                                Hhè; tới, sắm Nokia mới
                                    <br /><small>Nokia G22 - Rẻ hết cỡ 3.390.000đ</small>
                            </div>
                        </div>
                        <div>
                            <a target="_blank" href="${classpath}/detail/${product.id}" title="iPhone 14 Pro Max VN/A"><img src="${classpath}/user/images/home/Uploads/2023/06/16/14prm-pc.png" title="iPhone 14 Pro Max VN/A" /></a>
                            <div u="thumb">
                                iPhone 14 Pro Max VN/A
                                    <br /><small>Giá chỉ từ 25.390.000đ</small>
                            </div>
                        </div>
                        <div>
                            <a target="_blank" href="${classpath}/detail/${product.id}" title="Smart TV Xiaomi"><img src="${classpath}/user/images/home/Uploads/2023/06/02/tv-xiaomi-01.jpg" title="Smart TV Xiaomi" /></a>
                            <div u="thumb">
                                Smart TV Xiaomi
                                    <br /><small>Rẻ hết cỡ chỉ từ 3.890.000đ</small>
                            </div>
                        </div>
                    </div>
                    <div data-u="thumbnavigator" class="jssor-1200-thumbs">
                        <div data-u="slides" style="cursor: pointer">
                            <div data-u="prototype" class="p">
                                <div class=w><div data-u="thumbnailtemplate"></div></div>
                                <div class=c></div>
                            </div>
                        </div>
                    </div>
                
                    <div data-u="arrowleft" class="slider-arr slider-arr-l" data-autocenter="2">
                        <i class="icon-left"></i>
                    </div>
                    <div data-u="arrowright" class="slider-arr slider-arr-r" data-autocenter="2">
                        <i class="icon-right"></i>
                    </div>
                </div>
            </div>
        </div>
    </section> --%>
    
        <section>
        <div class="container">
            <div class="top-slider">
                <div id="jssor_1" class="jssor-1200">
                    <!-- Loading Screen -->
                    <div data-u="loading" class="jssor-spin">
                        <img src="${classpath}/user/Content/web/img/spin.svg" />
                    </div>
                    <div data-u="slides" class="jssor-1200-container">
                        <c:forEach items="${listSlides }" var="slide">
	                        <div>
	                            <a target="_blank" title="${slide.name}"><img src="${classpath}/StorageFolder/${slide.path }" /></a>
	                            <div u="thumb">
	                                Samsung Galaxy S20 FE
	                                    <br /><small>Ưu đãi lên tới 60%</small>
	                            </div>
	                        </div>
                        </c:forEach>
                    </div>
                    <div data-u="thumbnavigator" class="jssor-1200-thumbs">
                        <div data-u="slides" style="cursor: pointer">
                            <div data-u="prototype" class="p">
                                <div class=w><div data-u="thumbnailtemplate"></div></div>
                                <div class=c></div>
                            </div>
                        </div>
                    </div>
                
                    <div data-u="arrowleft" class="slider-arr slider-arr-l" data-autocenter="2">
                        <i class="icon-left"></i>
                    </div>
                    <div data-u="arrowright" class="slider-arr slider-arr-r" data-autocenter="2">
                        <i class="icon-right"></i>
                    </div>
                </div>
            </div>
        </div>
    </section>
						<!-- slider -->
						<!-- slider -->
						<!-- slider -->

    <section>
        <div class="container">
            <div class="quick-sales">
                <div class="item">
                    <a href="${classpath}/detail/1" target="_blank">
                        <img src="${classpath}/user/images/home/Uploads/2023/06/24/galaxy-s20-fe.png" title="Samsung Galaxy S20 FE" alt="Samsung Galaxy S20 FE" />
                    </a>
                </div>
                <div class="item">
                    <a href="${classpath}/detail/1" target="_blank">
                        <img src="${classpath}/user/images/home/Uploads/2023/05/30/redmi-10-5g.png" title="Redmi 10 5G" alt="Redmi 10 5G" />
                    </a>
                </div>
                <div class="item">
                    <a href="${classpath}/detail/1" target="_blank">
                        <img src="${classpath}/user/images/home/Uploads/2023/06/12/macbook-air-m1.png" title="MacBook Air M1 8GB/256GB" alt="MacBook Air M1 8GB/256GB" />
                    </a>
                </div>
                <div class="item">
                    <a href="${classpath}/detail/1" target="_blank">
                        <img src="${classpath}/user/images/home/Uploads/2023/06/19/664vn.png" title="Laptop Gaming MSI GF63 Thin 11SC 664VN" alt="Laptop Gaming MSI GF63 Thin 11SC 664VN" />
                    </a>
                </div>
            </div>
        </div>
    </section>



    <!-- flash sales IS HOT PHONES  -->
    <section class="fls" id="fls_6" style="display:block">
        <div class="container">
            <div class="flash-sales">
                <div class="header">
                    <h3>F<i class="icon-flash"></i>ASH SALE ONLINE</h3>
                    <ul class="flash-sale-nav">
                        <li>
                            <a class="actived" href="javascript:showFLS('fls_6');">Điện thoại/Tablet</a>
                        </li>
                        <li>
                            <a class="" href="javascript:showFLS('fls_8');">Laptop/Màn hình/Tivi</a>
                        </li>
                        <li>
                            <a class="" href="javascript:showFLS('fls_9');">Đồng hồ/Phụ kiện/khác</a>
                        </li>
                    </ul>
                    <!-- thẻ đếm th -->
                    <div class="timer" id="timer_6" data-start="June 24, 2023 10:47:50" data-end="June 26, 2023 00:00:00"></div>
                </div>
                <div class="content">
                    <div class="owl-carousel lr-slider">
                        <c:forEach items="${isHotPhones }" var="product"> 
                        	<div class="item">
	                            <div class="img">
	                                <a href="${classpath}/detail/${product.id}" title="${product.name }"><img style="max-width: 220px" src="${classpath}/StorageFolder/${product.avatar}" alt="${product.name }"></a>
	                            </div>
	                            <div class="info">
	                                <a class="title" href="${classpath}/detail/${product.id}">${product.name }</a>
	                                <span class="price">
	                                    <strong><fmt:formatNumber value="${product.salePrice }" pattern="##,###" minFractionDigits="0" /> ₫</strong>
	                                    <strike><fmt:formatNumber value="${product.price }" pattern="##,###" minFractionDigits="0" /> đ</strike>
	                                </span>
	                            </div>
                        	</div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- flash sales -->
    <section class="fls" id="fls_8" style="display:none">
        <div class="container">
            <div class="flash-sales">
                <div class="header">
                    <h3>F<i class="icon-flash"></i>ASH SALE ONLINE</h3>
                    <ul class="flash-sale-nav">
                            <li>
                                <a class="" href="javascript:showFLS('fls_6');">Điện thoại/Tablet</a>
                            </li>
                            <li>
                                <a class="actived" href="javascript:showFLS('fls_8');">Laptop/Màn hình/Tivi</a>
                            </li>
                            <li>
                                <a class="" href="javascript:showFLS('fls_9');">Đồng hồ/Phụ kiện/khác</a>
                            </li>
                    </ul>
                    <div class="timer" id="timer_8" data-start="June 24, 2023 10:47:50" data-end="June 26, 2023 00:00:00"></div>
                </div>
                <div class="content">
                    <div class="owl-carousel lr-slider">
                        <c:forEach items="${isHotPCorScreens }" var="product"> 
	                     	<div class="item">
	                            <div class="img">
	                                <a href="${classpath}/detail/${product.id}" title="${product.name }"><img style="max-width: 220px" src="${classpath}/StorageFolder/${product.avatar}" alt="${product.name }"></a>
	                            </div>
	                            <div class="info">
	                                <a class="title" href="${classpath}/detail/${product.id}">${product.name }</a>
	                                <span class="price">
	                                    <strong><fmt:formatNumber value="${product.salePrice }" pattern="##,###" minFractionDigits="0" /> ₫</strong>
	                                    <strike><fmt:formatNumber value="${product.price }" pattern="##,###" minFractionDigits="0" /> đ</strike>
	                                </span>
	                            </div>
                        	</div>
	                    </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- flash sales IS HOT SMART WATCH -->
    <section class="fls" id="fls_9" style="display:none">
        <div class="container">
            <div class="flash-sales">
                <div class="header">
                    <h3>F<i class="icon-flash"></i>ASH SALE ONLINE</h3>
                    <ul class="flash-sale-nav">
                            <li>
                                <a class="" href="javascript:showFLS('fls_6');">Điện thoại/Tablet</a>
                            </li>
                            <li>
                                <a class="" href="javascript:showFLS('fls_8');">Laptop/Màn hình/Tivi</a>
                            </li>
                            <li>
                                <a class="actived" href="javascript:showFLS('fls_9');">Đồng hồ/Phụ kiện/khác</a>
                            </li>
                    </ul>
                    <div class="timer" id="timer_9" data-start="June 24, 2023 10:47:50" data-end="June 26, 2023 00:00:00"></div>
                </div>
                <div class="content">
                    <div class="owl-carousel lr-slider">
                         <c:forEach items="${isHotSmartWatches }" var="product"> 
	                     	<div class="item">
	                            <div class="img">
	                                <a href="${classpath}/detail/${product.id}" title="${product.name }"><img style="max-width: 220px" src="${classpath}/StorageFolder/${product.avatar}" alt="${product.name }"></a>
	                            </div>
	                            <div class="info">
	                                <a class="title" href="${classpath}/detail/${product.id}">${product.name }</a>
	                                <span class="price">
	                                    <strong><fmt:formatNumber value="${product.salePrice }" pattern="##,###" minFractionDigits="0" /> ₫</strong>
	                                    <strike><fmt:formatNumber value="${product.price }" pattern="##,###" minFractionDigits="0" /> đ</strike>
	                                </span>
	                            </div>
                        	</div>
	                    </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section>
        <div class="container">
            <div class="ads">
                <a target="_top"><img src="${classpath}/user/images/home/Uploads/2023/06/05/tab-a8-1200x200.png" style="width: 100%;"></a>
            </div>
        </div>
    </section>

		
		
			<!-- -------------------------------------------------------------- -->
			<!-- -------------------------------------------------------------- -->
			<!-- --------------------Apple authorised Reseller----------------- -->
			<!-- -------------------------------------------------------------- -->
			<!-- -------------------------------------------------------------- -->
        <section>
            <div class="container">
                <div class="box-product-home box-home">
                    <div class="header">
                        <h4><a href="apple.html">Apple authorised Reseller</a></h4>
                    </div>
                    <div class="col-content lts-product">
                    	<c:forEach items="${appleAuthorisedResellerProducts }" var="product">
	                        <div class="item">
	                            <div class="img">
	                                <a href="${classpath}/detail/${product.id}" title="${product.name }">
	                                    <img src="${classpath}/StorageFolder/${product.avatar }" alt="${product.name }" title="${product.name }">
	                                </a>
	                            </div>
	                            <c:if test="${not empty product.sticker }">
		                            <div class="sticker sticker-left">
		                                <span><img src="${classpath}/StorageFolder/${product.sticker }" title="Chính hãng Apple" /></span>
		                            </div>
	                            </c:if>
	                            <div class="info">
	                                <a href="${classpath}/detail/${product.id}" class="title" title="${product.name }">${product.name }</a>
	                                <span class="price">
	                                        <strong>
	                                        	<fmt:formatNumber value="${product.salePrice }" pattern="##,###" minFractionDigits="0" />
	                                        	 ₫
	                                        </strong>
	                                        <strike><fmt:formatNumber value="${product.price }" pattern="##,###" minFractionDigits="0" /> ₫</strike>
	                                </span>
	                            </div>
	                            <div class="note">
	                                <span class="bag">KM</span> <label title="Ưu đãi đến 300.000đ khi mở Ví hoặc thanh toán qua VNPAY">Ưu đãi đến 300.000đ khi mở Ví hoặc ...</label>
	                                <strong class="text-orange">VÀ 12 KM KHÁC</strong>
	                            </div>
	                            <div class="promote">
	                                <a href="${classpath}/detail/${product.id}">
	                                    <ul>
	                                        <li><span class="bag">KM</span> Ưu đãi đến 300.000đ khi mở Ví hoặc thanh toán qua VNPAY</li>
	                                        <li><span class="bag">KM</span> Giảm thêm tới 1,5 triệu khi đăng ký gói cước tích điểm MobiFone.</li>
	                                        <li><span class="bag">KM</span> Giảm thêm tới 1.000.000đ khi Thu cũ - Lên đời iPhone 11 | 12 | 13 Series</li>
	                                    </ul>
	                                </a>
	                            </div>
	                        </div>
                        </c:forEach>                
                    </div>                
                </div>
            </div>
        </section>


    <section>
        <div class="container">
            <div class="ads">
                <a target="_top"><img src="${classpath}/user/images/home/Uploads/2023/06/01/gdn-xiaomi-redmi-10-5g-1.png" style="width: 100%;"></a>
            </div>
        </div>
    </section>

	
	
			<!-- -------------------------------------------------------------- -->
			<!-- -------------------------------------------------------------- -->
			<!-- --------------------Highlight Phone--------------------------- -->
			<!-- -------------------------------------------------------------- -->
			<!-- -------------------------------------------------------------- -->
        <section>
            <div class="container">
                <div class="box-product-home box-home">
                    <div class="header">
                        <h4><a href="dien-thoai-di-dong.html">ĐIỆN THOẠI NỔI BẬT</a></h4>
                    </div>
                    <div class="col-content lts-product">
                    	<c:forEach items="${highlightPhones }" var="product">
	                        <div class="item">
	                            <div class="img">
	                                <a href="${classpath }/detail" title="${product.name }">
	                                    <img src="${classpath}/StorageFolder/${product.avatar }" alt="${product.name }" title="${product.name }">
	                                </a>
	                            </div>
	                            <c:if test="${not empty product.sticker }">
		                            <div class="sticker sticker-left">
		                                <span><img src="${classpath}/StorageFolder/${product.sticker }" title="" /></span>
		                            </div>
	                            </c:if>
	                            <c:if test="${not empty product.incentive }">
	                            	<c:choose>
		                            	 <c:when test="${product.incentive.equals('.')}">
		                            	 	<i class="icon-flash2"></i>Giảm <fmt:formatNumber value="${product.price - product.salePrice }" pattern="##,###" minFractionDigits="0" />
	                                        	 ₫
		                            	 </c:when>
		                            	 <c:when test="${product.incentive.equals('%')}">
		                            	 	<i class="icon-flash2"></i>Giảm ${100 - product.salePrice/(product.price/100) }"%
		                            	 </c:when>
		                            	 <c:when test="${product.incentive.equals('-')}">
		                            	 	<i class="icon-flash2"></i>Hết hàng
		                            	 </c:when>
		                            	 <c:otherwise>
				                            <span class="sales">
				                                <i class="icon-flash2"></i> ${product.incentive }
				                            </span>
				                         </c:otherwise>
		                            </c:choose>
	                            </c:if>
	                            <div class="info">
	                                <a href="${classpath }/detail" class="title" title="${product.name }">${product.name }</a>
	                                <span class="price">
										<strong>
	                                        	<fmt:formatNumber value="${product.salePrice }" pattern="##,###" minFractionDigits="0" />
	                                        	 ₫
	                                    </strong>
	                                    <strike><fmt:formatNumber value="${product.price }" pattern="##,###" minFractionDigits="0" /> ₫</strike>
	                                </span>
	                            </div>
	                            <div class="note">
	                                <span class="bag">KM</span> <label title="Ưu đãi đến 300.000đ khi mở Ví hoặc thanh toán qua VNPAY">Ưu đãi đến 300.000đ khi mở Ví hoặc ...</label>
	                                <strong class="text-orange">VÀ 8 KM KHÁC</strong>
	                            </div>
	                            <div class="promote">
	                                <a href="${classpath}/detail/${product.id}">
	                                    <ul>
	                                        <li><span class="bag">KM</span> Ưu đãi đến 300.000đ khi mở Ví hoặc thanh toán qua VNPAY</li>
	                                        <li><span class="bag">KM</span> Giảm thêm tới 800.000đ khi mở thẻ tín dụng TPBank EVO - Duyệt nhanh chỉ 15 phút, Liên hệ cửa hàng hoặc 19xx.xxxx để được hướng dẫn.</li>
	                                        <li><span class="bag">KM</span>  Trả góp qua Homepaylater giảm 10% tối đa 1.000.0000đ (Áp dụng giá trị khoản vay từ 6 triệu)</li>
	                                    </ul>
	                                </a>
	                            </div>
	                        </div>
                       </c:forEach>
                    </div>
                </div>
            </div>
        </section>


			
			<!-- -------------------------------------------------------------- -->
			<!-- -------------------------------------------------------------- -->
			<!-- --------------------Smart Watch------------------------------- -->
			<!-- -------------------------------------------------------------- -->
			<!-- -------------------------------------------------------------- -->
    <section>
        <div class="container">
            <div class="flash-sales box-home">
                <div class="header">
                        <h4><a href="${classpath}/shop">ĐỒNG HỒ THôNG MINH</a></h4>
                </div>
                <div class="content">
                    <div class="owl-carousel lr-slider equaHeight" data-obj=".info a.title">
						<c:forEach items="${smartWatchs }" var="product">
	                        <div class="item">
	                            <div class="img">
	                                <a href="${classpath}/detail/${product.id}">
	                                    <img style="max-width: 220px" src="${classpath}/StorageFolder/${product.avatar }" alt="${product.name }" title="${product.name }">
	                                </a>
	                            </div>
	                            <c:if test="${not empty product.sticker }">
		                            <div class="sticker sticker-left">
		                                <span><img src="${classpath}/StorageFolder/${product.sticker }" title="" /></span>
		                            </div>
	                            </c:if>
	                            <c:if test="${not empty product.incentive }">
	                            	<c:choose>
		                            	 <c:when test="${product.incentive.equals('.')}">
		                            	 	<i class="icon-flash2"></i>Giảm <fmt:formatNumber value="${product.price - product.salePrice }" pattern="##,###" minFractionDigits="0" />
	                                        	 ₫
		                            	 </c:when>
		                            	 <c:when test="${product.incentive.equals('%')}">
		                            	 	<i class="icon-flash2"></i>Giảm <fmt:formatNumber value="${product.price - product.salePrice }" pattern="##,###" minFractionDigits="0" />
	                                        	 ₫
		                            	 </c:when>
		                            	 <c:when test="${product.incentive.equals('-')}">
		                            	 	<i class="icon-flash2"></i>Hết hàng
		                            	 </c:when>
		                            	 <c:otherwise>
				                            <span class="sales">
				                                <i class="icon-flash2"></i> ${product.incentive }
				                            </span>
				                         </c:otherwise>
		                            </c:choose>
	                            </c:if>
	                            <div class="info">
	                                <a href="${classpath}/detail/${product.id}" class="title">${product.name }</a>
	                                <span class="price">
	                                        <strong>
	                                        	<fmt:formatNumber value="${product.salePrice }" pattern="##,###" minFractionDigits="0" />
	                                        	 ₫
	                                    </strong>
	                                    <strike><fmt:formatNumber value="${product.price }" pattern="##,###" minFractionDigits="0" /> ₫</strike>
	                                </span>
	                            </div>
	                            <div class="note">
                                    <span class="bag">KM</span> <label title="Ưu đãi đến 300.000đ khi mở Ví hoặc thanh toán qua VNPAY">Ưu đãi đến 300.000đ khi mở Ví hoặc ...</label>
                                    <strong class="text-orange">VÀ 10 KM KHÁC</strong>
                                </div>
                                <div class="promote">
                                    <a href="${classpath}/detail/${product.id}">
                                        <ul>
                                            <li><span class="bag">KM</span> Ưu đãi đến 300.000đ khi mở Ví hoặc thanh toán qua VNPAY</li>
                                            <li><span class="bag">KM</span> Giảm thêm tới 1,5 triệu khi đăng ký gói cước tích điểm MobiFone.</li>
                                            <li><span class="bag">KM</span> Thanh toán qua Moca tặng ngay đế sạc trị giá 320.000đ (Cho hóa đơn có tổng giá trị từ 6 Triệu) - Số lượng có hạn</li>
                                        </ul>
                                    </a>
                                </div>
	                        </div>
	                    </c:forEach>
                    </div>
                </div>                
            </div>
        </div>
    </section>


    <section>
        <div class="container">
            <div class="ads">
                    <a target="_top"><img src="${classpath}/user/images/home/Uploads/2023/06/19/1200x200x.png" style="width: 100%;"></a>
            </div>
        </div>
    </section>


			<!-- -------------------------------------------------------------- -->
			<!-- -------------------------------------------------------------- -->
			<!-- --------------------Highlight Laptop-------------------------- -->
			<!-- -------------------------------------------------------------- -->
			<!-- -------------------------------------------------------------- -->
        <section>
            <div class="container">
                <div class="box-product-home box-home">
                    <div class="header">
                        <h4><a href="${classpath}/shop">Laptop nổi bật</a></h4>
                    </div>
                    <div class="col-content lts-product">
                        <c:forEach items="${highlightLaptops }" var="product">
	                        <div class="item">
	                            <div class="img">
	                                <a href="${classpath }/detail" title="${product.name }">
	                                    <img src="${classpath}/StorageFolder/${product.avatar }" alt="${product.name }" title="${product.name }">
	                                </a>
	                            </div>
	                            <c:if test="${not empty product.sticker }">
		                            <div class="sticker sticker-left">
		                                <span><img src="${classpath}/StorageFolder/${product.sticker }" title="" /></span>
		                            </div>
	                            </c:if>
	                            <c:if test="${not empty product.incentive }">
	                            	<c:choose>
		                            	 <c:when test="${product.incentive.equals('.')}">
		                            	 	<i class="icon-flash2"></i>Giảm <fmt:formatNumber value="${product.price - product.salePrice }" pattern="##,###" minFractionDigits="0" />
	                                        	 ₫
		                            	 </c:when>
		                            	 <c:when test="${product.incentive.equals('%')}">
		                            	 	<i class="icon-flash2"></i>Giảm <fmt:formatNumber value="${product.price - product.salePrice }" pattern="##,###" minFractionDigits="0" />
	                                        	 ₫
		                            	 </c:when>
		                            	 <c:when test="${product.incentive.equals('-')}">
		                            	 	<i class="icon-flash2"></i>Hết hàng
		                            	 </c:when>
		                            	 <c:otherwise>
				                            <span class="sales">
				                                <i class="icon-flash2"></i> ${product.incentive }
				                            </span>
				                         </c:otherwise>
		                            </c:choose>
	                            </c:if>
	                            <div class="info">
	                                <a href="${classpath }/detail" class="title" title="${product.name }">${product.name }</a>
	                                <span class="price">
										<strong>
	                                        	<fmt:formatNumber value="${product.salePrice }" pattern="##,###" minFractionDigits="0" />
	                                        	 ₫
	                                    </strong>
	                                    <strike><fmt:formatNumber value="${product.price }" pattern="##,###" minFractionDigits="0" /> ₫</strike>
	                                </span>
	                            </div>
	                            <div class="note">
	                                <span class="bag">KM</span> <label title="Ưu đãi đến 300.000đ khi mở Ví hoặc thanh toán qua VNPAY">Ưu đãi đến 300.000đ khi mở Ví hoặc ...</label>
	                                <strong class="text-orange">VÀ 8 KM KHÁC</strong>
	                            </div>
	                            <div class="promote">
	                                <a href="${classpath}/detail/${product.id}">
	                                    <ul>
	                                        <li><span class="bag">KM</span> Ưu đãi đến 300.000đ khi mở Ví hoặc thanh toán qua VNPAY</li>
	                                        <li><span class="bag">KM</span> Giảm thêm tới 800.000đ khi mở thẻ tín dụng TPBank EVO - Duyệt nhanh chỉ 15 phút, Liên hệ cửa hàng hoặc 19xx.xxxx để được hướng dẫn.</li>
	                                        <li><span class="bag">KM</span>  Trả góp qua Homepaylater giảm 10% tối đa 1.000.0000đ (Áp dụng giá trị khoản vay từ 6 triệu)</li>
	                                    </ul>
	                                </a>
	                            </div>
	                        </div>
                        </c:forEach>                
                    </div>                  
                </div>                 
            </div>
        </section>
        
        
    <section>
        <div class="container">
            <div class="ads">
                    <a target="_top"><img src="${classpath}/user/images/home/Uploads/2023/06/09/2400x400-man-hinh-gaming-gia-re-het-co-01.jpg" style="width: 100%;"></a>
            </div>
        </div>
    </section>
    
    
    		<!-- -------------------------------------------------------------- -->
			<!-- -------------------------------------------------------------- -->
			<!-- --------------------Highlight Screen-------------------------- -->
			<!-- -------------------------------------------------------------- -->
			<!-- -------------------------------------------------------------- -->
        <section>
            <div class="container">
                <div class="flash-sales box-home">
                    <div class="header">
                            <h4><a href="${classpath}/shop">Màn hình nổi bật</a></h4>
                    </div>
                    <div class="content">
                        <div class="owl-carousel lr-slider equaHeight" data-obj=".info a.title">
                            <c:forEach items="${highlightScreens }" var="product">
		                        <div class="item">
		                            <div class="img">
		                                <a href="${classpath}/detail/${product.id}" title="${product.name }">
		                                    <img src="${classpath}/StorageFolder/${product.avatar }" alt="${product.name }" title="${product.name }">
		                                </a>
		                            </div>
		                            <c:if test="${not empty product.sticker }">
			                            <div class="sticker sticker-left">
			                                <span><img src="${classpath}/StorageFolder/${product.sticker }" title="Chính hãng Apple" /></span>
			                            </div>
		                            </c:if>
		                            <c:if test="${not empty product.incentive }">
		                            	<c:choose>
			                            	 <c:when test="${product.incentive.equals('.')}">
			                            	 	<i class="icon-flash2"></i>Giảm <fmt:formatNumber value="${product.price - product.salePrice }" pattern="##,###" minFractionDigits="0" />
		                                        	 ₫
			                            	 </c:when>
			                            	 <c:when test="${product.incentive.equals('%')}">
			                            	 	<i class="icon-flash2"></i>Giảm <fmt:formatNumber value="${product.price - product.salePrice }" pattern="##,###" minFractionDigits="0" />
		                                        	 ₫
			                            	 </c:when>
			                            	 <c:when test="${product.incentive.equals('-')}">
			                            	 	<i class="icon-flash2"></i>Hết hàng
			                            	 </c:when>
			                            	 <c:otherwise>
					                            <span class="sales">
					                                <i class="icon-flash2"></i> ${product.incentive }
					                            </span>
					                         </c:otherwise>
			                            </c:choose>
		                            </c:if>
		                            <div class="info">
		                                <a href="${classpath}/detail/${product.id}" class="title" title="${product.name }">${product.name }</a>
		                                <span class="price">
		                                        <strong>
		                                        	<fmt:formatNumber value="${product.salePrice }" pattern="##,###" minFractionDigits="0" />
		                                        	 ₫
		                                        </strong>
		                                        <strike><fmt:formatNumber value="${product.price }" pattern="##,###" minFractionDigits="0" /> ₫</strike>
		                                </span>
		                            </div>
		                            <div class="note">
		                                <span class="bag">KM</span> <label title="Ưu đãi đến 300.000đ khi mở Ví hoặc thanh toán qua VNPAY">Ưu đãi đến 300.000đ khi mở Ví hoặc ...</label>
		                                <strong class="text-orange">VÀ 12 KM KHÁC</strong>
		                            </div>
		                            <div class="promote">
		                                <a href="${classpath}/detail/${product.id}">
		                                    <ul>
		                                        <li><span class="bag">KM</span> Ưu đãi đến 300.000đ khi mở Ví hoặc thanh toán qua VNPAY</li>
		                                        <li><span class="bag">KM</span> Giảm thêm tới 1,5 triệu khi đăng ký gói cước tích điểm MobiFone.</li>
		                                        <li><span class="bag">KM</span> Giảm thêm tới 1.000.000đ khi Thu cũ - Lên đời iPhone 11 | 12 | 13 Series</li>
		                                    </ul>
		                                </a>
		                            </div>
		                        </div>
	                        </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </section>

			
			
    <section>
        <div class="container">
            <div class="ads">
                    <a target="_top"><img src="${classpath}/user/images/home/Uploads/2023/06/15/group-304.png" style="width: 100%;"></a>
            </div>
        </div>
    </section>



			<!-- -------------------------------------------------------------- -->
			<!-- -------------------------------------------------------------- -->
			<!-- --------------------Highlight Smart TV------------------------ -->
			<!-- -------------------------------------------------------------- -->
			<!-- -------------------------------------------------------------- -->
    <section>
        <div class="container">
            <div class="flash-sales box-home">
                <div class="header">
                    <h4><a href="smart-tv.html">Smart TV nổi bật</a></h4>
                </div>
                <div class="content">
                    <div class="owl-carousel lr-slider equaHeight" data-obj=".info a.title">
                        <c:forEach items="${highlightSmartTVs }" var="product">
	                        <div class="item">
	                            <div class="img">
	                                <a href="${classpath}/detail/${product.id}" title="${product.name }">
	                                    <img style="max-width: 220px" src="${classpath}/StorageFolder/${product.avatar }" alt="${product.name }" title="${product.name }">
	                                </a>
	                            </div>
	                            <c:if test="${not empty product.sticker }">
		                            <div class="sticker sticker-left">
		                                <span><img src="${classpath}/StorageFolder/${product.sticker }" title="Chính hãng Apple" /></span>
		                            </div>
	                            </c:if>
	                           <c:if test="${not empty product.incentive }">
	                            	<c:choose>
		                            	 <c:when test="${product.incentive.equals('.')}">
		                            	 	<i class="icon-flash2"></i>Giảm <fmt:formatNumber value="${product.price - product.salePrice }" pattern="##,###" minFractionDigits="0" />
	                                        	 ₫
		                            	 </c:when>
		                            	 <c:when test="${product.incentive.equals('%')}">
		                            	 	<i class="icon-flash2"></i>Giảm <fmt:formatNumber value="${product.price - product.salePrice }" pattern="##,###" minFractionDigits="0" />
	                                        	 ₫
		                            	 </c:when>
		                            	 <c:when test="${product.incentive.equals('-')}">
		                            	 	<i class="icon-flash2"></i>Hết hàng
		                            	 </c:when>
		                            	 <c:otherwise>
				                            <span class="sales">
				                                <i class="icon-flash2"></i> ${product.incentive }
				                            </span>
				                         </c:otherwise>
		                            </c:choose>
	                            </c:if>
	                            <div class="info">
	                                <a href="${classpath}/detail/${product.id}" class="title" title="${product.name }">${product.name }</a>
	                                <span class="price">
	                                        <strong>
	                                        	<fmt:formatNumber value="${product.salePrice }" pattern="##,###" minFractionDigits="0" />
	                                        	 ₫
	                                        </strong>
	                                        <strike><fmt:formatNumber value="${product.price }" pattern="##,###" minFractionDigits="0" /> ₫</strike>
	                                </span>
	                            </div>
	                            <div class="note">
	                                <span class="bag">KM</span> <label title="Ưu đãi đến 300.000đ khi mở Ví hoặc thanh toán qua VNPAY">Ưu đãi đến 300.000đ khi mở Ví hoặc ...</label>
	                                <strong class="text-orange">VÀ 12 KM KHÁC</strong>
	                            </div>
	                            <div class="promote">
	                                <a href="${classpath}/detail/${product.id}">
	                                    <ul>
	                                        <li><span class="bag">KM</span> Ưu đãi đến 300.000đ khi mở Ví hoặc thanh toán qua VNPAY</li>
	                                        <li><span class="bag">KM</span> Giảm thêm tới 1,5 triệu khi đăng ký gói cước tích điểm MobiFone.</li>
	                                        <li><span class="bag">KM</span> Giảm thêm tới 1.000.000đ khi Thu cũ - Lên đời iPhone 11 | 12 | 13 Series</li>
	                                    </ul>
	                                </a>
	                            </div>
	                        </div>
                        </c:forEach>                   
                    </div>
                </div>
            </div>
        </div>
    </section>



			<!-- -------------------------------------------------------------- -->
			<!-- -------------------------------------------------------------- -->
			<!-- -----------------------------Tablet--------------------------- -->
			<!-- -------------------------------------------------------------- -->
			<!-- -------------------------------------------------------------- -->
    <section>
        <div class="container">
            <div class="flash-sales box-home">
                <div class="header">
                        <h4><a href="${classpath}/shop">Tablet</a></h4>
                </div>
                <div class="content">
                    <div class="owl-carousel lr-slider equaHeight" data-obj=".info a.title">
                        <c:forEach items="${tablets }" var="product">
	                        <div class="item">
	                            <div class="img">
	                                <a href="${classpath}/detail/${product.id}">
	                                    <img style="max-width: 220px" src="${classpath}/StorageFolder/${product.avatar }" alt="${product.name }" title="${product.name }">
	                                </a>
	                            </div>
	                            <c:if test="${not empty product.sticker }">
		                            <div class="sticker sticker-left">
		                                <span><img src="${classpath}/StorageFolder/${product.sticker }" title="" /></span>
		                            </div>
	                            </c:if>
	                            <c:if test="${not empty product.incentive }">
	                            	<c:if test="${product.incentive.equals('.')}">
	                            	 	<i class="icon-flash2"></i>Giảm ${product.price - product.salePrice }
	                            	 </c:if>
		                            <span class="sales">
		                                <i class="icon-flash2"></i> ${product.incentive }
		                            </span>
	                            </c:if>
	                            <div class="info">
	                                <a href="${classpath}/detail/${product.id}" class="title" title="${product.name }">${product.name }</a>
	                                <span class="price">
	                                        <strong>
	                                        	<fmt:formatNumber value="${product.salePrice }" pattern="##,###" minFractionDigits="0" />
	                                        	 ₫
	                                        </strong>
	                                        <strike><fmt:formatNumber value="${product.price }" pattern="##,###" minFractionDigits="0" /> ₫</strike>
	                                </span>
	                            </div>
	                            <div class="note">
	                                <span class="bag">KM</span> <label title="Ưu đãi đến 300.000đ khi mở Ví hoặc thanh toán qua VNPAY">Ưu đãi đến 300.000đ khi mở Ví hoặc ...</label>
	                                <strong class="text-orange">VÀ 12 KM KHÁC</strong>
	                            </div>
	                            <div class="promote">
	                                <a href="${classpath}/detail/${product.id}">
	                                    <ul>
	                                        <li><span class="bag">KM</span> Ưu đãi đến 300.000đ khi mở Ví hoặc thanh toán qua VNPAY</li>
	                                        <li><span class="bag">KM</span> Giảm thêm tới 800.000đ khi mở thẻ tín dụng TPBank EVO - Duyệt nhanh chỉ 15 phút, Liên hệ cửa hàng hoặc 19xx.xxxx để được hướng dẫn.</li>
	                                        <li><span class="bag">KM</span>  Trả góp qua Homepaylater giảm 10% tối đa 1.000.0000đ (Áp dụng giá trị khoản vay từ 6 triệu)</li>
	                                    </ul>
	                                </a>
	                            </div>
	                        </div>
                        </c:forEach>                    
                    </div>
                </div>
            </div>
        </div>
    </section>


	
	
			<!-- -------------------------------------------------------------- -->
			<!-- -------------------------------------------------------------- -->
			<!-- -----------------------Speack-Headphone----------------------- -->
			<!-- -------------------------------------------------------------- -->
			<!-- -------------------------------------------------------------- -->
    <section>
        <div class="container">
            <div class="flash-sales box-home">
                <div class="header">
                        <h4><a href="${classpath}/shop">Loa - Tai nghe nổi bật</a></h4>
                </div>
                <div class="content">
                    <div class="owl-carousel lr-slider equaHeight" data-obj=".info a.title">
                        <c:forEach items="${highlightSpeakerAndHeadphones }" var="product">
	                        <div class="item">
	                            <div class="img">
	                                <a href="${classpath}/detail/${product.id}" title="${product.name }">
	                                    <img style="max-width: 200px" src="${classpath}/StorageFolder/${product.avatar }" alt="${product.name }" title="${product.name }">
	                                </a>
	                            </div>
	                            <c:if test="${not empty product.sticker }">
		                            <div class="sticker sticker-left">
		                                <span><img src="${classpath}/StorageFolder/${product.sticker }" title="Chính hãng Apple" /></span>
		                            </div>
	                            </c:if>
	                            <div class="info">
	                                <a href="${classpath}/detail/${product.id}" class="title" title="${product.name }">${product.name }</a>
	                                <span class="price">
	                                        <strong>
	                                        	<fmt:formatNumber value="${product.salePrice }" pattern="##,###" minFractionDigits="0" />
	                                        	 ₫
	                                        </strong>
	                                        <strike><fmt:formatNumber value="${product.price }" pattern="##,###" minFractionDigits="0" /> ₫</strike>
	                                </span>
	                            </div>
	                            <div class="note">
	                                <span class="bag">KM</span> <label title="Ưu đãi đến 300.000đ khi mở Ví hoặc thanh toán qua VNPAY">Ưu đãi đến 300.000đ khi mở Ví hoặc ...</label>
	                                <strong class="text-orange">VÀ 12 KM KHÁC</strong>
	                            </div>
	                            <div class="promote">
	                                <a href="${classpath}/detail/${product.id}">
	                                    <ul>
	                                        <li><span class="bag">KM</span> Ưu đãi đến 300.000đ khi mở Ví hoặc thanh toán qua VNPAY</li>
	                                        <li><span class="bag">KM</span> Giảm thêm tới 1,5 triệu khi đăng ký gói cước tích điểm MobiFone.</li>
	                                        <li><span class="bag">KM</span> Giảm thêm tới 1.000.000đ khi Thu cũ - Lên đời iPhone 11 | 12 | 13 Series</li>
	                                    </ul>
	                                </a>
	                            </div>
	                        </div>
                        </c:forEach>                   
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section>
        <div class="container">
            <div class="ads">
                    <a target="_top"><img src="${classpath}/user/images/home/Uploads/2023/06/05/mua-pin-pisen-tang-cap-pisen-01-1_638215591551019574.jpg" style="width: 100%;"></a>
            </div>
        </div>
    </section>


        
    <section>
        <div class="container">
            <div class="box-icon box-home">
                <div class="header">
                    <h4><a href="${classpath}/shop">Phụ Kiện</a></h4>
                </div>
                <div class="content">
                    <ul>
                        <li>
                            <a href="${classpath}/shop">
                                <span><img src="${classpath}/user/images/cat/Uploads/2021/11/18/icon-moi-2.png" /></span>
                                <label>Thẻ nhớ - USB</label>
                            </a>
                        </li>
                        <li>
                            <a href="${classpath}/shop">
                                <span><img src="${classpath}/user/images/cat/Uploads/2021/11/18/icon-moi-15.png" /></span>
                                <label>Tai nghe</label>
                            </a>
                        </li>
                        <li>
                            <a href="${classpath}/shop">
                                <span><img src="${classpath}/user/images/cat/Uploads/2021/11/18/icon-moi-10.png" /></span>
                                <label>Sạc dự phòng</label>
                            </a>
                        </li>
                        <li>
                            <a href="${classpath}/shop">
                                <span><img src="${classpath}/user/images/cat/Uploads/2021/11/18/icon-moi-1.png" /></span>
                                <label>Quạt Mini</label>
                            </a>
                        </li>
                        <li>
                            <a href="${classpath}/shop">
                                <span><img src="${classpath}/user/images/cat/Uploads/2021/11/18/icon-moi-14.png" /></span>
                                <label>Loa</label>
                            </a>
                        </li>
                        <li>
                            <a href="${classpath}/shop">
                                <span><img src="${classpath}/user/images/cat/Uploads/2021/11/18/icon-xanh-2.png" /></span>
                                <label>Dây đeo đồng hồ, Airtag</label>
                            </a>
                        </li>
                        <li>
                            <a href="${classpath}/shop">
                                <span><img src="${classpath}/user/images/cat/Uploads/2021/11/18/icon-moi-9.png" /></span>
                                <label>Củ sạc - Dây cáp</label>
                            </a>
                        </li>
                        <li>
                            <a href="${classpath}/shop">
                                <span><img src="${classpath}/user/images/cat/Uploads/2021/11/18/icon-moi-12.png" /></span>
                                <label>Camera an ninh</label>
                            </a>
                        </li>
                        <li>
                            <a href="${classpath}/shop">
                                <span><img src="${classpath}/user/images/cat/Uploads/2021/11/18/icon-moi-11.png" /></span>
                                <label>Thiết bị mạng</label>
                            </a>
                        </li>
                        <li>
                            <a href="${classpath}/shop">
                                <span><img src="${classpath}/user/images/cat/Uploads/2021/11/18/icon-moi-3.png" /></span>
                                <label>Apple</label>
                            </a>
                        </li>
                        <li>
                            <a href="${classpath}/shop">
                                <span><img src="${classpath}/user/images/cat/Uploads/2021/11/18/icon-moi-6.png" /></span>
                                <label>Bao da - ốp lưng</label>
                            </a>
                        </li>
                        <li>
                            <a href="${classpath}/shop">
                                <span><img src="${classpath}/user/images/cat/Uploads/2021/11/18/icon-xanh-5.png" /></span>
                                <label>Dán màn hình</label>
                            </a>
                        </li>
                        <li>
                            <a>
                                <span><img src="${classpath}/user/images/cat/Uploads/2021/11/18/icon-xanh-3.png" /></span>
                                <label>Phụ kiện Laptop</label>
                            </a>
                        </li>
                        <li>
                            <a href="${classpath}/shop">
                                <span><img src="${classpath}/user/images/cat/Uploads/2021/11/18/icon-xanh-4.png" /></span>
                                <label>Camera hành trình</label>
                            </a>
                        </li>
                        <li>
                            <a href="${classpath}/shop">
                                <span><img src="${classpath}/user/images/cat/Uploads/2021/11/18/icon-xanh-6.png" /></span>
                                <label>Cân thông minh</label>
                            </a>
                        </li>
                        <li>
                            <a href="${classpath}/shop">
                                <span><img src="${classpath}/user/images/cat/Uploads/2021/11/18/icon-xanh-1.png" /></span>
                                <label>Tay cầm chống rung</label>
                            </a>
                        </li>
                        <li>
                            <a href="${classpath}/shop">
                                <span><img src="${classpath}/user/images/cat/Uploads/2021/11/18/icon-moi-7.png" /></span>
                                <label>Chuột</label>
                            </a>
                        </li>
                        <li>
                            <a href="${classpath}/shop">
                                <span><img src="${classpath}/user/images/cat/Uploads/2021/11/18/icon-moi-8.png" /></span>
                                <label>Bàn Phím </label>
                            </a>
                        </li>
                        <li>
                            <a href="${classpath}/shop">
                                <span><img src="${classpath}/user/images/cat/Uploads/2021/11/18/roboot.png" /></span>
                                <label>Máy lọc không khí</label>
                            </a>
                        </li>
                        <li>
                            <a href="${classpath}/shop">
                                <span><img src="${classpath}/user/images/cat/Uploads/2021/11/18/icon-web-may-loc.png" /></span>
                                <label>Robot hút bụi</label>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>


    <section>
        <div class="container">
            <div class="corevalue">
                <div class="item">
                    <span class="icon">
                        <i class="icon-chinhhang"></i>
                    </span>
                    <div class="text">
                        <span>Sản phẩm</span>
                        <strong>CHÍNH HÃNG</strong>
                    </div>
                </div>
                <div class="item">
                    <span class="icon">
                        <i class="icon-freeship"></i>
                    </span>
                    <div class="text">
                        <span>Miễn phí vận chuyển</span>
                        <strong>TOÀN QUỐC</strong>
                    </div>
                </div>
                <div class="item">
                    <span class="icon">
                        <i class="icon-hotline"></i>
                    </span>
                    <div class="text">
                        <span>Hotline hỗ trợ</span>
                        <strong>19xx.xxxx</strong>
                    </div>
                </div>
                <div class="item">
                    <span class="icon">
                        <i class="icon-doitra"></i>
                    </span>
                    <div class="text">
                        <span>Thủ tục đổi trả</span>
                        <strong>DỄ DÀNG</strong>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section>
        <div class="container">
            <div class="subscript">
                <div class="icon-text">
                    <img src="${classpath}/user/Content/web/img/sub-logo.png" />
                    <div class="text">
                        <h4>Đăng ký nhận tin</h4>
                        <p>Đăng ký để nhận những chương trình khuyến mại hot nhất của Green Mobile</p>
                    </div>
                </div>
                <div class="form">
                    <form onsubmit="return submitSubscription(this);">
                        <input name="__RequestVerificationToken" type="hidden" value="P2moZtQ5iNUF3zqhOZtWqT5oTuDYA37VD3ekt8rocq_UKpttFCAnE40LynboIett8MzJO2F4xi0NBWxbANmJ5V7Qvdw1" />
                        <div class="input">
                            <input type="email" id="email" name="email" placeholder="Nhập E-mail của bạn" />
                        </div>
                        <button type="submit"><i class="icon-fly"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <iframe src="https://asia.creativecdn.com/tags?id=pr_n4X0y6ApZyJaHX1dNxQd_home" width="1" height="1" scrolling="no" frameBorder="0" style="display: none;"></iframe>

    <footer>
        <div class="container">
            <div class="bg">
                <div class="col-content">
                    <div class="link-content">
                    <h4><a>Hỗ Trợ - Dịch Vụ</a></h4>
                    <ul>
                        <li><a href="${classpath}/shop">Mua hàng trả góp</a></li>
                        <li><a href="${classpath}/home">Hướng dẫn đặt hàng và thanh toán</a></li>
                        <li><a href="${classpath}/cart">Tra cứu đơn hàng</a></li>
                        <li><a href="${classpath}/home">Chính sách bảo hành</a></li>
                        <li><a href="${classpath}/home">Phạm vi, điều khoản gói bảo hành mở rộng</a></li>
                        <li><a href="${classpath}/home">Chính sách bảo mật</a></li>
                        <li><a href="${classpath}/home">Chính sách giải quyết khiếu nại</a></li>
                        <li><a href="${classpath}/home">Điều khoản mua bán hàng hóa</a></li>
                        <li><a href="${classpath}/home">Câu hỏi thường gặp</a></li>
                    </ul>
                    </div>
                        <div class="link-content">
                        <h4><a>Thông Tin Liên Hệ</a></h4>
                        <ul>
                            <li><a href="${classpath}/shop">Bán hàng Online</a></li>
                            <li><a href="#">Chăm sóc khách hàng</a></li>
                            <li><a href="#">Dịch vụ sửa chữa Green support team</a></li>
                            <li><a href="#">Liên hệ khối văn phòng</a></li>
                            <li><a href="#">Hợp tác kinh doanh</a></li>
                            <li><a href="#">Tra cứu bảo hành</a></li>
                        </ul>
                    </div>
                        <div class="link-content">
                        <h4><a href="#">Hệ thống siêu thị toàn quốc</a></h4>
                        <ul>
                            <li><a href="#">Danh sách siêu thị toàn quốc</a></li>
                        </ul>
                    </div>
                
                    <div>
                        <h4>Tổng đài</h4>
                        <a class="hotline" href="tel:19xx.xxxx">19xx.xxxx</a>
                    </div>
                
                    <div>
                        <h4>Thanh toán miễn phí</h4>
                        <ul class="list-logo">
                            <li>
                                <img src="${classpath}/user/Content/web/img/logo-visa.png">
                                <img src="${classpath}/user/Content/web/img/logo-master.png">
                            </li>
                            <li>
                                <img src="${classpath}/user/Content/web/img/logo-jcb.png">
                                <img src="${classpath}/user/Content/web/img/logo-samsungpay.png">
                            </li>
                            <li>
                                <img src="${classpath}/user/Content/web/img/logo-atm.png">
                                <img src="${classpath}/user/Content/web/img/logo-vnpay.png">
                            </li>
                        </ul>
                    </div>
                    <div>
                        <h4>Hình thức vận chuyển</h4>
                        <ul class="list-logo">
                            <li>
                                <img src="${classpath}/user/Content/web/img/nhattin.jpg">
                                <img src="${classpath}/user/Content/web/img/vnpost.jpg">
                            </li>
                        </ul>
                        <div class="mg-top20">
                            <a href="http://online.gov.vn/Home/WebDetails/28738" target="_blank"><img src="${classpath}/user/Content/web/img/logo-bct.png"></a>
                        </div>
                    </div>
                </div>
                <div class="info">
                    <p>© 2023. CÔNG TY CỔ PHẦN XÂY DỰNG VÀ ĐẦU TƯ THƯƠNG MẠI GREEN COMPANY. MST:  0106713191. (Đăng ký lần đầu: Ngày dd tháng MM năm yyyy)</p>
                    <p><strong>GP số xxx/GP-TTĐT do sở TTTT Hà Nội cấp ngày dd/MM/yyyy</strong></p>
                    <p>Địa chỉ: Số 89 Đường Tây Viễn Đông, Phường Lãng Hà, Quận Xuyên Đông, Thành Phố Hà Nội, Việt Nam. Điện thoại: 19xx.xxxx. Chịu trách nhiệm nội dung: <strong>N**** Q**** M****</strong>. </p>
                </div>
            </div>
            <div id="navSocial">
                <div class="social">
                    <ul>
                        <li><a href="#" title="Facebook Green Mobile" target="_blank" class="blue"><span><i class="icon-facebook"></i></span></a></li>
                        <li><a href="#" title="Youtube Green Mobile Channel" target="_blank" class="red"><span><i class="icon-youtube"></i></span></a></li>
                        <li><a href="#" title="Green Mobile Instagram" target="_blank" class="rainbow"><span><i class="icon-instagram"></i></span></a></li>
                        <li><a href="#" title="Tiktok" target="_blank" class="black"><span><i class="icon-tiktok"></i></span></a></li>
                    </ul>
                </div>
            </div>            
            <div id="backtoTop">
                <a id="top" href="javascript:;">
                    <i class="icon-left"></i>
                </a>
            </div>
        </div>
    </footer>


    <div class="footer-zalo" style="position: fixed; bottom: 110px; right: 33px;">
        <a href="${classpath}/home" target="_blank"><img src="${classpath}/user/Content/web/img/zalo.svg" /></a>
    </div>





    <script src="${classpath}/user/js-css/web_v1.1.8.5.js"></script>


	<!-- slide show-->
    <script type="text/javascript">
        hh_home();
    </script>


    <style>
        .top-slider img{max-width: 1200px;}
    </style>

</body>

</html>




