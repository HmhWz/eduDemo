<%--
  Created by IntelliJ IDEA.
  User: hmh
  Date: 17-9-29
  Time: 下午10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../nav.jsp"></jsp:include>

<div id="page-wrapper">
    <div class="container-fluid">
        <div>
            <h1 class="page-header">课程安排</h1>
        </div>
        <div class="panel-heading">
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        已开设课程
                    </div>
                    <div class="panel-body">
                        <div class="dataTables_wrapper">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <tr>
                                    <th>课程名称</th>
                                    <th>授课老师</th>
                                    <th>限选人数</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${courseArrangedList}" var="courseArranged">
                                    <tr>
                                        <td>${courseArranged.courseName}</td>
                                        <td>${courseArranged.teacherName}</td>
                                        <td>${courseArranged.limitCount}</td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/course_arrange.do/delete?id=${courseArranged.id}">delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <a href="${pageContext.request.contextPath}/course_arrange.do/course_arrange_add.view" class="btn btn-primary">开设新课程</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</div>
<jsp:include page="../bottom.jsp"></jsp:include>