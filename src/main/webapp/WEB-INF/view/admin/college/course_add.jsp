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
            <h1 class="page-header">添加课程</h1>
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
                            <form action="add" method="post">
                                <label>课程名称</label>
                                <input type="text" name="courseName" class="form-control" required/>
                                <label>所属专业</label>
                                <select class="form-control" name="specName">
                                    <c:forEach items="${specList}" var="spec">
                                        <option value="${spec.specialityName}">${spec.specialityName}</option>
                                    </c:forEach>
                                </select>
                                <label>类型</label>
                                <select class="form-control" name="type">
                                    <option>必修课/学类核心</option>
                                    <option>必修课/学门核心</option>
                                    <option>选修课/通识课</option>
                                    <option>选修课/专业课</option>
                                </select>
                                <label>学分</label>
                                <input type="number" name="credits" class="form-control" min="0" max="10" required/>
                                <label></label>
                                <button type="submit" class="form-control btn btn-primary">submit</button>
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
