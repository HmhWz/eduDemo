<%--
  Created by IntelliJ IDEA.
  User: hmh
  Date: 17-9-20
  Time: 下午1:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="nav.jsp"></jsp:include>

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="panel-heading">
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        我的信息
                    </div>
                    <div class="panel-body">
                        <div class="dataTables_wrapper">
                            <table class="table table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <tr>
                                    <th>学号</th>
                                    <th>姓名</th>
                                    <th>性别</th>
                                    <th>年级</th>
                                    <th>院系</th>
                                    <th>班级</th>
                                    <th>出生地</th>
                                </tr>
                                </thead>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</div>
<jsp:include page="bottom.jsp"></jsp:include>
