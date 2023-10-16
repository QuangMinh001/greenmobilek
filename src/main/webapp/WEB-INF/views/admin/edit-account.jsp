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
        <div class="dashboard-wrapper">
        	<sf:form class="form" action="${classpath }/manager/save-edit-account" method="post" modelAttribute="dbAccount" enctype="multipart/form-data">
				<div class="form-body container">
				
					<div class="row" style="justify-content: center; ">
						<div class="col-md-2" >
							<img style="width:170px; height: 190px; border-radius:100%;" src="https://hinhgaixinh.com/wp-content/uploads/2021/03/20210314-nu-sinh-nhat-ban-6-835x1254.jpg" />
						</div>
					
					</div>
				
					<div class="row" style="justify-content: center;">
						<div class="col-md-5">
							<div class="form-group mb-4">
								<label for="createby">Create by</label>
								<sf:select path="createBy" class="form-control" id="createBy">
									<option selected disabled value="${dbAccount.id }">${dbAccountCreateBy }</option>
								</sf:select>
							</div>
						</div>

						<div class="col-md-5">
							<div class="form-group mb-4">
								<label for="updateby">Update by</label>
								<sf:select path="updateBy" class="form-control" id="updateBy">
									<option selected disabled value="${userLogined.id }">${userLogined.username }</option>
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
                                 <label for="name">Username</label>
                                 <sf:input path="username" type="text" class="form-control" id="username" name="username" placeholder="username"></sf:input>
                            </div>
                        </div>
<!--                    không ai có quyền xem mật khẩu, mật khẩu chỉ có thể do chính chủ tạo mới      -->
						<div class="col-md-5">
							<div class="form-group mb-4">
                                 <label for="name">Delegated</label>
                                 <select name="delegated" id="delegated" class="form-control"
									style="border-radius: 6px;">
									<c:if test="${_roleName == 'ADMIN'}">
										<option value="ADMIN">Administrator</option>
										<option value="STAFF">Staff</option>
									</c:if>
									<c:if test="${_roleName == 'STAFF'}">
										<option value="STAFF">Staff</option>
										<option value="ADMIN">Administrator</option>
									</c:if>

								</select>
                            </div>
                        </div>
					</div>				
					
					<div class="row" style="justify-content: center;">
						<div class="col-md-5">
							<div class="form-group mb-4">
                                 <label for="name">Mobile</label>
                                 <sf:input path="mobile" type="text" class="form-control" id="mobile" name="mobile" placeholder="mobile"></sf:input>
                            </div>
                        </div>
                        <div class="col-md-5">
							<div class="form-group mb-4">
                                 <label for="name">Email</label>
                                 <sf:input path="email" type="text" class="form-control" id="email" name="email" placeholder="email"></sf:input>
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
					
					<div class="row" style="justify-content: center; visibility: hidden">
						<div class="col-md-5">
							<div class="form-group">
                                 <label for="id"> user ID</label>
                                 <sf:input path="id" type="text" class="form-control" id="id" name="id" placeholder="id"></sf:input>
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
									<a href="${classpath }/manager/admin-list" class="btn btn-primary active" role="button"
											aria-pressed="true"> Back to list 
									</a>							
									<button type="submit" class="btn btn-primary">
										Save
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