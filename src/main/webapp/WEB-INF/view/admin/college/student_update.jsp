<%--
  Created by IntelliJ IDEA.
  User: hmh
  Date: 17-9-19
  Time: 下午1:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../nav.jsp"></jsp:include>

<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div>
            <h1 class="page-header">学生管理</h1>
        </div>
        <div class="panel-heading">
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        学生信息
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="dataTable_wrapper">
                            <form action="${pageContext.request.contextPath}/student.do/update" method="post"
                                  enctype="multipart/form-data">
                                <input type="hidden" name="id" value="${param.get("id")}"/>
                                <label>学号</label>
                                <input class="form-control" name="studentId" value="${studentId}" />
                                <label>姓名</label>
                                <input class="form-control" name="studentName" />
                                <label>性别</label>
                                <select class="form-control" name="gender" />
                                    <option>男</option>
                                    <option>女</option>
                                </select>
                                <label>年级</label>
                                <input class="form-control" name="grade" />
                                <label>院系</label>
                                <input class="form-control" name="department" />
                                <label>班级</label>
                                <input class="form-control" name="className" />
                                <label>生源地</label>
                                <input class="form-control" name="originbase" />
                                <label></label>
                                <button type="submit" class="btn btn-primary form-control">修改</button>
                            </form>
                        </div>
                        <!-- /.table-responsive -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>

    <!-- /.container-fluid -->
</div>
</div>

<jsp:include page="../bottom.jsp"></jsp:include>
