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
                            <form action="${pageContext.request.contextPath}/course_arrange.do/add" method="post">
                                <label>课程名称</label>
                                <select class="form-control" name="courseName">
                                    <c:forEach items="${courseList}" var="course">
                                        <option>${course.courseName}</option>
                                    </c:forEach>
                                </select>
                                <%--<input type="text" class="form-control" name="courseName" required />--%>
                                <label>授课老师</label>
                                <select class="form-control" name="teacherName">
                                    <c:forEach items="${teacherList}" var="teacher">
                                        <option>${teacher.teacherName}</option>
                                    </c:forEach>
                                </select>
                                <label>限选人数</label>
                                <input type="number" name="limitCount" class="form-control" max="200" min="0" required />
                                <label></label>
                                <button type="submit" class="form-control btn btn-primary">开设课程</button>
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