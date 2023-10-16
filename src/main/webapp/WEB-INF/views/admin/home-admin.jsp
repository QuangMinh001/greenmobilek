<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- directive của JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

    
<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${classpath}/admin/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="${classpath}/admin/assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="${classpath}/admin/assets/libs/css/style.css">
    <link rel="stylesheet" href="${classpath}/admin/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="${classpath}/admin/assets/vendor/charts/chartist-bundle/chartist.css">
    <link rel="stylesheet" href="${classpath}/admin/assets/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="${classpath}/admin/assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="${classpath}/admin/assets/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="${classpath}/admin/assets/vendor/fonts/flag-icon-css/flag-icon.min.css">
    
<!--      <title>Concept - Bootstrap 4 Admin Dashboard Template</title>-->
    <title>Admin Dashboard</title>
    
    
    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
</head>

<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        <jsp:include page="/WEB-INF/views/admin/layout/dashboard_header.jsp"></jsp:include>
        <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->
        <jsp:include page="/WEB-INF/views/admin/layout/nav_left_sidebar.jsp"></jsp:include>
        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="dashboard-ecommerce">
                <div class="container-fluid dashboard-content ">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                                <h2 class="pageheader-title">E-commerce Dashboard Template </h2>
                                <p class="pageheader-text">Nulla euismod urna eros, sit amet scelerisque torton lectus vel mauris facilisis faucibus at enim quis massa lobortis rutrum.</p>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">E-Commerce Dashboard Template</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end pageheader  -->
                    <!-- ============================================================== -->
                    <div class="ecommerce-widget">

                        <div class="row">
                            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="text-muted">Total Revenue</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1">$12099</h1>
                                        </div>
                                        <div class="metric-label d-inline-block float-right text-success font-weight-bold">
                                            <span><i class="fa fa-fw fa-arrow-up"></i></span><span>5.86%</span>
                                        </div>
                                    </div>
                                    <div id="sparkline-revenue"></div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="text-muted">Affiliate Revenue</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1">$12099</h1>
                                        </div>
                                        <div class="metric-label d-inline-block float-right text-success font-weight-bold">
                                            <span><i class="fa fa-fw fa-arrow-up"></i></span><span>5.86%</span>
                                        </div>
                                    </div>
                                    <div id="sparkline-revenue2"></div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="text-muted">Refunds</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1">0.00</h1>
                                        </div>
                                        <div class="metric-label d-inline-block float-right text-primary font-weight-bold">
                                            <span>N/A</span>
                                        </div>
                                    </div>
                                    <div id="sparkline-revenue3"></div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="text-muted">Avg. Revenue Per User</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1">$28000</h1>
                                        </div>
                                        <div class="metric-label d-inline-block float-right text-secondary font-weight-bold">
                                            <span>-2.00%</span>
                                        </div>
                                    </div>
                                    <div id="sparkline-revenue4"></div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <!-- ============================================================== -->
                      
                            <!-- ============================================================== -->

                                          <!-- recent orders  -->
                            <!-- ============================================================== -->
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="card">
                                	
                                    	<h5 class="card-header">Order tracking</h5>
	                                    <div class="card-body p-0">
											</div>
		                                        <div class="table-responsive">
		                                            <table class="table">
		                                                <thead class="bg-light">
		                                                    <tr class="border-0">
		                                                        <th scope="col">No.</th>
																<th scope="col">User ID</th>
																<th scope="col">Code</th>
																<th scope="col">Customer</th>
																<th scope="col">Mobile</th>
																<th scope="col">Address</th>
																<th scope="col">Payment</th>
																<th scope="col">Create By</th>
																<th scope="col">Create Date</th>
																<th scope="col">Delivery Date</th>
																<th scope="col">Status</th>
																<th scope="col">Delivery</th>
																<th scope="col">Delete</th>
		                                                    </tr>
		                                                </thead>
		                                                <tbody>
		                                                	<c:forEach var="saleOrder" items="${saleOrders }" varStatus="loop">
			                                                    <tr>
			                                                        <th scope="row">${loop.index + 1 }</th>
																		<td>${saleOrder.user.id }</td>
																		<td>${saleOrder.code }</td>
																		<td>${saleOrder.customerName }</td>
																		<td>${saleOrder.customerMobile }</td>
																		<td>${saleOrder.customerAddress }</td>
																		<td><fmt:formatNumber value="${saleOrder.total}"
																				minFractionDigits="0"></fmt:formatNumber></td>
																		<td>${product.createBy }</td>
																		<td><fmt:formatDate value="${saleOrder.createDate}"
																				pattern="dd-MM-yyyy" /></td>
																		<td><fmt:formatDate value="${saleOrder.updateDate}"
																				pattern="dd-MM-yyyy" /></td>
																		<td><span id="_product_status_${saleOrder.id }">
																				<c:choose>
																					<c:when test="${saleOrder.status}">
																						<span>Đã giao hàng</span>
																					</c:when>
																					<c:otherwise>
																						<span>Chưa giao hàng</span>
																					</c:otherwise>
																				</c:choose>
																		</span></td>
																		<td><a
																			href="${classpath }/manager/change-order-status/${saleOrder.id }"
																			role="button" class="btn btn-primary">Delivery</a>
																		<td><a
																			href="${classpath }/manager/edit-cart/${saleOrder.id }"
																			role="button" class="btn btn-secondary">Delete</a>
			                                                    </tr>
		                                                   </c:forEach>
		                                                </tbody>
		                                            </table>
		                                        </div>
	                                    	</div>
                                </div>
								</div>
                            <!-- ============================================================== -->
                            <!-- end recent orders  -->

    
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <div class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                             Copyright © 2018 Concept. All rights reserved. Dashboard by <a href="https://colorlib.com/wp/">Colorlib</a>.
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="text-md-right footer-links d-none d-sm-block">
                                <a href="javascript: void(0);">About</a>
                                <a href="javascript: void(0);">Support</a>
                                <a href="javascript: void(0);">Contact Us</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- end wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <!-- jquery 3.3.1 -->
    <script src="${classpath}/admin/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <!-- bootstap bundle js -->
    <script src="${classpath}/admin/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <!-- slimscroll js -->
    <script src="${classpath}/admin/assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <!-- main js -->
    <script src="${classpath}/admin/assets/libs/js/main-js.js"></script>
    <!-- chart chartist js -->
    <script src="${classpath}/admin/assets/vendor/charts/chartist-bundle/chartist.min.js"></script>
    <!-- sparkline js -->
    <script src="${classpath}/admin/assets/vendor/charts/sparkline/jquery.sparkline.js"></script>
    <!-- morris js -->
    <script src="${classpath}/admin/assets/vendor/charts/morris-bundle/raphael.min.js"></script>
    <script src="${classpath}/admin/assets/vendor/charts/morris-bundle/morris.js"></script>
    <!-- chart c3 js -->
    <script src="${classpath}/admin/assets/vendor/charts/c3charts/c3.min.js"></script>
    <script src="${classpath}/admin/assets/vendor/charts/c3charts/d3-5.4.0.min.js"></script>
    <script src="${classpath}/admin/assets/vendor/charts/c3charts/C3chartjs.js"></script>
    <script src="${classpath}/admin/assets/libs/js/dashboard-ecommerce.js"></script>
</body>
 
</html>