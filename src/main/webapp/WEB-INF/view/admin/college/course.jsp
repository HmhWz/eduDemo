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
            <h1 class="page-header">课程管理</h1>
        </div>
        <div class="panel-heading"></div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        课程信息
                    </div>
                    <div class="panel-body">
                        <div class="dataTables_wrapper">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <tr>
                                    <th>课程名称</th>
                                    <th>所属专业</th>
                                    <th>类型</th>
                                    <th>学分</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${courseList}" var="course">
                                    <tr>
                                        <td>${course.courseName}</td>
                                        <td>${course.specName}</td>
                                        <td>${course.type}</td>
                                        <td>${course.credits}</td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/course.do/delete?id=${course.id}"
                                            onclick="return confirm('确认删除？')">delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <a href="${pageContext.request.contextPath}/course.do/course_add.view" class="btn btn-primary">添加课程</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



</div>
<jsp:include page="../bottom.jsp"></jsp:include>
