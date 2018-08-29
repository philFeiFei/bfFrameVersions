<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>Flatty - Flat administration template</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport' />
    
    <!--[if lt IE 9]>
    <script src='assets/javascripts/html5shiv.js' type='text/javascript'></script>
    <![endif]-->
    <link href='assets/stylesheets/bfCss/bootstrap.css' media='all' rel='stylesheet' type='text/css' />
 <!--    <link href='assets/stylesheets/bootstrap/bootstrap.css' media='all' rel='stylesheet' type='text/css' /> -->
  
  
  <!-- / jquery ui -->
    <link href='assets/stylesheets/jquery_ui/jquery-ui-1.10.0.custom.css' media='all' rel='stylesheet' type='text/css' />
    <link href='assets/stylesheets/jquery_ui/jquery.ui.1.10.0.ie.css' media='all' rel='stylesheet' type='text/css' />
  
  
    <link href='assets/stylesheets/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.min.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / daterange picker) -->
    <link href='assets/stylesheets/plugins/bootstrap_daterangepicker/bootstrap-daterangepicker.css' media='all' rel='stylesheet' type='text/css' />
   
    <link href='assets/stylesheets/dataTables.bootstrap.css' media='all' rel='stylesheet' type='text/css' />
    
 <!-- / datatables -->
   <!--  <link href='assets/stylesheets/plugins/datatables/bootstrap-datatable.css' media='all' rel='stylesheet' type='text/css' /> -->
    
    <!-- / flatty theme -->
    <link href='assets/stylesheets/light-theme.css?version=22' id='color-settings-body-color' media='all' rel='stylesheet' type='text/css' />
    
    <style>
    /* .pagination > li:first-child > a, .pagination > li:first-child > span {
    margin-left: 0;
    border-top-left-radius: 4px;
    border-bottom-left-radius: 4px;
}


.pagination > .disabled > span, .pagination > .disabled > span:hover, .pagination > .disabled > span:focus, .pagination > .disabled > a, .pagination > .disabled > a:hover, .pagination > .disabled > a:focus {
    color: #777;
    cursor: not-allowed;
    background-color: #fff;
    border-color: #ddd;
}


.pagination > li > a, .pagination > li > span {
    position: relative;
    float: left;
    padding: 6px 12px;
    margin-left: -1px;
    line-height: 1.42857143;
    color: #337ab7;
    text-decoration: none;
    background-color: #fff;
    border: 1px solid #ddd;
}
     */
     a, a:hover, .btn-link, .btn-link:hover {
    text-decoration: none;
}
     .navbar .brand {
    display: block;
    float: left;
    padding: 6px 20px 10px;
    margin-left: -20px;
    font-size: 20px;
    font-weight: 200;
    color: #777777;
    text-shadow: 0 1px 0 #ffffff;
}
    .navbar .btn, .navbar .btn-group {
    margin-top: 5px;
}
.navbar .nav.pull-right {
    float: right;
    margin-right: 0;
}
.navbar .nav {
    position: relative;
    left: 0;
    display: block;
    float: left;
    margin: 0 10px 0 0;
}
.navbar .nav > li {
    float: left;
}
    header .navbar .navbar-inner .user-menu img {
    width: 26px;
    height: 26px;
}
.navbar-search .search-query {
    padding: 4px 14px;
    margin-bottom: 0;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 13px;
    font-weight: normal;
    line-height: 1;
    -webkit-border-radius: 15px;
    -moz-border-radius: 15px;
    border-radius: 15px;
}
.btn {
    display: inline-block;
    padding: 4px 12px;
    margin-bottom: 0;
    font-size: 14px;
    line-height: 20px;
    text-align: center;
    vertical-align: middle;
    cursor: pointer;
    background-repeat: repeat-x;
    border: 1px solid #cccccc;
    box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
}
button.btn.btn-link.icon-search {
    position: absolute;
    top: 2px !important;
    border: 1px solid #F88F8D;
}
.row {
    height: 50px;
}
table#example {
    clear: none;
}
    </style>
    
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body class='contrast-red '>
<header>
    <div class='navbar'>
        <div class='navbar-inner'>
            <div class='container-fluid'>
                <a class='brand' href='index.html'>
                    <i class='icon-heart-empty'></i>
                    <span class='hidden-phone'>Flatty</span>
                </a>
                <a class='toggle-nav btn pull-left' href='#'>
                    <i class='icon-reorder'></i>
                </a>
                <ul class='nav pull-right'>
                    <li class='dropdown light only-icon'>
                        <a class='dropdown-toggle' data-toggle='dropdown' href='#'>
                            <i class='icon-adjust'></i>
                        </a>
                        <ul class='dropdown-menu color-settings'>
                            <li class='color-settings-body-color'>
                                <div class='color-title'>Body color</div>
                                <a data-change-to='assets/stylesheets/light-theme.css' href='#'>
                                    Light
                                    <small>(default)</small>
                                </a>
                                <a data-change-to='assets/stylesheets/dark-theme.css' href='#'>
                                    Dark
                                </a>
                                <a data-change-to='assets/stylesheets/dark-blue-theme.css' href='#'>
                                    Dark blue
                                </a>
                            </li>
                            <li class='divider'></li>
                            <li class='color-settings-contrast-color'>
                                <div class='color-title'>Contrast color</div>
                                <a href="#" data-change-to="contrast-red"><i class='icon-adjust text-red'></i>
                                    Red
                                    <small>(default)</small>
                                </a>
                                <a href="#" data-change-to="contrast-blue"><i class='icon-adjust text-blue'></i>
                                    Blue
                                </a>
                                <a href="#" data-change-to="contrast-orange"><i class='icon-adjust text-orange'></i>
                                    Orange
                                </a>
                                <a href="#" data-change-to="contrast-purple"><i class='icon-adjust text-purple'></i>
                                    Purple
                                </a>
                                <a href="#" data-change-to="contrast-green"><i class='icon-adjust text-green'></i>
                                    Green
                                </a>
                                <a href="#" data-change-to="contrast-muted"><i class='icon-adjust text-muted'></i>
                                    Muted
                                </a>
                                <a href="#" data-change-to="contrast-fb"><i class='icon-adjust text-fb'></i>
                                    Facebook
                                </a>
                                <a href="#" data-change-to="contrast-dark"><i class='icon-adjust text-dark'></i>
                                    Dark
                                </a>
                                <a href="#" data-change-to="contrast-pink"><i class='icon-adjust text-pink'></i>
                                    Pink
                                </a>
                                <a href="#" data-change-to="contrast-grass-green"><i class='icon-adjust text-grass-green'></i>
                                    Grass green
                                </a>
                                <a href="#" data-change-to="contrast-sea-blue"><i class='icon-adjust text-sea-blue'></i>
                                    Sea blue
                                </a>
                                <a href="#" data-change-to="contrast-banana"><i class='icon-adjust text-banana'></i>
                                    Banana
                                </a>
                                <a href="#" data-change-to="contrast-dark-orange"><i class='icon-adjust text-dark-orange'></i>
                                    Dark orange
                                </a>
                                <a href="#" data-change-to="contrast-brown"><i class='icon-adjust text-brown'></i>
                                    Brown
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class='dropdown medium only-icon widget'>
                        <a class='dropdown-toggle' data-toggle='dropdown' href='#'>
                            <i class='icon-rss'></i>
                            <div class='label'>5</div>
                        </a>
                        <ul class='dropdown-menu'>
                            <li>
                                <a href='#'>
                                    <div class='widget-body'>
                                        <div class='pull-left icon'>
                                            <i class='icon-user text-success'></i>
                                        </div>
                                        <div class='pull-left text'>
                                            John Doe signed up
                                            <small class='muted'>just now</small>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class='divider'></li>
                            <li>
                                <a href='#'>
                                    <div class='widget-body'>
                                        <div class='pull-left icon'>
                                            <i class='icon-inbox text-error'></i>
                                        </div>
                                        <div class='pull-left text'>
                                            New Order #002
                                            <small class='muted'>3 minutes ago</small>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class='divider'></li>
                            <li>
                                <a href='#'>
                                    <div class='widget-body'>
                                        <div class='pull-left icon'>
                                            <i class='icon-comment text-warning'></i>
                                        </div>
                                        <div class='pull-left text'>
                                            America Leannon commented Flatty with veeery long text.
                                            <small class='muted'>1 hour ago</small>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class='divider'></li>
                            <li>
                                <a href='#'>
                                    <div class='widget-body'>
                                        <div class='pull-left icon'>
                                            <i class='icon-user text-success'></i>
                                        </div>
                                        <div class='pull-left text'>
                                            Jane Doe signed up
                                            <small class='muted'>last week</small>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class='divider'></li>
                            <li>
                                <a href='#'>
                                    <div class='widget-body'>
                                        <div class='pull-left icon'>
                                            <i class='icon-inbox text-error'></i>
                                        </div>
                                        <div class='pull-left text'>
                                            New Order #001
                                            <small class='muted'>1 year ago</small>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class='widget-footer'>
                                <a href='#'>All notifications</a>
                            </li>
                        </ul>
                    </li>
                    <li class='dropdown dark user-menu'>
                        <a class='dropdown-toggle' data-toggle='dropdown' href='#'>
                            <img alt='Mila Kunis' height='23' src='assets/images/avatar.jpg' width='23' />
                            <span class='user-name hidden-phone'>Mila Kunis</span>
                            <b class='caret'></b>
                        </a>
                        <ul class='dropdown-menu'>
                            <li>
                                <a href='user_profile.html'>
                                    <i class='icon-user'></i>
                                    Profile
                                </a>
                            </li>
                            <li>
                                <a href='user_profile.html'>
                                    <i class='icon-cog'></i>
                                    Settings
                                </a>
                            </li>
                            <li class='divider'></li>
                            <li>
                                <a href='sign_in.html'>
                                    <i class='icon-signout'></i>
                                    Sign out
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <form accept-charset="UTF-8" action="search_results.html" class="navbar-search pull-right hidden-phone" method="get" /><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
                    <button class="btn btn-link icon-search" name="button" type="submit"></button>
                    <input autocomplete="off" class="search-query span2" id="q_header" name="q" placeholder="Search..." type="text" value="" />
                </form>
            </div>
        </div>
    </div>
</header>
<div id='wrapper'>
<div id='main-nav-bg'></div>
<nav class='' id='main-nav'>
<div class='navigation'>
<div class='search'>
    <form accept-charset="UTF-8" action="search_results.html" method="get" /><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
        <div class='search-wrapper'>
            <input autocomplete="off" class="search-query" id="q" name="q" placeholder="Search..." type="text" value="" />
            <button class="btn btn-link icon-search" name="button" type="submit"></button>
        </div>
    </form>
</div>
<ul class='nav nav-stacked'>
<li class=''>
    <a href='index.html'>
        <i class='icon-dashboard'></i>
        <span>Dashboard</span>
    </a>
</li>
<li class=''>
    <a class='dropdown-collapse' href='#'>
        <i class='icon-edit'></i>
        <span>Forms</span>
        <i class='icon-angle-down angle-down'></i>
    </a>
    <ul class='nav nav-stacked'>
        <li class=''>
            <a href='form_styles.html'>
                <i class='icon-caret-right'></i>
                <span>Form styles and features</span>
            </a>
        </li>
        <li class=''>
            <a href='form_components.html'>
                <i class='icon-caret-right'></i>
                <span>Form components</span>
            </a>
        </li>
        <li class=''>
            <a href='validations.html'>
                <i class='icon-caret-right'></i>
                <span>Validations</span>
            </a>
        </li>
        <li class=''>
            <a href='wizard.html'>
                <i class='icon-caret-right'></i>
                <span>Wizard</span>
            </a>
        </li>
    </ul>
</li>
<li>
    <a class='dropdown-collapse ' href='#'>
        <i class='icon-tint'></i>
        <span>UI Elements & Widgets</span>
        <i class='icon-angle-down angle-down'></i>
    </a>
    <ul class='nav nav-stacked'>
        <li class=''>
            <a href='ui_elements.html'>
                <i class='icon-caret-right'></i>
                <span>UI Elements</span>
            </a>
        </li>
        <li class=''>
            <a href='widgets.html'>
                <i class='icon-caret-right'></i>
                <span>Widgets</span>
            </a>
        </li>
    </ul>
</li>
<li class=''>
    <a href='buttons_and_icons.html'>
        <i class='icon-star'></i>
        <span>Buttons & Icons</span>
    </a>
</li>
<li>
    <a class='dropdown-collapse ' href='#'>
        <i class='icon-cogs'></i>
        <span>Components</span>
        <i class='icon-angle-down angle-down'></i>
    </a>
    <ul class='nav nav-stacked'>
        <li class=''>
            <a href='charts.html'>
                <i class='icon-bar-chart'></i>
                <span>Charts</span>
            </a>
        </li>
        <li class=''>
            <a href='address_book.html'>
                <i class='icon-envelope'></i>
                <span>Address book</span>
            </a>
        </li>
        <li class=''>
            <a href='chats.html'>
                <i class='icon-comments'></i>
                <span>Chats</span>
            </a>
        </li>
        <li class=''>
            <a href='inplace_editing.html'>
                <i class='icon-pencil'></i>
                <span>In-place editing</span>
            </a>
        </li>
        <li class=''>
            <a href='filetrees.html'>
                <i class='icon-list-ul'></i>
                <span>File trees</span>
            </a>
        </li>
        <li class=''>
            <a href='fileupload.html'>
                <i class='icon-file'></i>
                <span>Fileupload</span>
            </a>
        </li>
        <li class=''>
            <a href='todo.html'>
                <i class='icon-list-alt'></i>
                <span>Todo list</span>
            </a>
        </li>
        <li class=''>
            <a href='wysiwyg.html'>
                <i class='icon-paste'></i>
                <span>WYSIWYG</span>
            </a>
        </li>
    </ul>
</li>
<li class=''>
    <a href='tables.html'>
        <i class='icon-table'></i>
        <span>Tables</span>
    </a>
</li>
<li class='active'>
    <a href='jqueryDataTable.jsp'>
        <i class='icon-table'></i>
        <span>JqueryDataTable</span>
    </a>
</li>
<li class=''>
    <a href='grid.html'>
        <i class='icon-th'></i>
        <span>Grid</span>
    </a>
</li>
<li class=''>
    <a href='type.html'>
        <i class='icon-font'></i>
        <span>Typography</span>
    </a>
</li>
<li class=''>
    <a href='calendar.html'>
        <i class='icon-calendar'></i>
        <span>Calendar</span>
    </a>
</li>
<li>
    <a class='dropdown-collapse ' href='#'>
        <i class='icon-book'></i>
        <span>Example pages</span>
        <i class='icon-angle-down angle-down'></i>
    </a>
    <ul class='nav nav-stacked'>
        <li class=''>
            <a href='invoice.html'>
                <i class='icon-money'></i>
                <span>Invoice</span>
            </a>
        </li>
        <li class=''>
            <a href='gallery.html'>
                <i class='icon-picture'></i>
                <span>Gallery</span>
            </a>
        </li>
        <li class=''>
            <a href='timeline.html'>
                <i class='icon-time'></i>
                <span>Timeline</span>
            </a>
        </li>
        <li class=''>
            <a href='pricing_tables.html'>
                <i class='icon-table'></i>
                <span>Pricing tables</span>
            </a>
        </li>
        <li class=''>
            <a href='user_profile.html'>
                <i class='icon-user'></i>
                <span>User profile</span>
            </a>
        </li>
        <li class=''>
            <a href='err404.html'>
                <i class='icon-question-sign'></i>
                <span>404 Error</span>
            </a>
        </li>
        <li class=''>
            <a href='err500.html'>
                <i class='icon-cogs'></i>
                <span>500 Error</span>
            </a>
        </li>
        <li class=''>
            <a href='sign_in.html'>
                <i class='icon-signin'></i>
                <span>Sign in</span>
            </a>
        </li>
        <li class=''>
            <a href='faq.html'>
                <i class='icon-bullhorn'></i>
                <span>FAQ</span>
            </a>
        </li>
        <li class=''>
            <a href='orders.html'>
                <i class='icon-inbox'></i>
                <span>Orders</span>
            </a>
        </li>
        <li class=''>
            <a href='search_results.html'>
                <i class='icon-search'></i>
                <span>Search results</span>
            </a>
        </li>
        <li class=''>
            <a href='blank.html'>
                <i class='icon-circle-blank'></i>
                <span>Blank page</span>
            </a>
        </li>
    </ul>
</li>
<li>
    <a class='dropdown-collapse ' href='#'>
        <i class='icon-cog'></i>
        <span>Layouts</span>
        <i class='icon-angle-down angle-down'></i>
    </a>
    <ul class='nav nav-stacked'>
        <li class=''>
            <a href='closed_navigation.html'>
                <i class='icon-caret-right'></i>
                <span>Closed navigation</span>
            </a>
        </li>
        <li class=''>
            <a href='fixed_header.html'>
                <i class='icon-caret-right'></i>
                <span>Fixed header</span>
            </a>
        </li>
        <li class=''>
            <a href='fixed_navigation.html'>
                <i class='icon-caret-right'></i>
                <span>Fixed navigation</span>
            </a>
        </li>
        <li class=''>
            <a href='fixed_navigation_and_header.html'>
                <i class='icon-caret-right'></i>
                <span>Fixed navigation & header</span>
            </a>
        </li>
    </ul>
</li>
<li class=''>
    <a href='email_templates.html'>
        <i class='icon-mail-reply'></i>
        <span>Email templates</span>
    </a>
</li>
<li>
    <a class='dropdown-collapse' href='#'>
        <i class='icon-folder-open-alt'></i>
        <span>Four level dropdown</span>
        <i class='icon-angle-down angle-down'></i>
    </a>
    <ul class='nav nav-stacked'>
        <li>
            <a class='dropdown-collapse' href='#'>
                <i class='icon-caret-right'></i>
                <span>Second level</span>
                <i class='icon-angle-down angle-down'></i>
            </a>
            <ul class='nav nav-stacked'>
                <li>
                    <a class='dropdown-collapse' href='#'>
                        <i class='icon-caret-right'></i>
                        <span>Third level</span>
                        <i class='icon-angle-down angle-down'></i>
                    </a>
                    <ul class='nav nav-stacked'>
                        <li>
                            <a href='#'>
                                <i class='icon-caret-right'></i>
                                <span>Fourth level</span>
                            </a>
                        </li>
                        <li>
                            <a href='#'>
                                <i class='icon-caret-right'></i>
                                <span>Another fourth level</span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>
</li>
</ul>
</div>
</nav>
<section id='content'>
<div class='container-fluid'>
<div class='row-fluid' id='content-wrapper'>
<div class='span12'>



<div class='group-header'>
    <div class='row-fluid'>
        <div class='span6 offset3'>
            <div class='text-center'>
                <h2>Jquery Data table</h2>
                <small class='muted'>Jquery Data table can handle large data collections, sorting, filtering...</small>
            </div>
        </div>
    </div>
</div>

<!-- jquery data table start -->
<!-- Advanced Tables -->
								<form>
									displayName:<input type="text" id="displayName" class="">

									<input type="button" id="Query" value="Query"
										class="btn btn-success"> <input type="button" id="Add"
										value="Add" class="btn btn-primary">

								</form>
								<table id="example" class="table table-striped table-bordered">
									<thead>
										<tr>
											<th>associateId</th>
											<th>员工全名</th>
											<th>出生日期</th>
											<th>入职时间</th>
											<th>员工状态</th>
											<th>FirstName</th>
											<th>LastName</th>
											<th>操作</th>
										</tr>
									</thead>
								</table>



<!-- jquery data table End -->



</div>
</div>
</div>
</section>
</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					    <div class="modal-dialog">
					        <div class="modal-content">
					            <div class="modal-header">
					                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
					                        aria-hidden="true">&times;</span></button>
					                <h4 class="modal-title" id="myModalLabel">新增</h4>
					            </div>
					            <div class="modal-body">
					                <div class="form-group">
					                    <input type="text" class="form-control" id="associateId" placeholder="员工编号">
					                </div>
					                <div class="form-group">
					                    <input type="text" class="form-control" id="name" placeholder="员工全名">
					                </div>
					                <div class="form-group">
					                    <input type="text" class="form-control" id="birthDate" placeholder="出生日期"
					                           data-date-format="yyyy/mm/dd">
					                </div>
					                <div class="form-group">
					                    <input type="text" class="form-control" id="employmentDate" placeholder="入职日期"
					                           data-date-format="yyyy/mm/dd">
					                </div>
					                 <div class="form-group">
					                    <input type="text" class="form-control" id="firstName" placeholder="firstName">
					                </div>
					                 <div class="form-group">
					                    <input type="text" class="form-control" id="lastName" placeholder="lastName">
					                </div>
					            </div>
					            <div class="modal-footer">
					                <button type="button" class="btn btn-info" id="initData">添加模拟数据</button>
					                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					                <button type="button" class="btn btn-primary" id="save">保存</button>
					            </div>
					        </div>
					    </div>
					</div>
<!-- / jquery -->
<script src='assets/javascripts/jquery/jquery.min.js' type='text/javascript'></script>
<!-- / jquery mobile events (for touch and slide) -->
<script src='assets/javascripts/plugins/mobile_events/jquery.mobile-events.min.js' type='text/javascript'></script>
<!-- / bootstrap -->
<script src='assets/javascripts/bootstrap/bootstrap.min.js' type='text/javascript'></script>
<!-- / datatables -->
<script src='assets/javascripts/plugins/datatables/jquery.dataTables.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/datatables/jquery.dataTables.columnFilter.js' type='text/javascript'></script>
<!-- / datetime picker -->
<script src='assets/javascripts/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.js' type='text/javascript'></script>
<!-- / flatty theme -->
<script src='assets/javascripts/nav.js' type='text/javascript'></script>


	<script src="assets/javascripts/jquery.dataTables.min.js"></script>
	<script src="assets/javascripts/dataTables.bootstrap.js"></script>
	<script type="text/javascript"
		src="assets/javascripts/handlebars-v3.0.1.js"></script>
	
	<script id="tpl" type="text/x-handlebars-template">
    {{#each func}}
    <button type="button" class="btn btn-{{this.type}} btn-sm" onclick="{{this.fn}}">{{this.name}}</button>
    {{/each}}
</script>
	<script>
	var dataTable; 
	var editTable = false;
	var template;//这里才是公共变量。
	
	//这个方法中var 变量是局部变量。，其它function不能直接调用。
		$(function(){
			
			//加载时间下拉框控件
			$('#birthDate').datetimepicker();
			$('#employmentDate').datetimepicker();
			
		     //预编译模板
			 var tpl = $("#tpl").html();
		     template = Handlebars.compile(tpl);
		        
			//dataTable = initDatable();//这个也可以
			dataTable = initDatableByConfig();
			
			
			//绑定Query btn方法
			
			$("#Query").bind("click",function(){
				
				query();
				
			});
			
			
			//add 功能
			$("#Add").bind("click",function(){
                clear();
				$("#myModalLabel").text("新增");
				$("#associateId").val(associateId).css("display","none");
				$("#myModal").modal("show");
			});
			
			$("#initData").bind("click",function(){
				initSingleData();
			});
			$("#save").bind("click",function(){
				save();
			});
			
		})
		
		//进入编辑界面
		function edit(name,birthDate,employmentDate,firstName,lastName,associateId){
			editTable = true;
			$("#myModalLabel").text("修改");
			$("#associateId").val(associateId).css("display","");
	        $("#associateId").val(associateId).attr("disabled",true);
	        $("#name").val(name);
	        $("#birthDate").val(birthDate);
	        $("#employmentDate").val(employmentDate);
	        $("#firstName").val(firstName);
	        $("#lastName").val(lastName);
			
			$("#myModal").modal("show");
			
		}
		function deleteEmp(associateId){
			var url ="/bfFrame1/servlet/GetEmployeeInfo" ;
        	$.ajax({
	            url:url ,
	            data:{
	            	"associateId":associateId,
	            	"operate":"delete",
	            }, 
	            success: function (data) {
	                query();
	            }
        	});
		}
		function ajax(json) {
        	var url ="/bfFrame1/servlet/GetEmployeeInfo" ;
        	$.ajax({
	            url:url ,
	            data:json, 
	            success: function (data) {
	            	//dataTable.ajax.reload();
	                $("#myModal").modal("hide");
	                query();
	            }
        });
    }
		
		function clear(){
			editTable = false;
			$("#name").val("");
			$("#birthDate").val("");
			$("#employmentDate").val("");
			$("#firstName").val("");
			$("#lastName").val("");
		}
		function save(){
			var operate = "add"
			if(editTable == true){
				operate = "update";
			}
			var addJson = {
					"associateId": $("#associateId").val(),
					"name": $("#name").val(),
		            "birthDate": $("#birthDate").val(),
		            "employmentDate": $("#employmentDate").val(),
		            "firstName": $("#firstName").val(),
		            "lastName": $("#lastName").val(),
		            "operate":operate,
		        	};
	        	ajax(addJson);
		}
		function query(){
			dataTable.fnDestroy(false);
			//initDatable(); //这个也可以
			initDatableByConfig();//其实可以继续抽取分离，对于配置的重写，重写各个操作用的配置，然后初始化datatable根据重写 都配置。
			//dataTable.fnDraw(false);
		}
		
		//重写公共配置，针对具体的功能。
		//公共配置里面dataTablesSettings虽然没有ajax，columns,但是这里重写直接.ajax,是可以自动添加属性的。js的特点。
		function initDatableByConfig(){
			//可以设置整体的ajax option。
			$.dataTablesSettings.ajax={
					url:"/bfFrame1/servlet/GetEmployeeInfo",
			};
			//也可以单独设置ajax下的某一项，可以细分到最底层
			$.dataTablesSettings.ajax.data={
					operate:"query",
					displayName:$("#displayName").val()
			};
			$.dataTablesSettings.columns= [
			   			                {"data": "associateId"}, 
						                {"data": "displayName"},
						                {"data": "birthDate"},
						                {"data": "employmentDate"},
						                {"data": "personalStatus"},
						                {"data": "firstName"},
						                {"data": "lastName"},
						                {"data": null},
						            ];
			$.dataTablesSettings.columnDefs=[
							{
			                    "targets": 7,
			                    "render": function (a, b, c, d) {
			                        var context =
			                        {
			                            func: [
			                                {"name": "修改", "fn": "edit(\'" + c.displayName + "\',\'" + c.birthDate + "\',\'" + c.employmentDate + "\',\'" + c.firstName + "\',\'" + c.lastName + "\',\'" + c.associateId + "\')", "type": "primary"},
			                                {"name": "删除", "fn": "deleteEmp(\'" + c.associateId + "\')", "type": "danger"}
			                            ]
			                        };
			                        var html = template(context);
			                        return html;
			                    }
			                },
								{
								    "targets": 0,//第一列隐藏
								    "visible": false,
								    "searchable": false
								}                
			                                 
			                                 
			            ];
			
			var dataTable = $("#example").dataTable($.dataTablesSettings);
			return dataTable;
		}
		
		
		//设置一个公共datable配置，方便后期把整个系统datatable的公共选项配置加入到一块。讲下方对象放置到单独的公共js中即可。
		$.dataTablesSettings = {
				"searching": true,
		}
		
		
		 /**
	     * 初始化基础数据
	     */
	    function initSingleData() {
	        $("#name").val("张龙");
	        $("#birthDate").val("2016/7/10");
	        $("#employmentDate").val("2016/7/10");
	        $("#firstName").val("龙leo");
	        $("#lastName").val("张");
	    }
	</script>

</body>
</html>
