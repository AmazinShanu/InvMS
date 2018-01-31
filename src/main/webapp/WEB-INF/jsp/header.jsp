<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>

<html class="no-js" lang="en">
<%
String id = request.getParameter("id");

%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Lory Deck</title>
    <link rel="icon" type="image/ico" href="../assets/images/favicon.ico"/>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"  href="<c:url value="/assets/js/vendor/bootstrap/bootstrap.min.css"/>">
    <link rel="stylesheet"  href="<c:url value="/assets/css/vendor/animsition.min.css"/>">
    <link rel="stylesheet"  href="<c:url value="/assets/css/jquery-ui.theme.css"/>">
    <link rel="stylesheet"  href="<c:url value="/assets/css/jquery-ui.theme.css"/>">
    <link rel="stylesheet"  href="<c:url value="/assets/css/datatable1.css"/>">
    <link rel="stylesheet"  href="<c:url value="assets/css/datatable2.css"/>">
    <link rel="stylesheet"  href="<c:url value="assets/js/vendor/sweetalert/sweetalert2.css"/>">
    <link rel="stylesheet"  href="<c:url value="assets/js/vendor/touchspin/jquery.bootstrap-touchspin.min.css"/>">
    <link rel="stylesheet"  href="<c:url value="assets/css/main.css"/>">
    
    	
    
    
    <style>
    
    
    
    
        .loadingDiv {
            position: absolute;
            top: 0px;
            right: 0px;
            width: 100%;
            height: 100%;
            background-color: #666;
            background-image: url('../assets/images/loader2.gif');
            background-repeat: no-repeat;
            background-position: center;
            z-index: 10000000;
            opacity: 0.4;
            filter: alpha(opacity=40); /* For IE8 and earlier */
        }
    </style>
</head>
<body id="falcon" class="main_Wrapper">
<!--  Application Content -->
<div id="wrap" class="animsition">
    <!-- HEADER Content -->
    <div id="header">
        <header class="clearfix">
            <!-- Branding -->
            <div class="branding">
                <a class="brand" href="">
                    <span>Lory Deck</span>
                </a>
                <a role="button" tabindex="0" class="offcanvas-toggle visible-xs-inline">
                    <i class="fa fa-bars"></i>
                </a>
            </div>
            <!-- Branding end -->

            <!-- Left-side navigation -->
            <ul class="nav-left pull-left list-unstyled list-inline">
                <li class="leftmenu-collapse">
                    <a role="button" tabindex="0" class="collapse-leftmenu">
                        <i class="fa fa-outdent"></i>
                    </a>
                </li>

            </ul>
            <!-- Left-side navigation end -->
            <!-- Search end -->
            <ul class="nav-right pull-right list-inline">


                <li class="dropdown nav-profile open" id="clk">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        <img src="assets/images/userl.png" alt="" class="0 size-30x30"> </a>
                    <ul class="dropdown-menu pull-right" role="menu">
                        <li>
                            <div class="user-info">
                                <div class="user-name">Welcome</div>
                                <div class="user-position online" id="who"><%=id%></div>
                            </div>
                        </li>

                        <li>
                            <a role="button" tabindex="0" id="changePass" data-toggle="modal" data-target="#myModal3">

                                <i class="fa fa-eye"></i>Change Password</a>
                        </li>

                        <li class="divider"></li>

                        <li>
                            <a href="login" role="button" tabindex="0" id="lgout">
                                <i class="fa fa-sign-out"></i>Logout</a>
                        </li>
                    </ul>
                </li>
                <li class="toggle-right-leftmenu">
                    <a role="button" tabindex="0">
                        <i class="fa fa-align-left"></i>
                    </a>
                </li>
            </ul>
            <!-- Right-side navigation -->
            <!-- Right-side navigation end -->
        </header>
    </div>
    <!--/ HEADER Content  -->
    <!--  CONTROLS Content -->
    <div id="controls">
        <!--SIDEBAR Content -->
        <aside id="leftmenu">
            <div id="leftmenu-wrap">
                <div class="panel-group slim-scroll" role="tablist">
                    <div class="panel panel-default">
                        <div id="leftmenuNav" class="panel-collapse collapse in" role="tabpanel">
                            <div class="panel-body">
                                <!--  NAVIGATION Content -->
                                <ul id="navigation">
                                    <li class="BigMUser" id="mainUser">
                                        <a role="button" tabindex="0">
                                            <i class="fa fa-user"></i>
                                            <span>User</span>
                                        </a>
                                        <ul>
                                            <li class="SmallUser" id="innerUser">
                                                <a href="launch_user?id=<%=id%>" id="RegisterUserPage">
                                                    <i class="fa fa-angle-right"></i>User Registration</a>
                                            </li>
                                            <li class="SmallUser" id="innerUserList">
                                                <a href="User?id=<%=id%>" id="UserList">
                                                    <i class="fa fa-angle-right"></i>User List</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="BigMUser" id="mainVehicle">
                                        <a role="button" tabindex="0">
                                            <i class="fa fa-user"></i>
                                            <span>Vehicle</span>
                                        </a>
                                        <ul>
                                            <li class="SmallUser" id="innervehicle">
                                                <a href="RegisterVehicle?id=<%=id%>" id="RegisterVehiclePage">
                                                    <i class="fa fa-angle-right"></i>Vehicle Registration</a>
                                            </li>
                                            <li class="SmallUser" id="innerVehicleList">
                                                <a href="Vehicle?id=<%=id%>" id="VehicleList">
                                                    <i class="fa fa-angle-right"></i>Vehicle List</a>
                                            </li>
                                        </ul>
                                    </li>
                                    
                                    
                                    
                                    <li class="BigMUser" id="mainPlant">
                                        <a role="button" tabindex="0">
                                            <i class="fa fa-user"></i>
                                            <span>Plant</span>
                                        </a>
                                        <ul>
                                            <li class="Smallplant" id="innerplant">
                                                <a href="RegisterPlant?id=<%=id%>" id="RegisterPlantPage">
                                                    <i class="fa fa-angle-right"></i>Plant Registration</a>
                                            </li>
                                            <li class="Smallplant" id="innerRegisterPlantist">
                                                <a href="Plant?id=<%=id%>" id="VehicleList">
                                                    <i class="fa fa-angle-right"></i>Plant List</a>
                                            </li>
                                        </ul>
                                    </li>
                                    
                                    
                                     <li class="BigMUser" id="mainTransport">
                                        <a role="button" tabindex="0">
                                            <i class="fa fa-user"></i>
                                            <span>Transport</span>
                                        </a>
                                        <ul>
                                            <li class="Smallplant" id="innerTransport">
                                                <a href="RegisterTransport?id=<%=id%>" id="RegisterTransportPage">
                                                    <i class="fa fa-angle-right"></i>Transport Registration</a>
                                            </li>
                                            <li class="SmallTransport" id="innerRegisterTransportList">
                                                <a href="Transport?id=<%=id%>" id="VehicleList">
                                                    <i class="fa fa-angle-right"></i>Transport List</a>
                                            </li>
                                        </ul>
                                    </li>
                                    
                                </ul>
                                <!--/ NAVIGATION Content -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </aside>
        <!--/ SIDEBAR Content -->
        <!--RIGHTBAR Content -->
        <aside id="rightmenu">
            <div role="tabpanel">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active">
                        <a href="#chat" aria-controls="chat" role="tab" data-toggle="tab">Chat</a>
                    </li>
                    <li role="presentation">
                        <a href="#todo" aria-controls="todo" role="tab" data-toggle="tab">Todo</a>
                    </li>
                    <li role="presentation">
                        <a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Settings</a>
                    </li>
                </ul>
                <!-- Tab panes -->
            </div>
        </aside>
        <!--/ RIGHTBAR Content -->
    </div>
    </div>
    <!--/ CONTROLS Content -->
    <!-- CONTENT -->