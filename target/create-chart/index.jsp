<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>API DashBoard</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

</head>
<body>
	
	<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/bootstrap-responsive.min.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/fullcalendar.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/matrix-style.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/matrix-media.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/jquery.gritter.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/font-awesome/css/font-awesome.css" />" rel="stylesheet" type='text/css'>
	
	<script src="<c:url value="/resources/js/jquery.js" />"></script>
	<script src="<c:url value="/resources/js/highcharts.js"/>"></script>
	<script src="<c:url value="/resources/js/exporting.js" />"></script>
	<script src="<c:url value="/resources/js/chart-anual.js" />"></script>
	<script src="<c:url value="/resources/js/requisicao_ok.js" />"></script>

	<!--Header-part-->
	<div id="header">
		<h1>
			<a href="index.jsp">Matrix Admin</a>
		</h1>
	</div>
	<!--close-Header-part-->


	<!--top-Header-menu-->
<!-- 	<div id="user-nav" class="navbar navbar-inverse"> -->
<!-- 		<ul class="nav"> -->
<!-- 			<li class="dropdown" id="profile-messages"><a title="" href="#" -->
<!-- 				data-toggle="dropdown" data-target="#profile-messages" -->
<!-- 				class="dropdown-toggle"><i class="icon icon-user"></i> <span -->
<!-- 					class="text">Welcome User</span><b class="caret"></b></a> -->
<!-- 				<ul class="dropdown-menu"> -->
<!-- 					<li><a href="#"><i class="icon-user"></i> My Profile</a></li> -->
<!-- 					<li class="divider"></li> -->
<!-- 					<li><a href="#"><i class="icon-check"></i> My Tasks</a></li> -->
<!-- 					<li class="divider"></li> -->
<!-- 					<li><a href="login.html"><i class="icon-key"></i> Log Out</a></li> -->
<!-- 				</ul></li> -->
<!-- 			<li class="dropdown" id="menu-messages"><a href="#" -->
<!-- 				data-toggle="dropdown" data-target="#menu-messages" -->
<!-- 				class="dropdown-toggle"><i class="icon icon-envelope"></i> <span -->
<!-- 					class="text">Messages</span> <span class="label label-important">5</span> -->
<!-- 					<b class="caret"></b></a> -->
<!-- 				<ul class="dropdown-menu"> -->
<!-- 					<li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> -->
<!-- 							new message</a></li> -->
<!-- 					<li class="divider"></li> -->
<!-- 					<li><a class="sInbox" title="" href="#"><i -->
<!-- 							class="icon-envelope"></i> inbox</a></li> -->
<!-- 					<li class="divider"></li> -->
<!-- 					<li><a class="sOutbox" title="" href="#"><i -->
<!-- 							class="icon-arrow-up"></i> outbox</a></li> -->
<!-- 					<li class="divider"></li> -->
<!-- 					<li><a class="sTrash" title="" href="#"><i -->
<!-- 							class="icon-trash"></i> trash</a></li> -->
<!-- 				</ul></li> -->
<!-- 			<li class=""><a title="" href="#"><i class="icon icon-cog"></i> -->
<!-- 					<span class="text">Settings</span></a></li> -->
<!-- 			<li class=""><a title="" href="login.html"><i -->
<!-- 					class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li> -->
<!-- 		</ul> -->
<!-- 	</div> -->
	<!--close-top-Header-menu-->
	<!--start-top-serch-->
	<div id="search">
		<input type="text" placeholder="Search here..." />
		<button type="submit" class="tip-bottom" title="Search">
			<i class="icon-search icon-white"></i>
		</button>
	</div>
	<!--close-top-serch-->
	<!--sidebar-menu-->
	<div id="sidebar">
		<a href="#" class="visible-phone"><i class="icon icon-home"></i>
			Dashboard</a>
		<ul>
			<li class="active"><a href="index.jsp"><i class="icon icon-home"></i> <span>Dashboard</span></a></li>
			<li><a href="paginas/charts.jsp"><i class="icon icon-signal"></i><span>Gráficos</span></a></li>
			<li><a href="paginas/document.jsp"><i class="icon icon-inbox"></i> <span>Documentação</span></a></li>
<!-- 			<li><a href="tables.html"><i class="icon icon-th"></i> <span>Tables</span></a></li> -->
<!-- 			<li><a href="grid.html"><i class="icon icon-fullscreen"></i> -->
<!-- 					<span>Full width</span></a></li> -->
<!-- 			<li class="submenu"><a href="#"><i class="icon icon-th-list"></i> -->
<!-- 					<span>Forms</span> <span class="label label-important">3</span></a> -->
<!-- 				<ul> -->
<!-- 					<li><a href="form-common.html">Basic Form</a></li> -->
<!-- 					<li><a href="form-validation.html">Form with Validation</a></li> -->
<!-- 					<li><a href="form-wizard.html">Form with Wizard</a></li> -->
<!-- 				</ul></li> -->
<!-- 			<li><a href="buttons.html"><i class="icon icon-tint"></i> <span>Buttons -->
<!-- 						&amp; icons</span></a></li> -->
<!-- 			<li><a href="interface.html"><i class="icon icon-pencil"></i> -->
<!-- 					<span>Eelements</span></a></li> -->
<!-- 			<li class="submenu"><a href="#"><i class="icon icon-file"></i> -->
<!-- 					<span>Addons</span> <span class="label label-important">5</span></a> -->
<!-- 				<ul> -->
<!-- 					<li><a href="index2.html">Dashboard2</a></li> -->
<!-- 					<li><a href="gallery.html">Gallery</a></li> -->
<!-- 					<li><a href="calendar.html">Calendar</a></li> -->
<!-- 					<li><a href="invoice.html">Invoice</a></li> -->
<!-- 					<li><a href="chat.html">Chat option</a></li> -->
<!-- 				</ul></li> -->
<!-- 			<li class="submenu"><a href="#"><i -->
<!-- 					class="icon icon-info-sign"></i> <span>Error</span> <span -->
<!-- 					class="label label-important">4</span></a> -->
<!-- 				<ul> -->
<!-- 					<li><a href="error403.html">Error 403</a></li> -->
<!-- 					<li><a href="error404.html">Error 404</a></li> -->
<!-- 					<li><a href="error405.html">Error 405</a></li> -->
<!-- 					<li><a href="error500.html">Error 500</a></li> -->
<!-- 				</ul></li> -->
<!-- 			<li class="content"><span>Monthly Bandwidth Transfer</span> -->
<!-- 				<div -->
<!-- 					class="progress progress-mini progress-danger active progress-striped"> -->
<!-- 					<div style="width: 77%;" class="bar"></div> -->
<!-- 				</div> <span class="percent">77%</span> -->
<!-- 				<div class="stat">21419.94 / 14000 MB</div></li> -->
<!-- 			<li class="content"><span>Disk Space Usage</span> -->
<!-- 				<div class="progress progress-mini active progress-striped"> -->
<!-- 					<div style="width: 87%;" class="bar"></div> -->
<!-- 				</div> <span class="percent">87%</span> -->
<!-- 				<div class="stat">604.44 / 4000 MB</div></li> -->
<!-- 		</ul> -->
	</div>
	<!--sidebar-menu-->

	<!--main-container-part-->
	<div id="content">
		<!--breadcrumbs-->
		<div id="content-header">
			<div id="breadcrumb">
				<a href="index.html" title="Go to Home" class="tip-bottom"><i
					class="icon-home"></i> Home</a>
			</div>
		</div>
		<!--End-breadcrumbs-->

		<!--Action boxes-->
		<div class="container-fluid">
			<div class="quick-actions_homepage">
				<ul class="quick-actions">
					<!-- <li class="bg_lb"><a href="index.html"> <i
							class="icon-dashboard"></i> <span class="label label-important">20</span>
							My Dashboard
					</a></li> -->
					<li class="bg_lg span3"><a href="paginas/charts.jsp"> <i class="icon-signal"></i> Gráficos	</a></li>
					<li class="bg_ly"><a href="paginas/document.jsp"> <i class="icon-inbox"></i>Documentação</a></li>
					  <!--<li class="bg_lo"><a href="tables.html"> <i
							class="icon-th"></i> Tables
					</a></li>
					<li class="bg_ls"><a href="grid.html"> <i
							class="icon-fullscreen"></i> Full width
					</a></li>
					<li class="bg_lo span3"><a href="form-common.html"> <i
							class="icon-th-list"></i> Forms
					</a></li>
					<li class="bg_ls"><a href="buttons.html"> <i
							class="icon-tint"></i> Buttons
					</a></li>
					<li class="bg_lb"><a href="interface.html"> <i
							class="icon-pencil"></i>Elements
					</a></li>
					<li class="bg_lg"><a href="calendar.html"> <i
							class="icon-calendar"></i> Calendar
					</a></li>
					<li class="bg_lr"><a href="error404.html"> <i
							class="icon-info-sign"></i> Error
					</a></li>-->

				</ul>
			</div>
			<!--End-Action boxes-->

			<!--Chart-box-->
			<div class="row-fluid">
				<div class="widget-box">
					<div class="widget-title bg_lg">
						<span class="icon"><i class="icon-signal"></i></span>
						<h5>Site Analytics</h5>
					</div>
					<div class="widget-content">
						<div class="row-fluid">
							<div class="span9">
								<div id="container" class="chart"></div>
							</div>
							<div class="span3">
								<ul class="site-stats">
									<li class="bg_lh"><i class="icon-globe"></i> <strong id="total_requisicoes"></strong>
										<small>Total de Requisições</small></li>
									<li class="bg_lh"><i class="icon-ok"></i> <strong id="requisicoes_ok"></strong>
										<small>Requisições Ok</small></li>
									<li class="bg_lh"><i class="icon-remove"></i> <strong id="requisicoes_error"></strong>
										<small>Requisições com Erro</small></li>
<!-- 									<li class="bg_lh"><i class="icon-tag"></i> <strong>9540</strong> -->
<!-- 										<small>Total Orders</small></li> -->
<!-- 									<li class="bg_lh"><i class="icon-repeat"></i> <strong>10</strong> -->
<!-- 										<small>Pending Orders</small></li> -->
<!-- 									<li class="bg_lh"><i class="icon-globe"></i> <strong>8540</strong> -->
<!-- 										<small>Online Orders</small></li> -->
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--end-main-container-part-->

			<!--Footer-part-->

			<div class="row-fluid">
				<div id="footer" class="span12">
					2013 &copy; Matrix Admin. Brought to you by <a
						href="http://themedesigner.in">Themedesigner.in</a>
				</div>
			</div>

			<!--end-Footer-part-->

			<script type="text/javascript">
				// This function is called from the pop-up menus to transfer to
				// a different page. Ignore if the value returned is a null string:
				function goPage(newURL) {

					// if url is empty, skip the menu dividers and reset the menu selection to default
					if (newURL != "") {

						// if url is "-", it is this page -- reset the menu:
						if (newURL == "-") {
							resetMenu();
						}
						// else, send page to designated URL            
						else {
							document.location.href = newURL;
						}
					}
				}

				// resets the menu selection upon entry to this page:
				function resetMenu() {
					document.gomenu.selector.selectedIndex = 2;
				}
			</script>
</body>
</html>