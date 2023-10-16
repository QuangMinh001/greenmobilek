
<div class="nav-left-sidebar sidebar-dark" xmlns:th="http://www.thymeleaf.org">
    <div class="menu-list">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="d-xl-none d-lg-none" href="#">Dashboard</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav flex-column">
                    <li class="nav-divider">
                        Menu
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-1" aria-controls="submenu-1"><i class="fa fa-fw fa-chart-pie"></i>Dashboard <span class="badge badge-success"></span></a>
                        <div id="submenu-1" class="collapse submenu" style="">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a class="nav-link" href="${classpath }/manager/home-admin">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="${classpath }/manager/list-product">Product List</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="${classpath }/manager/list-categories">Categories</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="${classpath }/manager/list-cart">Order tracking</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
	                    <a class="nav-link" data-toggle="collapse" aria-expanded="false" data-target="#submenu-2" aria-controls="submenu-2"><i class="fa fa-fw fa-user-circle"></i>Account management</a>
	                    <div id="submenu-2" class="collapse submenu" style="">
	                        <ul class="nav flex-column">
	                            <li class="nav-item">
	                                <a class="nav-link" href="${classpath }/manager/user-list">User account <span class="badge badge-secondary">New</span></a>
	                            </li>
	                            <li class="nav-item">
	                                <a class="nav-link" href="${classpath }/manager/admin-list">Administrator account</a>
	                            </li>
	                        </ul>
	                    </div>
	                </li>
					<li class="nav-item ">
	                    <a class="nav-link" href="${classpath }/manager/list-slide" ><i class="fab fa-fw fa-wpforms"></i>Slide management</a>
	                </li>

                    
                </ul>
            </div>
        </nav>
    </div>
</div>