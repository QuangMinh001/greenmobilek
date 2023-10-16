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
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" 
		rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" 
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
		
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
        <div class="dashboard-wrapper" style="position: relative">
        	<sf:form class="form" action="${classpath }/manager/save-edit-category" method="post" modelAttribute="category" enctype="multipart/form-data">
				<div class="form-body container">
				
					<div class="row" style="justify-content: center;">
						<div class="col-md-5">
							<div class="form-group mb-4">
								<label for="createby">Create by</label>
								<sf:select path="createBy" class="form-control" id="createBy">
									<sf:options items="${users }" itemValue="id"
										itemLabel="username"></sf:options>
								</sf:select>
							</div>
						</div>

						<div class="col-md-5">
							<div class="form-group mb-4">
								<label for="updateby">Update by</label>
								<sf:select path="updateBy" class="form-control" id="updateBy">
									<option value="${userLogined.id }" label="${userLogined.username }">${userLogined.username }</option>
									<sf:options items="${users }" itemValue="id"
										itemLabel="username"></sf:options>
								</sf:select>
							</div>
						</div>
					</div>

					<div class="row" style="justify-content: center;">
						<div class="col-md-5">
							<div class="form-group mb-4">
								<label for="createdate">Create date</label>
								<sf:input path="createDate" class="form-control"
									type="date" id="createDate" name="createDate"
									value="${createDate }"></sf:input>
							</div>
						</div>

						<div class="col-md-5">
							<div class="form-group mb-4">
								<label for="updatedate">Update date</label>
								<sf:input path="updateDate" class="form-control"
									type="date" id="updateDate" name="updateDate"
									value="${updateDate }"></sf:input>
							</div>
						</div>
					</div>
					
					<!-- ==================================================================================== -->
					<!-- ==================================================================================== -->
					<!-- ==================================================================================== -->
					<!-- ==================================================================================== -->
									
					<div class="row" style="justify-content: center;">
						<div class="col-md-5">
							<div class="form-group mb-4">
                                 <label for="name">Category name</label>
                                 <sf:input path="name" type="text" class="form-control" id="name" name="name" placeholder="category name"></sf:input>
                            </div>
                        </div>
                        <div class="col-md-5">
							<div class="form-group mb-4" style="visibility: hidden;">
                                 <label for="name">Category id</label>
                                 <sf:input path="id" type="text" class="form-control" id="id" name="id" placeholder="category id"></sf:input>
                            </div>
                        </div>
					</div>

					<div class="row" style="justify-content: center;">
						<div class="col-md-10">
							<div class="form-group mb-4">
								<label for="shortDescription">Description</label>
								<sf:textarea path="description" id="description"
									name="description" class="form-control" rows="3"
									placeholder="description..."></sf:textarea>
							</div>
						</div>
					</div>
					<div class="row" style="justify-content: center;">
                        <div class="col-md-10">
							<div class="form-group mb-4">
								<label for="status">&nbsp;&nbsp;&nbsp;&nbsp;</label>
								<sf:checkbox path="status" class="form-check-input" id="status" name="status"></sf:checkbox>
                                <label for="status">Active</label>			                                       
                            </div>
                        </div>       	
					</div>

							
					<!-- ------------------------------------------------------------- -->		
					<!-- ------------------------------------------------------------- -->		
					<!-- ------------------------------------------------------------- -->		
					<!-- ------------------------------------------------------------- -->		
					<div class="container" style="margin-left: 100px; justify-content: end">
						
						<div style="margin-top:25px;"  class="row">
							<div class="col-md-12">
								<div class="form-group mb-4">
									<a href="${classpath }/manager/list-categories" class="btn btn-primary active" role="button"
											aria-pressed="true"> Back to list 
									</a>							
									<button type="submit" class="btn btn-primary">
										Save category
									</button>
									
								</div>
							</div>
						</div>
					</div>
				</div>
				
			</sf:form>
            
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <div class="footer" style="position: absolute; bottom: 0px">
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