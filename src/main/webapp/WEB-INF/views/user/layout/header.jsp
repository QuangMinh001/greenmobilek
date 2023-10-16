<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<header>
        <div class="top-navigation">
            <div class="container">
                <ul>
                    <li><a href="#">Bản mobile</a></li>
                    <li><a href="${classpath}/home">Giới thiệu</a></li>
                    <li><a href="${classpath}/greenmobile/ ">Sản phẩm đã xem</a></li>
                    <li><a href="${classpath}/home">Trung tâm bảo hành</a></li>
                    <li><a href="${classpath}/home">Hệ thống siêu thị</a></li>
                    <li><a href="#">Tuyển dụng</a></li>
                    <li><a href="${classpath}/cart">Tra cứu đơn hàng</a></li>
                    <li><a id="login-modal" href="#">Đăng nhập</a></li>
                </ul>
            </div>
        </div>
        
    
    <!-- logo and search box -->
        <div class="heading">
            <div class="container">
                <div class="logo">
                    <a href="${classpath}/home" title="CÔNG TY CỔ PHẦN XÂY DỰNG VÀ ĐẦU TƯ THƯƠNG MẠI GREEN COMPANY">
                        <img style="max-width: 256px;" src="${classpath}/user/Content/web/img/logo-text.png" alt="CÔNNG TY CỔ PHẦN XÂY DỰNG VÀ ĐẦU TƯ THƯƠNG MẠI GREEN COMPANY">
                    </a>
                </div>
                <div class="search-box">
                    <form method="get" action="${classpath }/greenmobile" enctype="application/x-www-form-urlencoded">
                        <div class="border">
                            <input type="text" id="keyword" name="keyword" placeholder="Bạn cần tìm gì" />
                            <button type="submit" class="search"><i class="icon-search"></i></button>
                        </div>
                    </form>
                </div>
                <div class="order-tools">
                    <div class="item check-order">
                        <a id="btnCheckOrder" href="${classpath}/cart">
                            <span class="icon"><i class="icon-truck"></i></span>
                            <span class="text">Kiểm tra đơn hàng</span>
                        </a>
                    </div>
                    <div class="item cart">
                        <a href="${classpath}/cart">
                        	<i class="icon-cart"></i>
                        	<label><i class="icon-left"></i><span id="totalCartProductsId">${totalCartProducts }</span></label>
                        </a>
                    </div>
                </div>
            </div>
        </div>

    <!-- nav -->
        <nav>
            <div class="container">
                <ul class="root">
                    <li id="dien-thoai-di-dong">
                        <a href="${classpath}/greenmobile/Điện thoại" target="_self">
                            <i class="icon icon-phone"></i>
                            <span>Điện thoại</span>
                        </a>
                        <div class="sub-container">
                            <div class="sub">
                                <div class="menu g1">
                                    <h4><a href="${classpath}/greenmobile/">Hãng sản xuất</a></h4>
                                    <ul class="display-column format_3">
                                        <li><a href="${classpath}/greenmobile/Apple">Apple</a></li>
                                        <li><a href="${classpath}/greenmobile/Samsung">Samsung</a></li>
                                        <li><a href="${classpath}/greenmobile/Xiaomi">Xiaomi</a></li>
                                        <li><a href="${classpath}/greenmobile/OPPO">OPPO</a></li>
                                        <li><a href="${classpath}/greenmobile/TECNO">TECNO</a></li>
                                        <li><a href="${classpath}/greenmobile/Realme">Realme</a></li>
                                        <li><a href="${classpath}/greenmobile/Vivo">Vivo</a></li>
                                        <li><a href="${classpath}/greenmobile/HONOR">HONOR</a></li>
                                        <li><a href="${classpath}/greenmobile/Infinix">Infinix</a></li>
                                        <li><a href="${classpath}/greenmobile/ROG">ROG</a></li>
                                        <li><a href="${classpath}/greenmobile/Nubia">Nubia</a></li>
                                        <li><a href="${classpath}/greenmobile/XOR">XOR</a></li>
                                        <li><a href="${classpath}/greenmobile/Masstel">Masstel</a></li>
                                        <li><a href="${classpath}/greenmobile/TCL">TCL</a></li>
                                        <li><a href="${classpath}/greenmobile/Itel">Itel</a></li>
                                    </ul>
                                    <h4><a href="${classpath}/greenmobile/">Điện thoại cao cấp</a></h4>
                                    <ul class="display-row format_1"></ul>
                                </div>
                            <div class="menu ads" style="width:600px"></div>
                        </div>
                    </div>
                </li>
                <li id="dong-ho">
                    <a href="${classpath}/greenmobile/Đồng hồ" target="_self">
                        <i class="icon icon-watch"></i>
                        <span>Đồng hồ</span>
                    </a>
                    <div class="sub-container">
                        <div class="sub">
                            <div class="menu g0">
                                <h4><a>Đồng hồ</a></h4>
                                <ul class="display-column format_4">
                                    <li><a href="${classpath}/greenmobile/Apple">Apple</a></li>
                                    <li><a href="${classpath}/greenmobile/Garmin">Garmin</a></li>
                                    <li><a href="${classpath}/greenmobile/HUAWEI">HUAWEI</a></li>
                                    <li><a href="${classpath}/greenmobile/Samsung">Samsung</a></li>
                                    <li><a href="${classpath}/greenmobile/Xiaomi">Xiaomi</a></li>
                                    <li><a href="${classpath}/greenmobile/Amazfit">Amazfit</a></li>
                                    <li><a href="${classpath}/greenmobile/Kieslect">Kieslect</a></li>
                                    <li><a href="${classpath}/greenmobile/Masstel">Masstel</a></li>
                                    <li><a href="${classpath}/greenmobile/OPPO">OPPO</a></li>
                                    <li><a href="${classpath}/greenmobile/realme">realme</a></li>
                                </ul>
                            </div>
                            <div class="menu ads" style="width:600px">
                                <a href="${classpath}/greenmobile/" target="_blank"><img style="width:600px" src="${classpath}/user/images/Uploads/2023/06/22/garmin-580x266.png" alt="Garmin tháng 6" /></a>
                            </div>
                        </div>
                    </div>
                </li>
                <li id="laptop">
                    <a href="${classpath}/greenmobile/Laptop" target="_self">
                        <i class="icon icon-laptop"></i>
                        <span>Laptop</span>
                    </a>
                        <div class="sub-container">
                            <div class="sub">
                                <div class="menu g1">
                                    <h4><a href="${classpath}/greenmobile/">Hãng sản xuất</a></h4>
                                    <ul class="display-column format_3">
                                        <li><a href="${classpath}/greenmobile/Apple">Apple</a></li>
                                        <li><a href="${classpath}/greenmobile/ASUS">ASUS</a></li>
                                        <li><a href="${classpath}/greenmobile/Dell">Dell</a></li>
                                        <li><a href="${classpath}/greenmobile/Acer">Acer</a></li>
                                        <li><a href="${classpath}/greenmobile/LG">LG</a></li>
                                        <li><a href="${classpath}/greenmobile/Huawei">Huawei</a></li>
                                        <li><a href="${classpath}/greenmobile/Surface">Surface</a></li>
                                        <li><a href="${classpath}/greenmobile/Lenovo">Lenovo</a></li>
                                        <li><a href="${classpath}/greenmobile/HP">HP</a></li>
                                        <li><a href="${classpath}/greenmobile/Itel">Itel</a></li>
                                        <li><a href="${classpath}/greenmobile/Xiaomi">Xiaomi</a></li>
                                    </ul>
                                    <h4><a>Phân loại Sản phẩm</a></h4>
                                    <ul class="display-column format_1">
                                        <li><a href="${classpath}/greenmobile/Cao cấp - Sang trọng">Cao cấp - Sang trọng</a></li>
                                        <li><a href="${classpath}/greenmobile/Đồ họa - Kĩ thuật">Đồ họa - Kĩ thuật</a></li>
                                        <li><a href="${classpath}/greenmobile/Học tập - Văn phòng">Học tập - Văn phòng</a></li>
                                        <li><a href="${classpath}/greenmobile/Laptop Gaming">Laptop Gaming</a></li>
                                        <li><a href="${classpath}/greenmobile/Mỏng nhẹ">Mỏng nhẹ</a></li>
                                    </ul>
                                </div>
                            <div class="menu ads" style="width:600px">
                                    <a href="${classpath}/greenmobile/ " target="_blank"><img style="width:600px" src="${classpath}/user/images/Uploads/2023/06/13/banner-xa-kho-laptop-01_638222682191504035.png" alt="Laptop chào hè" /></a>
                            </div>
                        </div>
                    </div>
                </li>
                <li id="apple">
                    <a href="${classpath}/greenmobile/Apple" target="_self">
                        <i class="icon iconv2 iconv2-iphone"></i>
                        <span>Apple</span>
                    </a>
                </li>
                <li id="man-hinh">
                    <a href="${classpath}/greenmobile/ " target="_self">
                        <i class="icon icon-monitor"></i>
                        <span>Màn hình</span>
                    </a>
                    <div class="sub-container">
                        <div class="sub">
                            <div class="menu g0">
                                <h4><a href="${classpath}/greenmobile/ ">Hãng sản xuất</a></h4>
                                <ul class="display-column format_2">
                                    <li><a href="${classpath}/greenmobile/Acer">Acer</a></li>
                                    <li><a href="${classpath}/greenmobile/AOC">AOC</a></li>
                                    <li><a href="${classpath}/greenmobile/Asus">Asus</a></li>
                                    <li><a href="${classpath}/greenmobile/Dell">Dell</a></li>
                                    <li><a href="${classpath}/greenmobile/HP">HP</a></li>
                                    <li><a href="${classpath}/greenmobile/Huawei">Huawei</a></li>
                                    <li><a href="${classpath}/greenmobile/Lenovo">Lenovo</a></li>
                                    <li><a href="${classpath}/greenmobile/LG">LG</a></li>
                                    <li><a href="${classpath}/greenmobile/MSI">MSI</a></li>
                                    <li><a href="${classpath}/greenmobile/Samsung">Samsung</a></li>
                                    <li><a href="${classpath}/greenmobile/Viewsonic">Viewsonic</a></li>
                                </ul>
                            </div>
                            <div class="menu g2">
                                <h4><a>Phân loại sản phẩm</a></h4>
                                <ul class="display-column format_1">
                                    <li><a href="${classpath}/greenmobile/Màn hình đồ họa">Màn hình đồ họa</a></li>
                                    <li><a href="${classpath}/greenmobile/Màn hình Gaming">Màn hình Gaming</a></li>
                                    <li><a href="${classpath}/greenmobile/Màn hình văn phòng">Màn hình văn phòng</a></li>
                                    <li><a href="${classpath}/greenmobile/Màn hình di động">Màn hình di động</a></li>
                                </ul>
                            </div>
                            <div class="menu g3">
                                <h4><a href="${classpath}/greenmobile/">Phụ kiện màn hình</a></h4>
                                <ul class="display-row format_1"></ul>
                            </div>
                            <div class="menu ads" style="width:580px">
                                <a href="${classpath}/detail" target="_blank"><img style="width:580px" src="${classpath}/user/images/Uploads/2023/05/31/man-hinh-viewsonic_638211399154458704.jpg" alt="Màn hình ViewSonic" /></a>
                            </div>
                        </div>
                    </div>
                </li>
                
                <li id="smart-tv">
                    <a href="${classpath}/greenmobile/Smart TV" target="_self">
                        <i class="icon icon-tivi"></i>
                        <span>Smart TV</span>
                    </a>
                        <div class="sub-container">
                            <div class="sub">
                                <div class="menu g1">
                                    <h4><a href="${classpath}/greenmobile/">Hãng sản xuất</a></h4>
                                    <ul class="display-column format_1">
                                        <li><a href="${classpath}/greenmobile/TV Xiaomi">TV Xiaomi</a></li>
                                        <li><a href="${classpath}/greenmobile/TV Casper">TV Casper</a></li>
                                        <li><a href="${classpath}/greenmobile/TV Coocaa">TV Coocaa</a></li>
                                        <li><a href="${classpath}/greenmobile/TV Itel">TV Itel</a></li>
                                        <li><a href="${classpath}/greenmobile/TV Samsung">TV Samsung</a></li>
                                        <li><a href="${classpath}/greenmobile/TV SKYWORTH">TV SKYWORTH</a></li>
                                        <li><a href="${classpath}/greenmobile/TV Toshiba">TV Toshiba</a></li>
                                    </ul>
                                    <h4><a href="${classpath}/greenmobile/">Phụ kiện TV</a></h4>
                                    <ul class="display-column format_1">
                                        <li><a href="${classpath}/greenmobile/">Truyền hình K+</a></li>
                                    </ul>
                                </div>
                                <div class="menu ads" style="width:600px">
                                    <a href="${classpath}/greenmobile/" target="_blank"><img style="width:600px" src="${classpath}/user/images/Uploads/2023/05/31/tv-coocaa-02.jpg" alt="TV Coocaa" /></a>
                                </div>
                            </div>
                        </div>
                </li>
                <li id="tablet">
                    <a href="${classpath}/greenmobile/Tablet" target="_self">
                        <i class="icon icon-tablet"></i>
                        <span>Tablet</span>
                    </a>
                    <div class="sub-container">
                        <div class="sub">
                            <div class="menu g2">
                                <h4><a href="${classpath}/greenmobile/">Hãng sản xuất</a></h4>
                                <ul class="display-column format_3">
                                    <li><a href="${classpath}/greenmobile/Tablet Apple">Apple</a></li>
                                    <li><a href="${classpath}/greenmobile/Tablet Samsung">Samsung</a></li>
                                    <li><a href="${classpath}/greenmobile/Tablet Microsoft">Microsoft Surface</a></li>
                                    <li><a href="${classpath}/greenmobile/Tablet Lenovo">Lenovo</a></li>
                                    <li><a href="${classpath}/greenmobile/Tablet OPPO">OPPO</a></li>
                                    <li><a href="${classpath}/greenmobile/Tablet Yuho">Yuho</a></li>
                                    <li><a href="${classpath}/greenmobile/Tablet Xiaomi">Xiaomi</a></li>
                                </ul>
                            </div>
                            <div class="menu ads" style="width:600px">
                                <a href="${classpath}/detail" target="_blank"><img style="width:600px" src="${classpath}/user/images/Uploads/2023/05/30/group-246.png" alt="Lenovo Tab M10 Gen 3" /></a>
                            </div>
                        </div>
                    </div>
                </li>
                <li id="loa-tai-nghe">
                    <a href="${classpath}/greenmobile/Âm thanh" target="_self">
                        <i class="icon icon-headphone"></i>
                        <span>Âm thanh</span>
                    </a>
                    <div class="sub-container">
                        <div class="sub">
                            <div class="menu g0">
                                <h4><a href="${classpath}/greenmobile/">Loa</a></h4>
                                <ul class="display-column format_2">
                                    <li><a href="${classpath}/greenmobile/Loa Samsung">Samsung</a></li>
                                    <li><a href="${classpath}/greenmobile/Loa Harman Kardon">Harman Kardon</a></li>
                                    <li><a href="${classpath}/greenmobile/Loa JBL">JBL</a></li>
                                    <li><a href="${classpath}/greenmobile/Loa MONSTER">MONSTER</a></li>
                                    <li><a href="${classpath}/greenmobile/Loa Sony">Sony</a></li>
                                    <li><a href="${classpath}/greenmobile/Loa SoundPEATS">SoundPEATS</a></li>
                                    <li><a href="${classpath}/greenmobile/Loa Tekin">Tekin</a></li>
                                </ul>
                            </div>
                            <div class="menu g1">
                                <h4><a href="${classpath}/greenmobile/">Tai nghe</a></h4>
                                <ul class="display-column format_3">
                                    <li><a href="${classpath}/greenmobile/Tai nghe Sony">Sony</a></li>
                                    <li><a href="${classpath}/greenmobile/Tai nghe JBL">JBL</a></li>
                                    <li><a href="${classpath}/greenmobile/Tai nghe Soundpeats">Soundpeats</a></li>
                                    <li><a href="${classpath}/greenmobile/Tai nghe Apple">Apple</a></li>
                                    <li><a href="${classpath}/greenmobile/Tai nghe Asus">Asus</a></li>


                                </ul>
                            </div>
                            <div class="menu ads" style="width:600px">
                                    <a href="${classpath}/detail" target="_blank"><img style="width:600px" src="${classpath}/user/images/Uploads/2023/06/07/top-menu-freebuds-5.png" alt="Freebuds 5" /></a>
                            </div>
                        </div>
                    </div>
                </li>
                <li id="smart-home">
                    <a href="${classpath}/greenmobile/Smart Home" target="_self">
                        <i class="icon icon-home"></i>
                        <span>Smart Home</span>
                    </a>
                </li>
                <li id="phu-kien">
                    <a href="${classpath}/greenmobile/Phụ Kiện" target="_self">
                        <i class="icon icon-sac"></i>
                        <span>Phụ kiện</span>
                    </a>
                </li>
                <li id="do-choi-cong-nghe">
                    <a href="${classpath}/greenmobile/" target="_self">
                        <i class="icon icon-game"></i>
                        <span>Đồ chơi CN</span>
                    </a>
                </li>
                <li id="kho-san-pham-cu">
                    <a href="${classpath}/greenmobile/đồ cũ" target="_self">
                        <i class="icon icon-maycu"></i>
                        <span>Đồ cũ</span>
                    </a>
                </li>
                <li id="dich-vu-sua-chua">
                    <a href="${classpath}/home" target="_self">
                        <i class="icon icon-suachua"></i>
                        <span>Sửa chữa</span>
                    </a>
                </li>
                <li id="sim-the">
                    <a href="${classpath}/home" target="_self">
                        <i class="icon icon-simthe"></i>
                        <span>Sim thẻ</span>
                    </a>
                    <div class="sub-container">
                        <div class="sub">
                                <div class="menu g1">
                                    <h4><a>Sản phẩm HOT</a></h4>
                                    <ul class="display-row format_5">
                                    </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li id="tin-tuc">
                    <a href="${classpath}/home" target="_self">
                        <i class="icon icon-news"></i>
                        <span>Tin hot</span>
                    </a>
                </li>
                <li id="tin-khuyen-maiuu-dai-hot">
                    <a href="${classpath}/home" target="_blank">
                        <i class="icon icon-flash"></i>
                        <span>Ưu đãi</span>
                    </a>
                        <div class="sub-container">
                            <div class="sub">
                                <div class="menu g0">
                                    <h4><a href="${classpath}/home">Ưu đãi Hot</a></h4>
                                    <ul class="display-row format_1">
                                        <li><a href="${classpath}/home">Combo ưu đãi samsung</a></li>
                                        <li><a href="${classpath}/home">Khuyến mại Apple</a></li>
                                        <li><a href="${classpath}/home">Khuyến mại Energizer</a></li>
                                        <li><a href="${classpath}/home">Khuyến mại Huawei</a></li>
                                        <li><a href="${classpath}/home">Khuyến mại LG</a></li>
                                        <li><a href="${classpath}/home">Khuyến mại Sony</a></li>
                                        <li><a href="${classpath}/home">Nokia Khuyến mại</a></li>
                                        <li><a href="${classpath}/home">Sản phẩm độc quyền</a></li>
                                        <li><a href="${classpath}/home">Sản phẩm Huawei mới</a></li>
                                        <li><a href="${classpath}/home">Sản phẩm mới Apple</a></li>
                                        <li><a href="${classpath}/home">Ưu cái các Sản phẩm Oaxis</a></li>
                                        <li><a href="${classpath}/home">Ưu đãi thiết bị mạng, camera an ninh</a></li>
                                    </ul>
                                </div>
                                <div class="menu ads" style="width:600px">
                                        <a href="${classpath}/detail" target="_blank"><img style="width:600px" src="${classpath}/user/images/Uploads/2023/05/31/top-menu-uu-dai.png" alt="Gói summer Pack1" /></a>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    <!-- nav -->
    </header>
