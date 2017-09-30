<%--
  Created by IntelliJ IDEA.
  User: hmh
  Date: 17-9-17
  Time: 下午2:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />

    <title>admin管理</title>
    <!--bootstrap css-->
    <link href="${pageContext.request.contextPath}/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!--datatables css-->
    <link href="${pageContext.request.contextPath}/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet" />
    <!--metismenu css-->
    <link href="${pageContext.request.contextPath}/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet" />
    <!--font-awesome css-->
    <link href="${pageContext.request.contextPath}/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!--main css-->
    <link href="${pageContext.request.contextPath}/dist/css/main.css" rel="stylesheet" />

</head>
<body>

<div id="wrapper">
    <!--Navigation-->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0;">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collage">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">教务管理系统</a>
        </div>

        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i>
                    <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li>
                        <a href="${pageContext.request.contextPath}/account/useredit">
                            <i class="fa fa-user fa-fw"></i>用户设置
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="${pageContext.request.contextPath}/logout">
                            <i class="fa fa-sign-out fa-fw"></i>退出
                        </a>
                    </li>
                </ul>
            </li>
        </ul>

        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="${pageContext.request.contextPath}/user.do/user.view">
                            <i class="fa fa-book fa-fw"></i>用户管理
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/role.do/role.view">
                            <i class="fa fa-book fa-fw"></i>角色管理
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            <i class="fa fa-wrench fa-fw"></i> 教务管理<span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="${pageContext.request.contextPath}/dept.do/dept.view">系部设置</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/spec.do/spec.view">专业设置</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/clazz.do/clazz.view">班级设置</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/course.do/course.view">课程设置</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/course_arrange.do/course_arrange.view">课程安排</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/student.do/student.view">学生管理</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/orderbook.do/orderbook_audit.view">秘书审核</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>