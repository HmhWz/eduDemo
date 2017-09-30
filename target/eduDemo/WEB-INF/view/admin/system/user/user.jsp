<%--
  Created by IntelliJ IDEA.
  User: hmh
  Date: 17-9-24
  Time: 下午1:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/view/admin/nav.jsp"></jsp:include>

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="panel-heading">
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        用户管理
                    </div>
                    <div class="panel-body">
                        <div class="dataTables_wrapper">
                            <table class="table table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <tr>
                                    <th>用户名</th>
                                    <th>密码</th>
                                    <th>角色</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="user" items="${userList}">
                                    <tr>
                                        <td>${user.username}</td>
                                        <td>${user.password}</td>
                                        <td>${user.roleIdsStr}</td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/user.do/delete?username=${user.username}"
                                            onclick="return confirm('确认删除该用户?')">delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <a href="${pageContext.request.contextPath}/user.do/user_add.view" class="btn btn-primary">
                                添加用户
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</div>
<jsp:include page="../../bottom.jsp"></jsp:include>
