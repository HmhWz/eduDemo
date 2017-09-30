<%--
  Created by IntelliJ IDEA.
  User: hmh
  Date: 17-9-28
  Time: 下午7:59
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
                            <form action="${pageContext.request.contextPath}/spec.do/add" method="post">
                                <label>专业名称</label>
                                <input type="text" class="form-control" name="specialityName" autofocus />
                                <label>所属院系</label>
                                <select name="deptName" class="form-control">
                                    <c:forEach var="dept" items="${deptList}">
                                        <option>${dept.departmentName}</option>
                                    </c:forEach>
                                </select>
                                <label></label>
                                <button type="submit" class="form-control btn btn-primary">添加</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



</div>
<jsp:include page="../bottom.jsp"></jsp:include>
