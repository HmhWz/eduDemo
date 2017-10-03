<%--
  Created by IntelliJ IDEA.
  User: hmh
  Date: 17-9-18
  Time: 下午1:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../nav.jsp"></jsp:include>

<div id="page-wrapper">
    <div class="container-fluid">

        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        输入学生信息
                    </div>
                    <div class="panel-body">
                        <div class="dataTables_wrapper">
                            <form action="${pageContext.request.contextPath}/student.do/add" method="post">
                                <label>学号</label>
                                <input class="form-control" name="studentId" autofocus/>
                                <label>密码</label>
                                <input class="form-control" name="password" />
                                <label>姓名</label>
                                <input class="form-control" name="studentName" />
                                <label>性别</label>
                                <select class="form-control" name="gender">
                                    <option>男</option>
                                    <option>女</option>
                                </select>
                                <label>年级</label>
                                <input class="form-control" name="grade"/>
                                <label>院系</label>
                                <select class="form-control" name="department">
                                    <c:forEach items="${deptList}" var="dept">
                                        <option>${dept.departmentName}</option>
                                    </c:forEach>
                                </select>
                                <label>班级</label>
                                <input class="form-control" name="className" />
                                <label>生源地</label>
                                <input class="form-control" name="originbase" />
                                <label></label>
                                <button type="submit" class="btn btn-primary form-control">提交</button>
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