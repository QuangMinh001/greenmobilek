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
    <title>User detail</title>
		
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
        			<div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                                <h2 class="pageheader-title">Slide list</h2>
                                <p class="pageheader-text">Nulla euismod urna eros, sit amet scelerisque torton lectus vel mauris facilisis faucibus at enim quis massa lobortis rutrum.</p>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Slide list</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ecommerce-widget">

                        <div class="row">
                            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="text-muted">Total</h5>
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

                                         
                            <!-- ============================================================== -->
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="card">
                                	<form class="form" action="${classpath }/manager/list-slide" method="get">
                                		<h5 class="card-header">Slide list</h5>
										<div class="card-body p-0">						
											<!-- ------------------------------------------------------------- -->		
											<!-- ------------------------------------------------------------- -->		
											<div class="table-responsive">
						                        <table class="table">
						                            <thead class="bg-light">
						                                <tr class="border-0">
						                                    <th scope="col">No.</th>
															<th scope="col">ID</th>
															<th scope="col">Image</th>
															<th scope="col">Status</th>
															<th scope="col">Delete</th>
															<th scope="col">Detail</th>
				                                         </tr>
			                                         </thead>
			                                         <tbody>
			                                         	<c:forEach var="slide" items="${slideList }" varStatus="loop">
			                                              <tr>
			                                                <th scope="row">${loop.index + 1 }</th>
															<td>${slide.id }</td>
															<td>
			                                                    <div class="m-r-10">
			                                                    	<img height="100px" src="${classpath}/StorageFolder/${slide.path }" class="light-logo"/>
			                                                    </div>
			                                                </td>
															<td>
			                                           	    	<a href="${classpath }/manager/change-status-slide/${slide.id }">
			                                            	    	<span id="_product_status_${slide.id }">
			                                            	    		<c:choose>
			                                            	    			<c:when test="${slide.status }">
			                                            	    				<span class="badge-dot badge-success mr-1">Active</span>
			                                            	    			</c:when>
			                                            	    			<c:otherwise>
			                                            	    				<span class="badge-dot badge-brand mr-1">Inactive</span>
			                                            	    			</c:otherwise>
			                                            	    		</c:choose>
			                                            	    	</span>
			                                            	    </a>
															</td>
															<td><a
																href="${classpath }/manager/delete-slide/${slide.id }"
																role="button" class="btn btn-primary">Delete</a>
															<td><a
																href="${classpath }/manager/edit-slide/${slide.id }"
																role="button" class="btn btn-primary">Detail</a>
			                                              </tr>
			                                            </c:forEach>
			                                         </tbody>
			                                     </table>
				                            </div>
										</div>
									</form>
									<div class="col-md-2">
										<div class="form-group mb-4">
											<a href="${classpath }/manager/add-slide" role="button" class="btn btn-primary">Add Slide</a>
										</div>
									</div>
                               	</div>
							</div>
                        </div>
          
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
            	</div>
            </div>
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <div class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                             Copyright © 2023 Concept. All rights reserved. Dashboard by <a href="https://colorlib.com/wp/">Colorlib</a>.
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
	<jsp:include page="/WEB-INF/views/admin/layout/js_admin_view.jsp"></jsp:include>
</body>
 
</html>