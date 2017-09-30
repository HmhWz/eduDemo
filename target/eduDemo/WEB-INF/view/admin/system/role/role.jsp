<%--
  Created by IntelliJ IDEA.
  User: hmh
  Date: 17-9-28
  Time: 下午6:26
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
                        role管理
                    </div>
                    <div class="panel-body">
                        <div class="dataTables_wrapper">
                            <table class="table table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <tr>
                                    <th>角色名</th>
                                    <th>角色id</th>
                                    <th>描述</th>
                                    <th>是否可用</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="role" items="${roleList}">
                                    <tr>
                                        <td>${role.rolename}</td>
                                        <td>${role.id}</td>
                                        <td>${role.description}</td>
                                        <td>${role.available}</td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/role.do/delete?id=${role.id}"
                                               onclick="return confirm('确认删除该角色?')">delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <a href="${pageContext.request.contextPath}/role.do/role_add.view" class="btn btn-primary">
                                添加角色
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
