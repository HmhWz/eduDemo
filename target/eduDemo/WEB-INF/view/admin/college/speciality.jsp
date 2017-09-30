<%--
  Created by IntelliJ IDEA.
  User: hmh
  Date: 17-9-28
  Time: 下午7:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../nav.jsp"></jsp:include>

<div id="page-wrapper">
    <div class="container-fluid">
        <div>
            <h1 class="page-header">专业管理</h1>
        </div>
        <div class="panel-heading"></div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        专业信息
                    </div>
                    <div class="panel-body">
                        <div class="dataTables_wrapper">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <tr>
                                    <th>所属院系</th>
                                    <th>专业名称</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="spec" items="${specList}">
                                    <tr>
                                        <td>${spec.deptName}</td>
                                        <td>${spec.specialityName}</td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/spec.do/delete?id=${spec.id}">delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <a href="${pageContext.request.contextPath}/spec.do/spec_add.view" class="btn btn-primary">添加专业</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



</div>
<jsp:include page="../bottom.jsp"></jsp:include>
