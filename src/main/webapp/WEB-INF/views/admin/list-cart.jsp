<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
	<jsp:include page="/WEB-INF/views/admin/layout/css_admin_view.jsp"></jsp:include>
    <title>Concept - Bootstrap 4 Admin Dashboard Template</title>
    
    
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
                                <h2 class="pageheader-title">Order tracking</h2>
                                <p class="pageheader-text">Nulla euismod urna eros, sit amet scelerisque torton lectus vel mauris facilisis faucibus at enim quis massa lobortis rutrum.</p>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Order tracking</li>
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
                                        <h5 class="text-muted">Total Orders</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1">${total }</h1>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                      
                            <!-- ============================================================== -->

                                          <!-- recent orders  -->
                            <!-- ============================================================== -->
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="card">
                                	<form class="form" action="${ classpath}/manager/list-cart" method="get">
                                    	<h5 class="card-header">Order tracking</h5>
	                                    <div class="card-body p-0">
	                                    	<div class="row" style="justify-content: center;">
		                                    	<div class="col-md-3">
													<div class="form-group mb-4">
														<label for="fromdate">From date</label>
														<sf:input path="saleOrderSearch.beginDate"
															class="form-control" type="date" id="beginDate"
															name="beginDate" value="${saleOrderSearch.beginDate }"></sf:input>
													</div>
												</div>
		
												<div class="col-md-3">
													<div class="form-group mb-4">
														<label for="enddate">To date</label>
														<sf:input path="saleOrderSearch.endDate"
															class="form-control" type="date" id="endDate"
															name="endDate" value="${saleOrderSearch.endDate }"></sf:input>
													</div>
												</div>
		
												<div class="col-md-2">
													<div class="form-group mb-4">
														<label for="keyword">Keyword</label>
														<div class="form-group mb-4">
															<input type="text" class="form-control" id="keyword"
																name="keyword" placeholder="keyword" style="height: 38px;"
																value="${saleOrderSearch.keyword }" />
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div class="form-group mb-4">
														<label for="status">Status</label> 
														<select name="status"
															id="status" class="form-control"
															style="margin-right: 10px; max-height:37px;">
															<c:if test="${saleOrderSearch.status == 2 }">
																<option value="2">All</option>
																<option value="0">Chưa giao hàng</option>
																<option value="1">Đã giao hàng</option>
															</c:if>
															<c:if test="${saleOrderSearch.status == 0 }">
																<option value="0">Chưa giao hàng</option>
																<option value="1">Đã giao hàng</option>
																<option value="2">All</option>
															</c:if>
															<c:if test="${saleOrderSearch.status == 1 }">
																<option value="1">Đã giao hàng</option>
																<option value="0">Chưa giao hàng</option>
																<option value="2">All</option>
															</c:if>
														</select>
													</div>
												</div>
												
												<div class="col-md-1">
													<label for="search-btn">&nbsp</label>
													<div class="form-group mb-4">
														<button style="height: 37px" type="submit" class="btn btn-primary" id="btnSearch" name="btnSearch">Search</button>
													</div>
												</div>
											</div>
		                                        <div class="table-responsive">
		                                        	<div style="visibility: hidden;"><input id="page" name="page" class="form-control"
															value="${saleOrderSearch.currentPage }"></div>
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
																			href="${classpath }/manager/delete-cart/${saleOrder.id }"
																			role="button" class="btn btn-primary">Delete</a>
			                                                    </tr>
		                                                   </c:forEach>
		                                                </tbody>
		                                            </table>
		                                        </div>
	                                    	</div>
	                                    <div class="container row">
											<div class="pagination float-right">
												<div id="paging"></div>
											</div>
										</div>
                                	</form>
                                </div>
								</div>
                            </div>
          
                            <!-- ============================================================== -->
                            <!-- end recent orders  -->

    
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- customer acquistion  -->
                            <!-- ============================================================== -->
                            <!-- ============================================================== -->
                            <!-- end customer acquistion  -->
                            <!-- ============================================================== -->
                        </div>
                        <div class="row">
                        	<div class="col-xl-6 col-lg-12 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <h5 class="card-header">Doanh thu theo vùng</h5>
                                    <div class="card-body p-0">
                                        <ul class="country-sales list-group list-group-flush">
                                            <li class="country-sales-content list-group-item"><span class="">United States</span><span class="float-right text-dark">78%</span>
                                            </li>
                                            <li class="list-group-item country-sales-content"><span class="">Canada</span><span class="float-right text-dark">7%</span>
                                            </li>
                                            <li class="list-group-item country-sales-content"><span class="">Russia</span><span class="float-right text-dark">4%</span>
                                            </li>
                                            <li class="list-group-item country-sales-content"><span class="">India</span><span class="float-right text-dark">12%</span>
                                            </li>
                                            <li class="list-group-item country-sales-content"><span class="">France</span><span class="float-right text-dark">16%</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="card-footer text-center">
                                        <a href="#" class="btn-primary-link">View Details</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
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

    <!-- ============================================================== -->
    <!-- end main wrapper  -->
    <!-- ============================================================== -->
	<jsp:include page="/WEB-INF/views/admin/layout/js_admin_view.jsp"></jsp:include>
	
	

	<script type="text/javascript">
		$( document ).ready(function() {
			//Dat gia tri cua status ung voi dieu kien search truoc do
			$("#status").val(${saleOrderSearch.status});
			
			$("#paging").pagination({
				currentPage: ${saleOrderSearch.currentPage}, //Trang hien tai
				items: ${saleOrderSearch.totalItems}, //Tong so don hang (total sale orders)
				itemsOnPage: ${saleOrderSearch.sizeOfPage},
				cssStyle: 'light-theme',
				onPageClick: function(pageNumber, event) {
					$('#page').val(pageNumber);
					$('#btnSearch').trigger('click');
				},
			});
		});
	</script>
</body>
 
</html>