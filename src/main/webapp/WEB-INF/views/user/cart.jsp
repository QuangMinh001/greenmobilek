<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html class="mdl-js">

<head>

	<title>Giỏ hàng</title>
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
       <!--  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"> -->

	<style>
	.product-center .current-product-price label.text-green {
		display: none
	}
	
	a:hover{
		cursor: pointer;
	}
	</style>


</head>

<body>

	<div class="ticker">
        <ul>
            <li>
                <div class="top-link">
                    <span class="pulse"></span> <p><strong>Sale rẻ hết cỡ - Xiaomi Redmi Note 12 Series, Giá chỉ hơn 4.000.000đ</strong> <a href="${classpath}/detail" target="_top">Xem chi tiết</a></p>
                </div>
            </li>
            <li>
                <div class="top-link">
                    <span class="pulse"></span> <p><strong>Cơ hội sở hữu Samsung S20 FE 256GB chỉ với 6.990.000đ - SL có hạn</strong> <a href="${classpath}/detail" target="_top">Xem chi tiết</a></p>
                </div>
            </li>
            <li>
                <div class="top-link">
                    <span class="pulse"></span> <p><strong>Sale rẻ hết cỡ - reno8T 5G - Chính hãng, Giá chỉ từ 8.690.000đ</strong> <a href="${classpath}/detail" target="_blank">Xem chi tiết</a></p>
                </div>
            </li>
        </ul>
    </div>
	<header>
		<div class="top-navigation">
			<div class="container">
				<ul>
					<li><a href="${classpath }/home">Bản mobile</a></li>
					<li><a href="${classpath }/home">Giới thiệu</a></li>
					<li><a href="${classpath }/home">Sản phẩm đã xem</a></li>
					<li><a href="${classpath }/home">Trung tâm bảo hành</a></li>
					<li><a href="${classpath }/home">Hệ thống 127 siêu thị</a></li>
					<li><a href="${classpath }/home">Tuyển
							dụng</a></li>
					<li><a href="${classpath }/cartvs">Tra cứu đơn hàng</a></li>
					<li><a id="login-modal"
						href="/Account/Login?ReturnUrl=/gio-hang">Đăng nhập</a></li>
				</ul>
			</div>
		</div>

	</header>


	
	<c:choose>
		<c:when test="${isEmpty == true }">
			<section>
		        <div class="container">
		            <div class="cart">
		                <div class="header">
		                    <div class="back">
		                    	<a href="javascript:window.history.back();">
		                            <i class="icon-leftar"></i>
		                            <strong>Quay lại</strong>
		                        </a>
		                    </div>
		                </div>
		                <div class="cart-layout">
		                    <div class="cart-content">
		                        <div class="no-items">
		                            <div class="cart-icon">
		                                <i class="icon-cart-index"></i>
		                                <label>Giỏ hàng</label>
		                            </div>
		                            <div class="img">
		                                <img src="${classpath}/user/Content/web/content-icon/no-item.png"/>
		                                <p><strong>Hiện chưa có sản phẩm nào trong giỏ hàng</strong></p>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </section>
		</c:when>
		<c:otherwise>
		<section>
			<div class="container">
				<div class="cart">
					<div class="header">
	                    <div class="back">
	                        <a href="javascript:window.history.back();">
	                            <i class="icon-leftar"></i>
	                            <strong>Quay lại</strong>
	                        </a>
	                    </div>
	                </div>
	
					<div class="cart-layout">
						<div class="cart-info" id="cartInfo">
	
							<div class="cart-icon">
								<i class="icon-cart-index"></i> <label>Giỏ hàng</label>
							</div>
							<div class="cart-items">
								<c:forEach var="item" items="${cart.cartProducts }" varStatus="loop">
									<div class="item ">
										<input type="hidden" class="product_url" name="3600"
											value="https://hoanghamobile.com/dien-thoai-di-dong/vivo-y02t-4gb-64gb-chinh-hang">
										<div class="img">
											<img
												src="${classpath }/StorageFolder/${item.avatar }"
												alt="${item.avatar }">
											<p class="title">${item.name }</p>
											<p class="price">
												<strong><fmt:formatNumber value="${productService.getById(item.productId).salePrice }" pattern="##,###" minFractionDigits="0" /></strong>
												<strike><fmt:formatNumber value="${productService.getById(item.productId).price }" pattern="##,###" minFractionDigits="0" /></strike>
											</p>
											<div class="number">
												<label>Số lượng</label>
												<c:choose>
														<c:when test="${productService.getById(item.productId).getIncentive().equals('-') }">
															<div><strong>Hết hàng</strong></div>
														</c:when>
														<c:otherwise>
															<div class="control">
																<c:choose>
																	<c:when test="${item.quantityInCart > 1 }">
																		<a href="" role="button" style="min-width:15px; border: 2px solid black; "
																		onclick="updateProductQuantity(${item.productId }, -1)" >-</a>
																	</c:when>
																	<c:otherwise>
																		<a role="button" style="min-width:15px; border: 2px solid black;">-</a>
																	</c:otherwise>
																</c:choose>
																<strong><span id="productQuantity_${item.productId }" 
																	style="border: 1px solid black; padding-bottom:3px; padding: 0px 3px 3px 3px;">
																	${item.quantityInCart }</span>
																</strong>
																<c:choose>
																	<c:when test="${productService.getById(item.productId).getQuantity() > item.quantityInCart }">
																		<a href="" role="button" style="min-width: 15px; border: 2px solid black; "
																		onclick="updateProductQuantity(${item.productId }, 1)" >+</a>
																	</c:when>
																	<c:otherwise>
																		<a role="button" style="min-width: 15px; border: 2px solid black; "
																		onclick="outOfQuantity()">+</a>
																	</c:otherwise>
																</c:choose>	
															</div>
														</c:otherwise>
												</c:choose>
											</div>
										</div>
		
										<div class="info">
											<div class="edit">
												<a href="${classpath }/delete-cart-item/${item.productId }" class="red"><i
													class="icon-minutes"></i></a>
											</div>
											<div class="promote">
												<div class="offer-items" id="of_Y02T64D"></div>
											</div>
											<div class="options">
												<div class="option">
													<strong>Màu sắc</strong> <label> <i
														class="icon-checked"></i> <span>Đen Xám </span>
													</label>
												</div>
											</div>
										</div>
		
									</div>
								</c:forEach>
							</div>
							
	
							<div class="cart-total">
								<%-- <p>
									Tổng giá trị: <!-- id="totalCartPriceId" -->
									<strong class="price" id="totalCartPriceId"><fmt:formatNumber value="${totalCartPrice }" pattern="##,###" minFractionDigits="0" /> ₫</strong>
								</p>
								<p>
									Giảm giá: <strong class="price">-00 ₫</strong>
								</p> --%>
								<p>
									Tổng thanh toán: 
									<strong class="price" id="totalCartPriceId"><fmt:formatNumber value="${totalCartPrice }" pattern="##,###" minFractionDigits="0" /> ₫</strong>
								</p>
	
								<button class="next">Tiếp tục</button>
							</div>
						</div>
	
	
						<div class="cart-form">
	
	
	
						<form action="place-order" method="get">
								<h3>Thông tin đặt hàng</h3>
								<p class="text-gray">
									<i>Bạn cần nhập đầy đủ các trường thông tin có dấu *</i>
								</p>
								<div class="row">
									<div class="col">
										<div class="control">
											<input name="txtName" id="txtName" type="text" placeholder="Họ và tên *"
												data-required="1">
										</div>
									</div>
								</div>
	
								<div class="row">
									<div class="col">
										<div class="control">
											<input name="txtMobile" id="txtMobile" type="tel" placeholder="Số điện thoại *"
												data-required="1">
										</div>
									</div>
								</div>
								<div class="row shInfo">
									<div class="col">
										<div class="control">
											<input name="txtEmail" id="txtEmail" type="email" placeholder="Email">
										</div>
									</div>
								</div>

								<div class="row">
									<span class="group"><strong>Hình thức nhận hàng</strong></span>
								</div>
								<div class="row">
									<div class="col">
										<div id="payType_1" class="payment-opt">
											<label class="radio-ctn"> <span>Nhận hàng tại
													nhà</span> <input name="ReceiveTypeID" type="radio" value="1"
												class="cart-paymentTypeId"> <span class="checkmark"></span>
											</label>
										</div>
									</div>
									<div class="col">
										<div id="payType_5" class="payment-opt payment-selected">
											<label class="radio-ctn"> <span>Nhận hàng tại
													cửa hàng</span> <input name="ReceiveTypeID" type="radio" value="5"
												class="cart-paymentTypeId" checked=""> <span
												class="checkmark"></span>
											</label>
										</div>
									</div>
								</div>
	
								<div id="f_payType_5" style="">
									<div class="row">
										<span class="group"><strong>Nơi nhận hàng</strong></span>
									</div>
																					
									<div class="row shInfo">
										<div class="col">
											<div class="control">
												<input id="txtAddress" name="txtAddress" type="text"
													placeholder="Địa chỉ nhận hàng *">
											</div>
										</div>
									</div>
								</div>
	
								<div class="row shInfo">
									<div class="col">
										<div class="control">
											<textarea name="description" id="description" placeholder="Ghi chú" spellcheck="false"
												data-minlength="15" style="height: 70px; overflow-y: hidden;"></textarea>
										</div>
									</div>
								</div>
	
									
								<div class="row shInfo">
									<div class="control-button">
	
										<button type="submit">XÁC NHẬN VÀ ĐẶT HÀNG</button>
									</div>
								</div>
							</form>
	
						</div>
					</div>
				</div>
			</div>
		</section>
		</c:otherwise>
	</c:choose>

	<footer>
		<div class="container">
			<div id="navSocial">
				<div class="social">
					<ul>
						<li><a href="https://www.facebook.com"
							title="" target="_blank" class="blue"><span><i
									class="icon-facebook"></i></span></a></li>
						<li><a
							href="https://www.youtube.com"
							title="" target="_blank"
							class="red"><span><i class="icon-youtube"></i></span></a></li>
						<li><a href="https://www.instagram.com"
							title="" target="_blank" class="rainbow"><span><i
									class="icon-instagram"></i></span></a></li>
						<li><a href="https://www.tiktok.com"
							title="" target="_blank" class="black"><span><i
									class="icon-tiktok"></i></span></a></li>
					</ul>
				</div>
			</div>

			<div id="backtoTop" style="display: block;">
				<a id="top" href="javascript:;"> <i class="icon-left"></i>
				</a>
			</div>
		</div>
	</footer>

    <div class="footer-zalo" style="position: fixed; bottom: 110px; right: 33px;">
        <a href="${classpath}/home" target="_blank"><img src="${classpath}/user/Content/web/img/zalo.svg" /></a>
    </div>



	<script src="${classpath}/user/js-css/web_v1.1.8.5.js"></script>   



	<script type="text/javascript">
		addToCart = function(productId, quantityInCart) {
			//giữ liệu gửi đi
			let data = {
				productId: productId, //lay theo id
				quantityInCart: quantityInCart
			};
				
			//$ === jQuery
			jQuery.ajax({
				url : "/add-to-cart",// action
				type : "POST",
				contentType: "application/json",
				data : JSON.stringify(data),
				dataType : "json", //Kieu du lieu tra ve tu controller la json
				
				success : function(jsonResult) {
					/* alert(jsonResult.code + ": " + jsonResult.message); */
					let totalProducts = jsonResult.totalCartProducts;
					$("#totalCartProductsId").html(totalProducts);
				},
				
				error : function(jqXhr, textStatus, errorMessage) {
					//alert(jsonResult.code + ': Luu thanh cong...!')
				}
			});
		}
	</script>
	
	<script type="text/javascript">
		updateProductQuantity = function(_productId, _quantity) {
			let data = {
				productId : _productId, //lay theo id
				quantityInCart : _quantity
			};

			//$ === jQuery
			jQuery.ajax({
				url : "/update-product-quantity",
				type : "POST",
				contentType : "application/json; charset=utf-8",
				data : JSON.stringify(data),
				dataType : "json", //Kieu du lieu tra ve tu controller la json

				success : function(jsonResult) {
					/* alert(jsonResult.code + ": " + jsonResult.message); 
					let totalProducts = jsonResult.totalCartProducts; */
					$("#productQuantity_" + jsonResult.productId).html(jsonResult.newQuantity);
					let totalProducts = jsonResult.totalCartProducts;
					$("#totalCartProductsId").html(totalProducts);
					$("#totalCartPriceId").html(jsonResult.totalCartPrice);
					
				}
			});
		}
		
		function outOfQuantity() {
			  alert("Hết hàng");
		}
	</script>
	
	
	
	
</html>