<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
    
    <meta charset="utf-8">

    <title>${product.name }</title>
    <!-- logo title -->
    
    <!-- <link rel="shortcut icon" type="image/x-icon" href="https://greenmobile.com/favicon.ico" /> -->
        <link rel="preload" type="text/css" href="${classpath}/user/Content/web/fonts/Segoe UI/Segoe UI.woff2" as="font" type="font/woff2" crossorigin="">
        <link rel="preload" type="text/css" href="${classpath}/user/Content/web/fonts/Segoe UI/Segoe UI Italic.woff2" as="font" type="font/woff2" crossorigin="">
        <link rel="preload" type="text/css" href="${classpath}/user/Content/web/fonts/Segoe UI/Segoe UI Bold.woff2" as="font" type="font/woff2" crossorigin="">
        <link rel="preload" type="text/css" href="${classpath}/user/Content/web/fonts/Segoe UI/Segoe UI Bold Italic.woff2" as="font" type="font/woff2" crossorigin="">
        <link rel="preload" type="text/css" href="${classpath}/user/Content/web/fonts/Segoe UI/Segoe UI Semilight.woff2" as="font" type="font/woff2" crossorigin="">
        <link rel="preload" type="text/css" href="${classpath}/user/Content/web/fonts/Segoe UI/Segoe UI Semilight Italic.woff2" as="font" type="font/woff2" crossorigin="">
        <link rel="preload" type="text/css" href="${classpath}/user/Content/web/fonts/icon/fonts/hoangha.woff" as="font" type="font/woff" crossorigin="">
     	<%-- <link rel="preload" as="script" href="${classpath}/user/js-css/web_v1.1.8.5.js"> --%>
        <link rel="preload" as="style" href="${classpath}/user/js-css/web_v1.1.8.5.css">
        <link href="${classpath}/user/js-css/web_v1.1.8.5.css" rel="stylesheet" type="text/css">


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

    <!-- --------------------------Header------------------------------ -->
	<!-- -------------------------------------------------------------- -->
	<!-- -------------------------------------------------------------- -->
	<jsp:include page="/WEB-INF/views/user/layout/header.jsp"></jsp:include>
    <!-- -------------------------------------------------------------- -->
    <!-- -------------------------------------------------------------- -->
    <!-- -------------------------------------------------------------- -->

    <section>
        <div class="container">
            <ol class="breadcrumb" itemscope itemtype="http://schema.org/BreadcrumbList">
                <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                    <a itemprop="item" href="${classpath}/home"><span itemprop="name" content="Trang chủ"><i class="icon-home" title="Trang chủ"></i> Trang chủ</span></a>
                    <meta itemprop="position" content="1" />
                </li>
                    <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                        <a itemprop="item" href="${classpath}/shop"><span itemprop="name" content="Laptop">Laptop</span></a>
                        <meta itemprop="position" content="2" />
                    </li>
                    <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                        <a itemprop="item" href="${classpath}/shop"><span itemprop="name" content="Phân loại sản phẩm ">Phân loại sản phẩm </span></a>
                        <meta itemprop="position" content="3" />
                    </li>
                    <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                        <a itemprop="item" href="${classpath}/shop"><span itemprop="name" content="Laptop Gaming">Laptop Gaming</span></a>
                        <meta itemprop="position" content="4" />
                    </li>
                <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                    <a itemprop="item" href="${classpath}/detail" title="Laptop Gaming Acer Aspire 7 A715-42G-R05G (R5-5500U/8GB/512GB PCIE/VGA 4GB GTX 1650/15.6 FHD 144HZ/WIN11/ĐEN) (NH.QAYSV.007) - Chính hãng" class="actived"><span itemprop="name" content="Laptop Gaming Acer Aspire 7 A715-42G-R05G - Chính hãng">Laptop Gaming Acer Aspire 7 A715-42G-R05G - Chính hãng</span></a>
                    <meta itemprop="position" content="5" />
                </li>
            </ol>
        </div>
    </section>

	<!-- can -->
    <section>
		<div class="container">
			<div class="product-details">
				<div class="top-product">
					<h1>
                        ${product.name }
					</h1>	
				</div>				
				<div class="product-details-container">
					<div class="product-image">
						<div class="love-this-button">
							<!-- <a title="Thêm vào sản phẩm yêu thích" href="javascript:wishProduct(2653, false)"> -->
							<a title="Thêm vào sản phẩm yêu thích">
								<i class="icon-love-1"></i>
								<i class="icon-love-2"></i>
							</a>
						</div>
						<div id="imagePreview">
							<!-- Loading Screen -->
							<div data-u="loading" class="loading">
								<div class="filter"></div>
								<div class="load-bg"></div>
							</div>						
							<div data-u="slides" class="viewer">
								<c:forEach items="${productImages }" var="image">
									<div>
										<a data-fancybox="gallery" rel="group" href="${classpath}/StorageFolder/${image.path }">
											<img data-u="image" src="${classpath}/StorageFolder/${image.path }" title="${product.name}" alt="${product.name}" />
										</a>
										<div data-u="thumb">
											<img class="i" src="${classpath}/StorageFolder/${image.path }" />
										</div>
									</div>
								</c:forEach>
							</div>
							<!-- Thumbnail Navigator -->
							<div data-u="thumbnavigator" class="jssort11" data-autocenter="1" data-scale-bottom="0.75">
								<!-- Thumbnail Item Skin Begin -->
								<div class="bg-shadow" style="top: 0;left: -30px;width: 370px;height: 80px;position: absolute;box-shadow: 0px 4px 6px #00000029; border-radius: 8px;"></div>
								<div data-u="slides" style="cursor:pointer;">
									<div data-u="prototype" class="p">
										<div data-u="thumbnailtemplate" class="tp"></div>
									</div>
								</div>
								
								<span class="slider-t-l">
									<i class="icon-right"></i>
								</span>
								<span class="slider-t-r">
									<i class="icon-right"></i>
								</span>
								<!-- Thumbnail Item Skin End -->
							</div>
							
							<!-- Arrow Navigator -->
							<span data-u="arrowleft" class="slider-l" data-autocenter="2">
								<i class="icon-left"></i>
							</span>
							<span data-u="arrowright" class="slider-r" data-autocenter="2">
								<i class="icon-right"></i>
							</span>
						</div>
					</div>
                <div class="product-center" style="position:relative;">
                    <p class="price current-product-price">
                        <strong>
                            <fmt:formatNumber value="${product.salePrice }" pattern="##,###" minFractionDigits="0" />
                        </strong>
                        <i><strike><fmt:formatNumber value="${product.price }" pattern="##,###" minFractionDigits="0" /></strike></i>
                        <i> | Giá đã bao gồm 10% VAT</i>
                    </p>
                    <p class="freeship">
                        <span>MIỄN PHÍ VẬN CHUYỂN TOÀN QUỐC</span>
                    </p>
                    <div style="position:absolute; right:0; display:none;">
                        <label>SKU:</label> <strong id="dfSKU">NHQAYSV007</strong>
                    </div>
                    <div class="product-option color">
                        <strong class="label">Lựa chọn màu và xem địa chỉ còn hàng</strong>
                        <div class="options" id="colorOptions">
                                <div data-name="Đen" data-hotsale="" data-pricenote="" data-buyonline="true" data-bestPrice="<fmt:formatNumber value="${product.salePrice }" 
                                	pattern="##,###" minFractionDigits="0" />" data-lastPrice="20,550,000" data-idx="0" data-hex="#000000" data-title="" data-id="123" data-sku="NHQAYSV007" class="item selected">
                                    <span><label><strong>Đen</strong></label></span>
                                    <strong><fmt:formatNumber value="${product.salePrice }" pattern="##,###" minFractionDigits="0" /></strong>
                                    <div class="colorGuide" style="background:#000000">
                                        <label><strong>Đen</strong></label>
                                    </div>
                                </div>
                        </div>
                    </div>
                    <div class="product-promotion">
                        <strong class="label text-green">KHUYẾN MÃI</strong>
                        <ul>
                            <li><span class="bag">KM 1</span></li>
                            <li>
                                <a href="${classpath}/detail" style="font-weight:normal">Tặng phiếu mua hàng 400.000đ (trừ thẳng) khi mua kèm Office Home &amp; Student 2021 hoặc 200.000đ (trừ thẳng) khi mua kèm Microsoft 365 từ 29/7 - 30/08/2023.</a>
                            </li>
                        </ul>
                    </div>
                    <div class="product-action">
                            <a title="Mua ngay" data-sku="NHQAYSV007" href="javascript:;" class="btn-red btnQuickOrder btnbuy"><strong>MUA NGAY</strong><span> Giao tận nhà (COD) <br />Hoặc Nhận tại cửa hàng</span></a>
                            <a title="Mua trả góp" href="javascript:;" class="btnInstallment btn-green btnbuy"><strong>TRẢ GÓP</strong><span>Công ty Tài chính <br /> Hoặc 0% qua thẻ tín dụng</span></a>
                            <a style="width:43px; display:flex; flex-direction:column; max-width:80px; padding:5px;" title="Thêm vào giỏ hàng"
                            	class="btn-orange btnbuy btn-icon" onclick="addToCart(${product.id}, 1)">
                            	<i class="icon-cart"></i><span class="cart-plus" style="right:21px;"><i class="icon-plus"></i></span>
                            	<label style="font-size:11px;">Thêm giỏ hàng</label>
                            </a>
                    </div>
                    <div class="product-promotion" style="padding:8px; border-radius:6px; background:#fff; margin-top:15px;">
                        <div>
                            <strong class="label">ƯU Đ&#195;I THANH TO&#193;N</strong>
                            <ul>
                                <li>
                                    <i class="icon-checked text-green"></i>
										<a href="${classpath}/home" style="font-weight:normal">Ưu đãi đến 300.000đ khi mở Ví hoặc thanh toán qua VNPAY</a>
                                </li>
                                <li>
                                    <i class="icon-checked text-green"></i>
										<a href="${classpath}/home" style="font-weight:normal"> Trả góp qua Homepaylater giảm 10% tối đa 1.000.0000đ (&#193;p dụng giá trị khoản vay từ 6 triệu)</a>
                                </li>
                                <li>
                                    <i class="icon-checked text-green"></i>
										<a href="${classpath}/home" style="font-weight:normal">Mở thẻ tín dụng VPBank nhận ưu đãi tới 1.250.000đ</a>
                                </li>
                                <li>
                                    <i class="icon-checked text-green"></i>
										<a href="${classpath}/home" style="font-weight:normal">Thanh toán qua Moca tặng ngay đế sạc trị giá 320.000đ (Cho hóa đơn có tổng giá trị từ 6 Triệu) - Số lượng có hạn</a>
                                </li>
                                <li>
                                    <i class="icon-checked text-green"></i>
										<a href="${classpath}/home" style="font-weight:normal">Giảm thêm tới 800.000đ khi mở thẻ tín dụng TPBank EVO - Duyệt nhanh chỉ 15 phút, Liên hệ cửa hàng hoặc 1900.2091 để được hướng dẫn.</a>
                                </li>
                                <li>
                                    <i class="icon-checked text-green"></i>
										<a href="${classpath}/home" style="font-weight:normal">Giảm 1% tối đa 50.000đ cho đơn hàng giá trị từ 3.000.000đ trở lên khi thanh toán qua ZaloPay.</a>
                                </li>
                                <li>
                                    <i class="icon-checked text-green"></i>
										<a href="${classpath}/home" style="font-weight:normal">Mở thẻ tín dụng VIB - Ưu đãi 250.000đ/thẻ thành công</a>
                                </li>
                                <li>
                                    <i class="icon-checked text-green"></i>
										<a href="${classpath}/home" style="font-weight:normal">Hỗ trợ trả góp 0% qua 26 ngân hàng và công ty tài chính.</a>
                                </li>
                            </ul>
                        </div>
                        <div>
                            <strong class="label">ƯU ĐÃI ĐI KÈM</strong>
                            <ul>
                                <li>
                                    <i class="icon-checked text-green"></i>
                                    Giảm giá 50% (trên giá niêm yết) các linh kiện RAM, SSD khi mua kèm Laptop tùy chọn (Không áp dụng với ổ cứng di động).										</li>
								<li>
									<i class="icon-checked text-green"></i>
                                    Tặng SIM MobiFone Hera 5G (đơn hàng tại chi nhánh) hoặc SIM Wintel (đơn hàng online / tại chi nhánh) - Áp dụng khi mua Điện thoại, Máy tính bảng, Đồng hồ hoặc các sản phẩm khác với hóa đơn trên 2 Triệu.										</li>
								<li>
									<i class="icon-checked text-green"></i>
                                    Giảm thêm 200.000đ cho tất các sản phẩm màn hình khi mua kèm laptop, MacBook, máy tính bảng và điện thoại.										</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-promotion">
                        <div class="mg-top15">
                            <ul>
								<li>
									<a href="${classpath}/home" style="font-weight:normal">Khách hàng doanh nghiệp,dự án và phân phối - Liên&#160;hệ:&#160;0326.828.229</a>
								</li>
                            </ul>
                        </div>
                    </div>
                </div>
					<div class="product-shop">
                        <div class="warranty">
                            <h4>THÔNG TIN BẢO HÀNH</h4>
                            <p><i class="icon-shield"></i> <span><strong>Bảo hành 12 tháng </strong></span></p>
                            <p><a href="${classpath}/home"><i class="icon-shield"></i><strong><span>Bao xài đổi trả trong 30 ngày </span></strong></a></p>
                        </div>
						<div class="check-stock" id="marketFilter">
							<div class="city">
								<p>Chọn màu và xem địa chỉ còn hàng</p>
								<span href="javascript:;" class="button"><i class="icon-localtion"></i> <label>Toàn bộ chi nhánh</label></span>
								<div class="list">
									<ul>
										<li data-id="0" id="city_0"><a href="javascript:marketFilters(0);">Xem tất cả</a></li>
										<li data-id="1" id="city_1" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(1);">Hà Nội</a></li>
										<li data-id="50" id="city_50" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(50);">TP HCM</a></li>
										<li data-id="15" id="city_15" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(15);">Bắc Giang</a></li>
										<li data-id="62" id="city_62" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(62);">Bạc Liêu</a></li>
										<li data-id="18" id="city_18" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(18);">Bắc Ninh</a></li>
										<li data-id="35" id="city_35" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(35);">Bình Định</a></li>
										<li data-id="45" id="city_45" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(45);">Bình Phước</a></li>
										<li data-id="32" id="city_32" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(32);">Đà Nẵng</a></li>
										<li data-id="42" id="city_42" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(42);">Đắk Lắk</a></li>
										<li data-id="48" id="city_48" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(48);">Đồng Nai</a></li>
										<li data-id="11" id="city_11" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(11);">Hoà Bình</a></li>
										<li data-id="21" id="city_21" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(21);">Hưng Yên</a></li>
										<li data-id="51" id="city_51" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(51);">Long An</a></li>
										<li data-id="27" id="city_27" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(27);">Nghệ An</a></li>
										<li data-id="16" id="city_16" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(16);">Phú Thọ</a></li>
										<li data-id="29" id="city_29" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(29);">Quảng Bình</a></li>
										<li data-id="14" id="city_14" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(14);">Quảng Ninh</a></li>
										<li data-id="30" id="city_30" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(30);">Quảng Trị</a></li>
										<li data-id="26" id="city_26" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(26);">Thanh Hóa</a></li>
										<li data-id="31" id="city_31" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(31);">Thừa Thiên Huế</a></li>
										<li data-id="5" id="city_5" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(5);">Tuyên Quang</a></li>
										<li data-id="55" id="city_55" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(55);">Vĩnh Long</a></li>
										<li data-id="10" id="city_10" class="instock" data-sku='["NHQAYSV007"]'><a href="javascript:marketFilters(10);">Yên Bái</a></li>
									</ul>
								</div>
							</div>
							<div class="stock-sum" id="stock-sum"></div>
							<div class="store">
								        <ul>
											<li class="instock city_1" data-sku='["NHQAYSV007"]'>
												<span>
													<label>382 Nguyễn Văn Cừ, Hà Nội</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0915.963.222">0915.963.222</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="382 Nguyễn Văn Cừ, Hà Nội" href="#382-nguyen-van-cu-ha-noi">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_1" data-sku='["NHQAYSV007"]'>
												<span>
													<label>122 Thái Hà, Hà Nội </label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0973.790.122">0973.790.122</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="122 Thái Hà, Hà Nội" href="#122-thai-ha-ha-noi">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_1" data-sku='["NHQAYSV007"]'>
												<span>
													<label>126 Phố Huế, Hà Nội</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0968.668.995">0968.668.995</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="126 Phố Huế, Hà Nội" href="#95b-pho-hue-ha-noi">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_1" data-sku='["NHQAYSV007"]'>
												<span>
													<label>28 Trần Phú, Hà Đông, Hà Nội </label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0911.266.669">0911.266.669</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="28 Trần Phú, Hà Đông, Hà Nội" href="#28-tran-phu-ha-dong">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_1" data-sku='["NHQAYSV007"]'>
												<span>
													<label>392 Trương Định, Hoàng Mai, Hà Nội</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:083.263.9292">083.263.9292</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="392 Trương Định, Hoàng Mai, Hà Nội" href="#392-truong-dinh-hoang-mai">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_1" data-sku='["NHQAYSV007"]'>
												<span>
													<label>368 Nguyễn Trãi, Thanh Xuân, Hà Nội</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:093.628.1628">093.628.1628</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="368 Nguyễn Trãi, Thanh Xuân, Hà Nội" href="#368-nguyen-trai-thanh-xuan-ha-noi">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_1" data-sku='["NHQAYSV007"]'>
												<span>
													<label>Số 15 Trần Phú, Ba Đình, Hà Nội (Shop cũ 12 Điện Biên Phủ)</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:089.66.777.12">089.66.777.12</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="Số 15 Trần Phú, Ba Đình, Hà Nội (Shop cũ 12 Điện Biên Phủ)" href="#12-dien-bien-phu-ha-noi">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_1" data-sku='["NHQAYSV007"]'>
												<span>
													<label>213 Xã Đàn, P.Nam Đồng, Hà Nội </label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0936.231.213">0936.231.213</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="213 Xã Đàn, P.Nam Đồng, Hà Nội" href="#797-799-xa-dan-ha-noi">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_1" data-sku='["NHQAYSV007"]'>
												<span>
													<label>797 - 799 Giải Phóng, P.Giáp Bát, Q.Hoàng Mai, Hà Nội</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0936.396.799">0936.396.799</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="797 - 799 Giải Phóng, P.Giáp Bát, Q.Hoàng Mai, Hà Nội" href="#213-giai-phong-ha-noi">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_1" data-sku='["NHQAYSV007"]'>
												<span>
													<label>101 Kim Mã - Phường Kim Mã - Quận Ba Đình - Hà Nội</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:088.6868.101">088.6868.101</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="101 Kim Mã - Phường Kim Mã - Quận Ba Đình - Hà Nội" href="#101-kim-ma-phuong-kim-ma-quan-ba-dinh-ha-noi">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_1" data-sku='["NHQAYSV007"]'>
												<span>
													<label>336 Phạm Văn Đồng, Quận Bắc Từ Liêm, Hà Nội</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0886.868.010">0886.868.010</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="336 Phạm Văn Đồng, Quận Bắc Từ Liêm, Hà Nội" href="#1a-co-nhue-quan-bac-tu-liem-ha-noi">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_1" data-sku='["NHQAYSV007"]'>
												<span>
													<label>182 Cao Lỗ, H. Đông Anh, Hà Nội</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:090.228.93.39">090.228.93.39</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="182 Cao Lỗ, H. Đông Anh, Hà Nội" href="#182-cao-lo-h-dong-anh-ha-noi">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_1" data-sku='["NHQAYSV007"]'>
												<span>
													<label>208 Trần Lư. Thường Tín, Hà Nội</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:088.6868.223">088.6868.223</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="208 Trần Lư. Thường Tín, Hà Nội" href="#208-tran-lu-thuong-tin-ha-noi">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_1" data-sku='["NHQAYSV007"]'>
												<span>
													<label>258 Ngô Gia Tự, Long Biên, Hà Nội</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0836886258">0836886258</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="258 Ngô Gia Tự, Long Biên, Hà Nội" href="#258-ngo-gia-tu-long-bien-ha-noi">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_1" data-sku='["NHQAYSV007"]'>
												<span>
													<label>651 Nguyễn Văn Linh, Long Biên, Hà Nội</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0968.789.651">0968.789.651</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="651 Nguyễn Văn Linh, Long Biên, Hà Nội" href="#651-nguyen-van-linh-long-bien-ha-noi">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_1" data-sku='["NHQAYSV007"]'>
												<span>
													<label>89 Tam Trinh, Hoàng Mai, Hà Nội</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0815.86.79.89">0815.86.79.89</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="89 Tam Trinh, Hoàng Mai, Hà Nội" href="#89-tam-trinh-hoang-mai-ha-noi">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_1" data-sku='["NHQAYSV007"]'>
												<span>
													<label>Số 59 Quang Trung, TT Vân Đình, Ứng Hòa, Hà Nội</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0936045959">0936045959</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="Số 59 Quang Trung, TT Vân Đình, Ứng Hòa, Hà Nội" href="#so-59-quang-trung-tt-van-dinh-ung-hoa-ha-noi">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_1" data-sku='["NHQAYSV007"]'>
												<span>
													<label>Số 110 Cầu Bươu, Tân Triều, Thanh Trì, Hà Nội</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0978866110">0978866110</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="Số 110 Cầu Bươu, Tân Triều, Thanh Trì, Hà Nội" href="#so-110-cau-buou-tan-trieu-thanh-tri-ha-noi">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_1" data-sku='["NHQAYSV007"]'>
												<span>
													<label>Số 372 Hà Huy Tập, TT Yên Viên, Gia Lâm, Hà Nội</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:086.8866.372">086.8866.372</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="Số 372 Hà Huy Tập, TT Yên Viên, Gia Lâm, Hà Nội" href="#so-372-ha-huy-tap-tt-yen-vien-gia-lam-ha-noi">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_1" data-sku='["NHQAYSV007"]'>
												<span>
													<label>Số 52 Hàng Đậu - Đồng Xuân - Hoàn Kiếm - Hà Nội</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:090.215.5252">090.215.5252</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="Số 52 Hàng Đậu - Đồng Xuân - Hoàn Kiếm - Hà Nội" href="#so-52-hang-dau-dong-xuan-hoan-kiem-ha-noi-sap-khai-truong">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_50" data-sku='["NHQAYSV007"]'>
												<span>
													<label>156 Trần Não, P. An Khánh, Tp Thủ Đức, Hồ Chí Minh</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0909222156">0909222156</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="156 Trần Não, P. An Khánh, Tp Thủ Đức, Hồ Chí Minh" href="#156-tran-nao-p-an-khanh-quan-2-tp-hcm">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_50" data-sku='["NHQAYSV007"]'>
												<span>
													<label>Số 384 V&#245; Văn Ngân, P.Bình Thọ, Q.Thủ Đức, TP.HCM</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0909898384 ">0909898384 </a></strong>
                                                        - <i class="icon-localtion"></i> <a title="Số 384 V&#245; Văn Ngân, P.Bình Thọ, Q.Thủ Đức, TP.HCM" href="#so-384-vo-van-ngan-p-binh-tho-q-thu-duc-tp-hcm">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_50" data-sku='["NHQAYSV007"]'>
												<span>
													<label>Số 75 Nguyễn Thị Thập, phường Tân Phú, Quận 7, Tp HCM</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0836302255">0836302255</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="Số 75 Nguyễn Thị Thập, phường Tân Phú, Quận 7, Tp HCM" href="#so-75-nguyen-thi-thap-phuong-tan-phu-quan-7-tp-hcm">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_50" data-sku='["NHQAYSV007"]'>
												<span>
													<label>505 Lê Hồng Phong, Phường 2, Quận 10, Tp.HCM</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0702825505">0702825505</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="505 Lê Hồng Phong, Phường 2, Quận 10, Tp.HCM " href="#505-le-hong-phong-phuong-2-quan-10-tp-hcm">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_50" data-sku='["NHQAYSV007"]'>
												<span>
													<label>572-574 Tỉnh Lộ 10, Phường Bình Trị Đông, Quận Bình Tân, Tp Hồ Chí Minh</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0705.572.574">0705.572.574</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="572-574 Tỉnh Lộ 10, Phường Bình Trị Đông, Quận Bình Tân, Tp Hồ Chí Minh" href="#572-574-tinh-lo-10-binh-tan-ho-chi-minh">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_50" data-sku='["NHQAYSV007"]'>
												<span>
													<label>188Ter Trần Quang Khải, Quận 1, TP HCM</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0942.89.2255">0942.89.2255</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="188Ter Trần Quang Khải, Quận 1, TP HCM" href="#188ter-tran-quang-khai-quan-1-tp-hcm">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_50" data-sku='["NHQAYSV007"]'>
												<span>
													<label>215 Lê Văn Việt, phường Hiệp Phú, Quận 9, TP HCM</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0966.356.215">0966.356.215</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="215 Lê Văn Việt, phường Hiệp Phú, Quận 9, TP HCM" href="#215-le-van-viet-phuong-hiep-phu-quan-9">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_15" data-sku='["NHQAYSV007"]'>
												<span>
													<label>Số 2 Nguyễn Văn Cừ, TP Bắc Giang</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:093.668.2091">093.668.2091</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="Số 2 Nguyễn Văn Cừ, TP Bắc Giang" href="#so-2-nguyen-van-cu-tp-bac-giang">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_62" data-sku='["NHQAYSV007"]'>
												<span>
													<label>12-13 Lô B, Đường Bà Triệu, P.3, TP. Bạc Liêu</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:079.492.88.99">079.492.88.99</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="12-13 Lô B, Đường Bà Triệu, P.3, TP. Bạc Liêu" href="#12-13-lo-b-duong-ba-trieu-p-3-tp-bac-lieu">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_18" data-sku='["NHQAYSV007"]'>
												<span>
													<label>40 Trần Phú - Đông Ngàn - Từ Sơn - Bắc Ninh</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0886869338">0886869338</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="40 Trần Phú - Đông Ngàn - Từ Sơn - Bắc Ninh" href="#40-tran-phu-dong-ngan-tu-son-bac-ninh">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_18" data-sku='["NHQAYSV007"]'>
												<span>
													<label>207 Nguyễn Văn Cừ, P. V&#245; Cường, TP. Bắc Ninh</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0936.83.12.12">0936.83.12.12</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="207 Nguyễn Văn Cừ, P. V&#245; Cường, TP. Bắc Ninh" href="#207-duong-nguyen-van-cu-p-vo-cuong-tp-bac-ninh">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_35" data-sku='["NHQAYSV007"]'>
												<span>
													<label>190-192 Tăng Bạt Hổ - P. Lê Hồng Phong - TP. Quy Nhơn</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0896.23.83.83">0896.23.83.83</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="190-192 Tăng Bạt Hổ - P. Lê Hồng Phong - TP. Quy Nhơn" href="#190-192-tang-bat-ho-p-le-hong-phong-tp-quy-nhon">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_35" data-sku='["NHQAYSV007"]'>
												<span>
													<label>Số 232 Nguyễn Thái Học, P.Ngô Mây, TP.Quy Nhơn, Bình Định</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0898.19.83.83">0898.19.83.83</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="Số 232 Nguyễn Thái Học, P.Ngô Mây, TP.Quy Nhơn, Bình Định" href="#so-232-nguyen-thai-hoc-p-ngo-may-tp-quy-nhon-binh-dinh">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_45" data-sku='["NHQAYSV007"]'>
												<span>
													<label>1057 Phú Riềng Đỏ, P.Tân Bình, TP Đồng Xoài, Bình Phước</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:079.757.22.55">079.757.22.55</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="1057 Phú Riềng Đỏ, TP Đồng Xoài, Bình Phước" href="#1057-phu-rieng-do-p-tan-binh-tp-dong-xoai-binh-phuoc">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_32" data-sku='["NHQAYSV007"]'>
												<span>
													<label>153-155 Nguyễn Văn Linh, TP Đà Nẵng</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0788.655.155">0788.655.155</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="153-155 Nguyễn Văn Linh, Đà Nẵng" href="#153-155-nguyen-van-linh-tp-da-nang">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_42" data-sku='["NHQAYSV007"]'>
												<span>
													<label>16 Trường Chinh, TP Buôn Ma Thuột, Đắk Lắk </label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:089 639 8383">089 639 8383</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="16 Trường Chinh, TP Buôn Ma Thuột, Đăk Lăk" href="#16-truong-chinh-tp-buon-ma-thuot">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_48" data-sku='["NHQAYSV007"]'>
												<span>
													<label>Số 188 đường B&#249;i Văn Hoà, Khu phố 3A, Long Bình Tân, Tp. Biên Hoà</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0933812255">0933812255</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="Số 188 đường B&#249;i Văn Hoà, Khu phố 3A, Long Bình Tân, Tp. Biên Hoà" href="#so-188-duong-bui-van-hoa-khu-pho-3a-long-binh-tan-tp-bien-hoa">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_48" data-sku='["NHQAYSV007"]'>
												<span>
													<label> 92 Nguyễn &#193;i Quốc, KP 8A, Phường Tân Biên, Tp. Biên Hòa, Đồng Nai (Gần công viên 30/4)</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0933362255">0933362255</a></strong>
                                                        - <i class="icon-localtion"></i> <a title=" 92 Nguyễn &#193;i Quốc, KP 8A, Phường Tân Biên, Tp. Biên Hòa, Đồng Nai (Gần công viên 30/4)" href="#so-92-duong-nguyen-ai-quoc-pho-8a-p-tan-bien-tp-bien-hoa-tinh-dong-nai">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_11" data-sku='["NHQAYSV007"]'>
												<span>
													<label>479 - 481 C&#249; Chính Lan - Tp.Hòa Bình - Tỉnh Hòa Bình</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel: 0976651585"> 0976651585</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="479 - 481 C&#249; Chính Lan - Tp.Hòa Bình - Tỉnh Hòa Bình" href="#479-481-cu-chinh-lan-tp-hoa-binh-tinh-hoa-binh">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_21" data-sku='["NHQAYSV007"]'>
												<span>
													<label>Số 2, Phố Nối, Phường Bần Yên Nhân, Thị Xã Mỹ Hào, Tỉnh Hưng Yên (Trung tâm ngã tư Phố Nối) </label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0766.38.6633">0766.38.6633</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="Số 2, Phố Nối, Phường Bần Yên Nhân, Thị Xã Mỹ Hào, Tỉnh Hưng Yên (Trung tâm ngã tư Phố Nối) " href="#so-2-pho-noi-phuong-ban-yen-nhan-thi-xa-my-hao-tinh-hung-yen">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_51" data-sku='["NHQAYSV007"]'>
												<span>
													<label>189 H&#249;ng Vương, P3, TP. Tân An, Long An</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:090.897.22.55">090.897.22.55</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="189 H&#249;ng Vương, P3, TP. Tân An, Long An" href="#189-hung-vuong-p3-tp-tan-an">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_27" data-sku='["NHQAYSV007"]'>
												<span>
													<label>10 Nguyễn Thị Minh Khai, Hưng Bình, TP. Vinh, Nghệ An</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0778.523.523">0778.523.523</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="10 Nguyễn Thị Minh Khai, Hưng Bình, TP. Vinh, Nghệ An" href="#10-nguyen-thi-minh-khai-hung-binh-tp-vinh-nghe-an">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_16" data-sku='["NHQAYSV007"]'>
												<span>
													<label>1502 Đại lộ H&#249;ng Vương, K6, phường Gia Cẩm, TP. Việt Trì, Phú Thọ</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:090481.98.68">090481.98.68</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="	1502 Đại lộ H&#249;ng Vương, K6, phường Gia Cẩm, TP. Việt Trì, Phú Thọ" href="#1502-dl-hung-vuong-k6-phuong-gia-cam-tp-viet-tri-phu-tho">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_29" data-sku='["NHQAYSV007"]'>
												<span>
													<label>23 L&#253; Thường Kiệt, TP. Đồng Hới, Quảng Bình</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:089.961.7373">089.961.7373</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="23 L&#253; Thường Kiệt, TP. Đồng Hới, Quảng Bình" href="#23-ly-thuong-kiet-tp-dong-hoi-quang-binh">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_14" data-sku='["NHQAYSV007"]'>
												<span>
													<label>Số 68 Kênh Liêm, TP.Hạ Long, Quảng Ninh</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0705587868">0705587868</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="Số 68 Kênh Liêm, TP.Hạ Long, Quảng Ninh" href="#so-68-kenh-liem-tp-ha-long">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_14" data-sku='["NHQAYSV007"]'>
												<span>
													<label>Tòa nhà MobiFone, đường 25/4, Hồng Gai, TP. Hạ Long, Quảng Ninh</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0789.268.616">0789.268.616</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="Tòa nhà MobiFone, đường 25/4, Hồng Gai, TP. Hạ Long, Quảng Ninh" href="#">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_30" data-sku='["NHQAYSV007"]'>
												<span>
													<label>139 Quốc Lộ 9, Phường 5, TP Đông Hà, Quảng Trị (Shop cũ: 94 Quốc Lộ 9, P1)</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0777.450.550">0777.450.550</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="139 Quốc Lộ 9, Phường 5, TP Đông Hà, Quảng Trị (Shop cũ: 94 Quốc Lộ 9, P1) " href="#">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_26" data-sku='["NHQAYSV007"]'>
												<span>
													<label>306 Nguyễn Trãi, Phường Tân Sơn, TP Thanh Hóa</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:07054.024.02">07054.024.02</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="306 Nguyễn Trãi, Phường Tân Sơn, TP Thanh Hóa" href="#">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_31" data-sku='["NHQAYSV007"]'>
												<span>
													<label>48 Đống Đa - TP Huế</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0905.66.88.48">0905.66.88.48</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="48 Đống Đa - TP Huế" href="#">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_5" data-sku='["NHQAYSV007"]'>
												<span>
													<label>447-449 Quang Trung, P.Phan Thiết, Tp.Tuyên Quang</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0936619161">0936619161</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="447-449 Quang Trung, P.Phan Thiết, Tp.Tuyên Quang" href="#">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_55" data-sku='["NHQAYSV007"]'>
												<span>
													<label>150 Nguyễn Huệ, P.2, TP, Vĩnh Long</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0766.90.88.99">0766.90.88.99</a></strong>
                                                        - <i class="icon-localtion"></i> <a title="150 Nguyễn Huệ, P.2, TP, Vĩnh Long" href="#">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
											<li class="instock city_10" data-sku='["NHQAYSV007"]'>
												<span>
													<label>24 Nguyễn Thái Học, Thành Phố Yên Bái</label>
                                                    <label class="data">
                                                        <strong><i class="icon-hotline"></i> <a href="tel:0899159688 ">0899159688 </a></strong>
                                                        - <i class="icon-localtion"></i> <a title="24 Nguyễn Thái Học, Thành Phố Yên Bái" href="#">Chỉ đường</a>
                                                    </label>
												</span>
											</li>
								</ul>
    								<p class="out-stock hide"><strong>Laptop Gaming Acer Aspire 7 A715-42G-R05G - Chính hãng <span class="colorName"></span></strong> chưa có sẵn tại khu vực này. Quý khách vui lòng chọn khu vực khác hoặc gọi đến số Hotline để biết thêm chi tiết.</p>
    								<p class="out-noonline hide"><strong>Laptop Gaming Acer Aspire 7 A715-42G-R05G - Chính hãng <span class="colorName"></span></strong> tạm thời dừng nhận đơn online. Quý khách vui lòng liên hệ , đến các cửa hàng đang có sẵn hàng để mua trực tiếp.</p>
    							</div>
    						</div>
    						<div class="out-date">
    							<p class="title"><strong><a href="${classpath}/detail">MTXT Acer Aspire 7 A715 42G-R05G, R5-5500U/8GB/512GB/GTX1650/15.6FHD144Hz/Win11/Đen (NH.QA - TBH 89 Tam Trinh, Hoàng Mai, Hà Nội  - TBH</a></strong></p>
    							<div class="note">
    								<p><i>Giá chỉ từ:</i> <strong class="text-red">13,090,000 ₫</strong></p>
    								<p><i>Tiết kiệm:</i> <strong class="text-red">1,300,000 ₫</strong></p>
    								Bảo hành chính hãng 06/01/2024. Bao xài đổi lỗi trong 30 ngày
    							</div>
    						</div>
    					</div>
    				</div>
    			</div>
    		</div>
    </section>


	<!-- giới thiệu -->
    <section>
    	<div class="container">
    		<div class="product-layout product-layout-grid">
    			<div class="product-left">
    					<div class="product-text" id="productContent">
    						<h1 text-align="center" style="margin-top: 0in; line-height: 54px; color: rgb(100, 100, 100); text-align: center;">
                                <span lang="vi" style="font-size: 22pt; line-height: 44px;">|Đang phát triển|<o:p></o:p></span>
                            </h1>
                            <p class="MsoNormal" style="margin-bottom: 6pt; line-height: 21px; text-align: justify;">
                                <span lang="vi" style="font-size: 12pt; line-height: 24px;">|Đang phát triển| những dòng laptop phục vụ cho công việc, giờ đây Acer còn cho ra đời những dòng thiết bị gaming hầm hố, cấu hình mạnh mẽ trong tầm giá như 
                                    <a href="${classpath}/shop" target="_blank">
                                        <span style="font-weight: 700;"><font color="#397b21">Acer Aprire</font></span>
                                    </a>
                                    |Đang phát triển| 7 A715-42G-R05G có những lợi thế nào đang để người dùng mong đợi? Cùng Green Mobile tìm hiểu ngay sau đây.<o:p></o:p>
                                </span>
                            </p>

                            <h2 style="line-height: 45px; color: rgb(100, 100, 100); margin-top: 0in; text-align: justify; break-after: auto;">
                                <a name="_y4h02n78090"></a><span lang="vi" style="font-size: 18pt; line-height: 36px;">Thiết kế đậm chất Gaming nhưng không kém phần thanh lịch<o:p></o:p></span>
                            </h2>
                            <p class="MsoNormal" style="margin-bottom: 6pt; line-height: 21px; text-align: justify;">
                                <span lang="vi" style="font-size: 12pt; line-height: 24px;">Laptop Gaming Acer Aspire 7 A715 là dòng thiết bị dành cho phân khúc khách hàng chuyên chơi game. Tuy nhiên, khi nhìn từ bên ngoài, thiết kế của thiết bị này không quá hầm hố, mà ngược lại rất đơn giản và thanh lịch. Chỉ với trọng lượng khoảng 2.1kg và dày khoảng 22.9 mm, người dùng có thể dễ dàng mang thiết bị này đến bất kỳ đâu mà họ muốn.</span>
                            </p>
                            <p class="MsoNormal" style="margin-bottom: 6pt; line-height: 21px; text-align: justify;">
                                <img src="${classpath}/user/images/slide-detail/Uploads/2022/10/06/11_638006608272265433.jpg"><br>
                            </p>
                            <p class="MsoNormal" style="margin-bottom: 6pt; line-height: 21px; text-align: justify;">
                                <span lang="vi" style="font-size: 12pt; line-height: 24px;"></span><span lang="vi" style="font-size: 12pt; line-height: 24px;"><o:p></o:p></span>
                            </p>
                            <p class="MsoNormal" style="margin-bottom: 6pt; line-height: 21px; text-align: justify;">
                                <span lang="vi" style="font-size: 12pt; line-height: 24px;">Được khoác lên vẻ ngoài với màu đen nhám sang trọng, 
                                    <a href="${classpath}/shop" target="_blank">
                                        <font color="#397b21"><span style="font-weight: 700;">|Đang phát triển|</span></font>
                                    </a> này đã được hãng hoàn thiện rất tốt. Mặc dù chỉ với bộ khung bằng nhựa nhưng rất chắc chắn và không bị “ọp ẹp” khi cầm. Không những thế, chất liệu này còn làm giảm được trọng lượng chung của sản phẩm giúp hãng trang bị được nhiều tính năng hơn.<o:p></o:p>
                                </span>
                            </p>
                            <p class="MsoNormal" style="margin-bottom: 6pt; line-height: 21px; text-align: justify;">
                                <span lang="vi" style="font-size: 12pt; line-height: 24px;">Bên cạnh đó, những nét cắt tinh tế, dứt khoát, thiết bị đã toát lên vẻ sang chảnh, thanh lịch khi bạn mang đi làm việc nhiều nơi. Cũng như thiết bị đã chiếm được nhiều cảm tình của người dùng bởi độ bền bĩ chống rung, chống sốc của chúng.<o:p></o:p></span>
                            </p>

                            <h2 style="line-height: 45px; color: rgb(100, 100, 100); margin-top: 0in; text-align: justify; break-after: auto;">
                                <a name="_ownullfm73zx"></a><span lang="vi" style="font-size: 18pt; line-height: 36px;">Màn hình chân thực, sắc nét<o:p></o:p></span>
                            </h2>
                            <p class="MsoNormal" style="margin-bottom: 6pt; line-height: 21px; text-align: justify;">
                                <span lang="vi" style="font-size: 12pt; line-height: 24px;">Laptop Gaming Acer Aspire 7 A715-42G-R05G được trang bị phần màn hình với 
                                    <span style="font-weight: 700;">kích thước 15.6 inch Full HD</span>
                                    . Với kích thước rộng lớn, thiết bị sẽ có nhiều khoảng khoảng không gian rộng, rất phù hợp khi làm việc đa tác vụ. Và khi kết hợp với 
                                    <span style="font-weight: 700;">tấm nền IPS</span>
                                    , chiếc máy hứa hẹn sẽ đem đến cho người dùng những hình ảnh sắc nét, sống động và trải nghiệm chân thực nhất cho bạn.
                                </span>
                            </p>
                            <p class="MsoNormal" style="margin-bottom: 6pt; line-height: 21px; text-align: justify;">
                                <img src="${classpath}/user/images/slide-detail/Uploads/2022/10/06/22_638006608272109162.jpg"><br></p>
                                <p class="MsoNormal" style="margin-bottom: 6pt; line-height: 21px; text-align: justify;">
                                    <span lang="vi" style="font-size: 12pt; line-height: 24px;"></span><span lang="vi" style="font-size: 12pt; line-height: 24px;"><o:p></o:p></span>
                                </p>
                                <p class="MsoNormal" style="margin-bottom: 6pt; line-height: 21px; text-align: justify;">
                                    <span lang="vi" style="font-size: 12pt; line-height: 24px;">Không những thế, tần số quét của màn hình lên đến 
                                        <span style="font-weight: 700;">144Hz</span>. Điều này sẽ đem đến cho những “game thủ” có những trải nghiệm tuyệt vời nhất với những tựa game esport rất thịnh hành trên thị trường.<o:p></o:p>
                                    </span>
                                </p>
                                <p class="MsoNormal" style="margin-bottom: 6pt; line-height: 21px; text-align: justify;">
                                    <span lang="vi" style="font-size: 12pt; line-height: 24px;">Và với công nghệ chống chói 
                                        <span style="font-weight: 700;">Anti Glare</span> và công nghệ 
                                        <span style="font-weight: 700;">Acer ComfyView</span>
                                         sẽ giúp cho người dùng có thể sử dụng chiếc máy ngoài trời một cách dễ dàng. Tránh được những trường hợp bị chói khi làm việc ngoài trời nắng hay những nơi có nguồn sáng khắc nghiệt.<o:p></o:p>
                                    </span>
                                </p>
                                <p class="MsoNormal" style="margin-bottom: 6pt; line-height: 21px; text-align: justify;">
                                    <span lang="vi" style="font-size: 12pt; line-height: 24px;">
                                        Ngoài ra, công nghệ Acer ComfyView còn giúp cho thiết bị giảm ánh sáng xanh phát ra từ máy. Khi đó, người dùng có thể làm việc, chơi game lâu dài mà không phải lo bị mỏi mắt.<o:p></o:p>
                                    </span>
                                </p>

                                <h2 style="line-height: 45px; color: rgb(100, 100, 100); margin-top: 0in; text-align: justify; break-after: auto;">
                                    <a name="_bcl4x5duuimp"></a><span lang="vi" style="font-size: 18pt; line-height: 36px;">Hiệu năng chiến game đỉnh cao<o:p></o:p></span>
                                </h2>
                                <p class="MsoNormal" style="margin-bottom: 6pt; line-height: 21px; text-align: justify;">
                                    <span lang="vi" style="font-size: 12pt; line-height: 24px;">
                                        Nói đến cấu hình của Laptop Gaming Acer Aspire 7 A715-42G-R05G, thiết bị này có thể xử lý mọi tác vụ được yêu cầu một cách nhanh chóng. Không chỉ thời gian khởi động ngắn, ổ cứng 
                                        <span style="font-weight: 700;">SSD 512GB</span> chuẩn <span style="font-weight: 700;">NVMe PCIe</span> và thanh 
                                        <span style="font-weight: 700;">RAM 8G DDR4</span> sẽ giúp cho thiết bị xử lý đa nhiệm một cách mượt mà nhất.
                                    </span>
                                </p>
                                <p class="MsoNormal" style="margin-bottom: 6pt; line-height: 21px; text-align: justify;">
                                    <img src="${classpath}/user/images/slide-detail/Uploads/2022/10/06/33_638006608272109162.jpg"><br>
                                </p>
                                <p class="MsoNormal" style="margin-bottom: 6pt; line-height: 21px; text-align: justify;">
                                    <span lang="vi" style="font-size: 12pt; line-height: 24px;"></span>
                                    <span lang="vi" style="font-size: 12pt; line-height: 24px;"><o:p></o:p></span>
                                </p>
                                <p class="MsoNormal" style="margin-bottom: 6pt; line-height: 21px; text-align: justify;">
                                    <span lang="vi" style="font-size: 12pt; line-height: 24px;">Bộ vi xử lý được trang bị trên máy là 
                                        <span style="font-weight: 700;">AMD Ryzen 5</span> có <span style="font-weight: 700;">6 nhân 12 luồng</span>
                                         cực mạnh giúp cho thiết bị có hiệu năng vượt trội trong tầm giá. Với tốc độ làm việc thông thường đạt 
                                        <span style="font-weight: 700;">2.1 GHz</span> và tối đa lên đến 
                                        <span style="font-weight: 700;">4.0 GHz </span>khi sử dụng Turbo Boost, chiếc máy sẽ có hiệu năng đơn và đa luồng mạnh mạnh.<o:p></o:p>
                                    </span>
                                </p>
                                <p class="MsoNormal" style="margin-bottom: 6pt; line-height: 21px; text-align: justify;">
                                    <span lang="vi" style="font-size: 12pt; line-height: 24px;">Bên cạnh đó, card đồ họa rời cũng là một ưu điểm vượt trội của thiết bị. Với 
                                        <span style="font-weight: 700;">GTX 1650 4GB</span> được sản xuất theo cấu trúc Turing từ NVIDIA, người dùng có thể dễ dàng chơi nhiều tựa game esport với tốc độ khung hình cao, hiệu ứng đồ hoạt chân thực nhất<o:p></o:p>
                                    </span>
                                </p>
                                <p class="MsoNormal" style="margin-bottom: 6pt; line-height: 21px; text-align: justify;">
                                    <span lang="vi" style="font-size: 12pt; line-height: 24px;">Quan trọng hơn, chiếc Laptop Gaming Acer Aspire 7 A715 còn hỗ trợ thêm một 
                                        <span style="font-weight: 700;">khe RAM rờ</span>i và có thể tăng dung lượng ổ cứng lên đến 1TB. Do đó, bạn dễ dàng nâng cấp thiết bị trong tương lai nếu cần thiết.<o:p></o:p>
                                    </span>
                                </p>

                                <h2 style="line-height: 45px; color: rgb(100, 100, 100); margin-top: 0in; text-align: justify; break-after: auto;">
                                    <a name="_6vg43coa3vci"></a><span lang="vi" style="font-size: 18pt; line-height: 36px;">Thời lượng sử dụng Pin vừa đủ<o:p></o:p></span>
                                </h2>
                                <p class="MsoNormal" style="margin-bottom: 6pt; line-height: 21px; text-align: justify;">
                                    <span lang="vi" style="font-size: 12pt; line-height: 24px;">Không chỉ mang trên mình cấu hình vượt trội, Laptop Gaming Acer Aspire 7 A715 còn được trang bị viên Pin có mức dung lượng lên đến 48 Wh. Khi đặt độ sáng của màn hình ở mức khoảng 50%, người dùng có thể thoải mái sử dụng 5 – 6h để lướt web hoặc xem video. Tuy nhiên, nếu bạn mang thiết bị này ra ngoài chơi game thì nên chuẩn bị sẵn bộ sạc nhé.</span>
                                </p>
                                <p class="MsoNormal" style="margin-bottom: 6pt; line-height: 21px; text-align: justify;">
                                    <img src="${classpath}/user/images/slide-detail/Uploads/2022/10/06/44_638006608272109162.jpg"><br>
                                </p>
                                <p class="MsoNormal" style="margin-bottom: 6pt; line-height: 21px; text-align: justify;">
                                    <span lang="vi" style="font-size: 12pt; line-height: 24px;"></span>
                                    <span lang="vi" style="font-size: 12pt; line-height: 24px;"><o:p></o:p></span>
                                </p>
                                <p></p>
                                <p class="MsoNormal" style="margin-bottom: 6pt; line-height: 21px; text-align: justify;">
                                    <span lang="vi" style="font-size: 12pt; line-height: 24px;">Hiện tại, Green Mobile đã trở thành nhà phân phối laptop với những sản phẩm chất lượng cao và mức giá hấp dẫn. Để mua Laptop Gaming Acer Aspire 7 A715 - Chính hãng, hãy tới các chi nhánh Green Mobile gần nhất hoặc click đặt hàng để được giao hàng tận tay hoàn toàn miễn phí.</span>
                                </p>
    					</div>
    					<div class="view-more-container">
    						<a href="javascript:;" id="viewMoreContent">Xem thêm</a>
    					</div>
    			</div>
    			<div class="product-right">
    				<div class="product-specs">
    					<h3>Thông số kỹ thuật ${product.name }</h3>
    					<div class="product-spect-img">
    						<img src="${classpath}/StorageFolder/${product.avatar}" />
    							<p data-padding="0px" data-width="600px" class="ajax-modal product-specs-button" href="${classpath}/detail"><span class="icon-config"></span> <strong>Cấu hình chi tiết</strong></p>
    					</div>

    					<div class="specs-special">
    						<ol>
    							<li>
    								<strong>|Đang phát triển| Số hiệu CPU:</strong>
    								<span>5500U</span>
    							</li>
    						</ol>
    						<ol>
    							<li>
    								<strong>|Đang phát triển| Xung nhịp cơ bản:</strong>
    								<span>2.10 GHz</span>
    							</li>
    						</ol>
    						<ol>
    							<li>
    								<strong>VRAM card đồ hoạ rời:</strong>
    								<span>4GB</span>
    							</li>
    						</ol>
    						<ol>
    							<li>
    								<strong>RAM:</strong>
    								<span>8GB</span>
    							</li>
    						</ol>
    						<ol>
    							<li>
    								<strong>Độ phân giải:</strong>
    								<span>1920x1080</span>
    							</li>
    						</ol>
    						<ol>
    							<li>
    								<strong>Kết nối không dây:</strong>
    								<span>Wi-Fi 6 (802.11ax), Bluetooth 5.1</span>
    							</li>
    						</ol>
    						<ol>
    							<li>
    								<strong>Hệ điều hành:</strong>
    								<span>Windows 11 Home SL</span>
    							</li>
    						</ol>
    						<ol>
    							<li>
    								<strong>Kích thước:</strong>
    								<span>Dài 363.4 mm - Rộng 254.5 mm - Dày 22.9 mm</span>
    							</li>
    						</ol>
    						<ol>
    							<li>
    								<strong>Trọng lượng:</strong>
    								<span>2.1 kg</span>
    							</li>
    						</ol>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </section>


    <section>
    	<div class="container">
    		<div class="full-width-content">
    			<div class="product-quick-compare">
    				<div class="header">
    					<h3>So sánh sản phẩm tương tự</h3>
    					<div class="search-box">
    						<div class="border">
    							<input id="kwdCompare" type="text" placeholder="Nhập tên sản phẩm cần so sánh"/>
    							<button type="button" class="search"><i class="icon-search"></i></button>
    						</div>
    					</div>
    				</div>
    				<div class="lts-product lts-product-bgwhite equaHeight" data-obj="a.title">
    					<c:forEach items="${sameProds }" var="item">
	                        <div class="item">
	                            <div class="img">
	                                <a href="${classpath}/detail/${item.id}" title="${item.name }">
	                                    <img src="${classpath}/StorageFolder/${item.avatar }" alt="${item.name }" title="${item.name }">
	                                </a>
	                            </div>
	                            <c:if test="${not empty item.sticker }">
		                            <div class="sticker sticker-left">
		                                <span><img src="${classpath}/StorageFolder/${item.sticker }" title="${item.name }" /></span>
		                            </div>
		                        </c:if>
	                            <div class="info">
	                                <a href="${classpath}/detail/${item.id}" class="title" title="${item.name }">${item.name }</a>
	                                <span class="price">
	                                    <strong><fmt:formatNumber value="${item.salePrice }" pattern="##,###" minFractionDigits="0" /> đ</strong>
	                                    <strike><fmt:formatNumber value="${item.price }" pattern="##,###" minFractionDigits="0" /> đ</strike>
	                                </span>
	                            </div>
	                            <div class="info-compare">
	                                <a href="${classpath}/detail/${item.id}" title="${item.name }">
	                                	<i class="icon-controls"></i> 
	                                	<span>So sánh</span>
	                                </a>
	                            </div>
	                             <div class="promote">
	                                <a href="${classpath}/detail/${item.id}">
	                                    <ul>
	                                            <li><span class="bag">KM</span> Ưu đãi đến 300.000đ khi mở Ví hoặc thanh toán qua VNPAY</li>
	                                            <li><span class="bag">KM</span> Thanh toán qua Moca tặng ngay đế sạc trị giá 320.000đ (Cho hóa đơn có tổng giá trị từ 6 Triệu) - Số lượng có hạn</li>
	                                            <li><span class="bag">KM</span> Giảm thêm tới 800.000đ khi mở thẻ tín dụng TPBank EVO - Duyệt nhanh chỉ 15 phút, Liên hệ cửa hàng hoặc 1900.2091 để được hướng dẫn.</li>
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

	<!-- comment -->
    <section class="product-review product-comment" id="comments">
    	<div class="container">
    		<div class="full-width-content">
    			<form onsubmit="return replyComment(this)" data-container=".comment-content" data-child="true">
    				<input name="__RequestVerificationToken" type="hidden" value="b851coKHrH-SKxnJODu7ZnJh4KS2vTtK_2wUArCSXGW7IpMBNrdM9kwUKNgTPuZusNDK7sihSeUYsVTmD417HwFIslE1" />
    				<input type="hidden" name="ModelID" value="2653" />
    				<input type="hidden" name="SystemTypeID" value="3" />
    				<div class="heading">
    					<h3>Bình luận về ${product.name }</h3>
    				</div>
    				<div class="rc-form review-form">
    					<div class="rc-form comment-form">
    							<div class="row">
    								<div class="col">
    									<div class="control">
    										<input type="text" name="Title" placeholder="Họ tên *" data-required="1" />
    									</div>
    								</div>
    								<div class="col">
    									<div class="control">
    										<input type="tel" name="Phone" placeholder="Điện thoại" />
    									</div>
    								</div>
                                
    								<div class="col">
    									<div class="control">
    										<input type="email" name="Email" placeholder="Email" />
    									</div>
    								</div>
    							</div>
    						<div class="row">
    							<div class="col">
    								<div class="control">
    									<textarea title="Nội dung" placeholder="Nội dung. Tối thiểu 15 ký tự *" name="Content" spellcheck="false" data-required="1" data-minlength="15"></textarea>
    								</div>
    							</div>
    						</div>
                            <div class="row">
    							<div class="col">
    								<p class="note">Để gửi bình luận, bạn cần nhập tối thiểu trường họ tên và nội dung</p>
    							</div>
    							<div class="col col-end">
    								<button type="submit"><i class="icon-sending"></i> Gửi bình luận</button>
    							</div>
    						</div>
    					</div>
    				</div>
    			</form>
                <div class="review-content comment-content" id="commentContent"></div>
    		</div>
    	</div>
    </section>
	

    <section class="product-review" id="reviews">
    	<div class="container">
    		<div class="full-width-content">
    			<form id="reviewForm">
    				<input name="__RequestVerificationToken" type="hidden" value="4Nxh9HON76R68z9RrETzhw7jPBjhOr9mP-_SLSfjlI8oI-BHrmXB7om5sxJgRWQztBQsKY07gpNQU_0si-WCBagblMI1" />
    				<input type="hidden" name="ModelID" value="2653" />
    				<input type="hidden" name="SystemTypeID" value="3" />
    				<input type="hidden" name="Rate" />
    				<div class="heading">
    					<h3>Đánh giá về ${product.name }</h3>
    					<div class="stats">
    						<div class="display-rating rating-medium" data-rate-value=""></div>
    						<span>(TB  / 0 lượt đánh giá)</span>
    					</div>
    				</div>
    				<div class="rc-form review-form">
    					<div class="col">
    						<div class="control">
    							<textarea title="Nội dung" placeholder="Nội dung. Tối thiểu 15 ký tự" name="Content" spellcheck="false" data-required="1" data-minlength="15"></textarea>
    						</div>
    					</div>
    					<div class="col">
    						<div class="row">
    							<div class="control">
    								<input type="text" name="Title" placeholder="Họ tên" data-required="1" />
    							</div>
    						</div>
    						<div class="row">
    							<div class="control">
    								<input type="tel" name="Phone" placeholder="Số điện thoại mua hàng" data-required="1" />
    							</div>
    						</div>
    					</div>
    					<div class="col">
    						<div class="row">
    							<div class="control">
    								<input type="email" name="Email" placeholder="Email" data-required="1" />
    							</div>
    						</div>
    						<div class="row row-rate">
    							<strong>Đánh giá của bạn: </strong>
    							<div class="display-rating rating"></div>
    						</div>
    					</div>
    				</div>
    			</form>
    			<div class="review-content" id="reviewContent"></div>
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
                        <strong>CHÍNH H&#195;NG</strong>
                    </div>
                </div>
                <div class="item">
                    <span class="icon">
                        <i class="icon-freeship"></i>
                    </span>
                    <div class="text">
                        <span>Miễn phí vận chuyển</span>
                        <strong>TO&#192;N QUỐC</strong>
                    </div>
                </div>
                <div class="item">
                    <span class="icon">
                        <i class="icon-hotline"></i>
                    </span>
                    <div class="text">
                        <span>Hotline hỗ trợ</span>
                        <strong>1900.2091</strong>
                    </div>
                </div>
                <div class="item">
                    <span class="icon">
                        <i class="icon-doitra"></i>
                    </span>
                    <div class="text">
                        <span>Thủ tục đổi trả</span>
                        <strong>DỄ D&#192;NG</strong>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <iframe src="https://asia.creativecdn.com/tags?id=pr_n4X0y6ApZyJaHX1dNxQd_offer_2653" width="1" height="1" scrolling="no" frameBorder="0" style="display: none;"></iframe>

						
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


	<script src="${classpath}/user/js-css/web_v1.1.8.5.js"></script> 


    <!-- xem thêm / thu gọn / slide -->
	<script type="text/javascript">
		$(document).ready(function () {
			imagePreview_init();
			setProductContentHeighWithSpecs();
			
		});
	</script>

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
						if(jsonResult.status == "Hết hàng"){
							alert(jsonResult.code + ": " + jsonResult.status);
						}
						else{
							let totalProducts = jsonResult.totalCartProducts;
							$("#totalCartProductsId").html(totalProducts);
						}
						
					},
					
					error : function(jqXhr, textStatus, errorMessage) {
						//alert(jsonResult.code + ': Luu thanh cong...!')
					}
				});
		}
	</script>
	
</body>

</html>





