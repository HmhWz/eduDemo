<%--
  Created by IntelliJ IDEA.
  User: hmh
  Date: 17-9-27
  Time: 下午1:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../nav.jsp"></jsp:include>

<div id="page-wrapper">
    <div class="container-fluid">
        <div>
            <h1 class="page-header">添加用户</h1>
        </div>
        <div class="panel-heading">
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        用户信息
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="dataTable_wrapper">
                            <form action="${pageContext.request.contextPath}/user.do/add" method="post">
                                <label>用户名</label>
                                <input class="form-control" name="username">
                                <label>密码</label>
                                <input class="form-control" name="password">
                                <label>角色列表(按住shift键多选)</label>
                                <select multiple="true" class="form-control" name="roleIds">
                                    <c:forEach var="role" items="${roleList}">
                                        <option value="${role.id}">${role.description}</option>
                                    </c:forEach>
                                </select>

                                <label></label>
                                <button type="submit"
                                        class="btn btn-primary form-control">添加
                                </button>
                            </form>
                        </div>
                        <!-- /.table-responsive -->
                    </div>
                    <!-- /.panel-body -->
                </div>
            </div>
        </div>
    </div>

</div>

</div>
<jsp:include page="../../bottom.jsp"></jsp:include>
