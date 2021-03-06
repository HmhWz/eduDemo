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
            <h1 class="page-header">院系管理</h1>
        </div>
        <div class="panel-heading"></div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        院系信息
                    </div>
                    <div class="panel-body">
                        <div class="dataTables_wrapper">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <tr>
                                    <th>院系名称</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="department" items="${departmentList}">
                                    <tr>
                                        <td>${department.departmentName}</td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/dept.do/delete?id=${department.id}">delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <a href="${pageContext.request.contextPath}/dept.do/dept_add.view" class="btn btn-primary">添加院系</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



</div>
<jsp:include page="../bottom.jsp"></jsp:include>
