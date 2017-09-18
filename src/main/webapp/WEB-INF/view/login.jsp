<%--
  Created by IntelliJ IDEA.
  User: hmh
  Date: 17-9-16
  Time: 下午9:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />

    <title>登录</title>
    <!--bootstrap css-->
    <link href="${pageContext.request.contextPath}/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!--metismenu css-->
    <link href="${pageContext.request.contextPath}/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet" />
    <!--font-awesome css-->
    <link href="${pageContext.request.contextPath}/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
</head>
<body>
<div class="container">
    <div class="col-md-8 col-md-offset-2">
        <div class="login-panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">请登录</h3>
            </div>
            <div class="panel-body">
                <form role="form" action="${pageContext.request.contextPath}/login" method="post">
                    <fieldset>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="账户" name="username" autofocus />
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="密码" name="password" />
                        </div>
                        <div class="checkbox">
                            <label>
                                <input name="remember" type="checkbox" value="RememberMe" />记住我
                            </label>
                        </div>

                        <input type="submit" value="登录" class="btn btn-primary form-control">
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/bower_components/jquery/dist/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/metisMenu/dist/metisMenu.min.js"></script>

</body>
</html>
