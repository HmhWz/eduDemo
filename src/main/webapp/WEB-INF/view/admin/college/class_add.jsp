<%--
  Created by IntelliJ IDEA.
  User: hmh
  Date: 17-9-28
  Time: 下午7:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../nav.jsp"></jsp:include>

<div id="page-wrapper">
    <div class="container-fluid">
        <div>
            <h1 class="page-header">班级管理</h1>
        </div>
        <div class="panel-heading"></div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        班级信息
                    </div>
                    <div class="panel-body">
                        <div class="dataTables_wrapper">
                            <form action="add" method="post">
                                <label>选择院系</label>
                                <select id="deptName" class="form-control">
                                    <option>请选择0_0</option>
                                    <c:forEach var="dept" items="${deptList}">
                                        <option value="${dept.departmentName}">${dept.departmentName}</option>
                                    </c:forEach>
                                </select>
                                <label>选择专业</label>
                                <select id="specName" class="form-control" name="specName">
                                    <option>请选择^-^</option>
                                </select>
                                <label>班级名称</label>
                                <input type="text" class="form-control" name="clazzName" />
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






















