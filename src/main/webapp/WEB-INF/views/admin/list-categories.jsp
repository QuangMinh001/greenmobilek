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
                                <h2 class="pageheader-title">Categories</h2>
                                <p class="pageheader-text">Nulla euismod urna eros, sit amet scelerisque torton lectus vel mauris facilisis faucibus at enim quis massa lobortis rutrum.</p>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Categories</li>
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
                        <div class="row container">
                           <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                               <div class="card">
                                   <div class="card-body">
                                       <h5 class="text-muted">Total Categories</h5>
                                       <div class="metric-value d-inline-block">
                                           <h1 class="mb-1">${totalCategories }</h1>
                                       </div>
                                   </div>
                               </div>
                           </div>
                    	</div>
                        	
                            <!-- ============================================================== -->
                      
                            <!-- ============================================================== -->

                                          <!-- recent orders  -->
                            <!-- ============================================================== -->
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="card">
                                <form action="${classpath }/manager/list-categories" method="get">
                                    <h5 class="card-header">Categories table</h5>
                                    <div class="card-body p-0">
                                    	<div class="row" style="justify-content: center;">
				                        	<div class="col-md-4">
												<div class="form-group mb-2 mt-2">
													<div class="form-group mb-4">
														<input type="text" class="form-control" id="keyword"
															name="keyword" placeholder="keyword"
															value="${searchObj.keyword }" />
													</div>
												</div>
											</div>
											<div class="col-md-1">
												<div class="form-group mb-2 mt-2">
													<button style="max-height: 36px" type="submit" class="btn btn-primary" id="btnSearch" name="btnSearch">Search</button>
												</div>
											</div>
				                        </div>
                                        <div class="table-responsive">
                                        	<div style="visibility: hidden;"><input id="page" name="page" class="form-control"
													value="${searchObj.currentPage }"></div>
                                            <table class="table">
                                                <thead class="bg-light">
                                                    <tr class="border-0">
                                                        <th scope="col">No.</th>
														<th scope="col">Id</th>
														<th scope="col">Name</th>
														<th scope="col">Description</th>
														<th scope="col">Create by</th>
														<th scope="col">Update by</th>
														<th scope="col">Create date</th>
														<th scope="col">Update date</th>	                                                
		                                                <th scope="col">Edit</th>
		                                                <th scope="col">Delete</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                	<c:forEach var="category" items="${categories }" varStatus="loop">
	                                                    <tr>
	                                                        <td>${loop.index + 1 }</td>
	                                                        <td>${category.id }</td>
	                                                        <td>${category.name } </td>
	                                                        <td>${category.description }</td>
	                                                        <td>${category.createBy}</td>
	                                                        <td>${category.updateBy}</td>
	                                                        <td>
																<fmt:formatDate value="${category.createDate}" pattern="dd-MM-yyyy"/>
															</td>
															<td>
																<fmt:formatDate value="${category.updateDate}" pattern="dd-MM-yyyy"/>
															</td>
															<td><a href="${classpath }/manager/edit-category/${category.id }" role="button" class="btn btn-primary">Edit</a>
	                                            	    	<td><a href="${classpath }/manager/delete-category/${category.id }" role="button" class="btn btn-secondary">Delete</a>
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
							<div class="col-md-2">
								<div class="form-group mb-4">
									<a href="${classpath }/manager/add-category" role="button" class="btn btn-primary">Add Category</a>
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
	
	<script type="text/javascript">
		$( document ).ready(function() {
			//Dat gia tri cua status ung voi dieu kien search truoc do
			$("#status").val(${searchObj.status});
			
			$("#paging").pagination({
				currentPage: ${searchObj.currentPage}, //Trang hien tai
				items: ${searchObj.totalItems}, //Tong so don hang (total sale orders)
				itemsOnPage: ${searchObj.sizeOfPage},
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