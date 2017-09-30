<%--
  Created by IntelliJ IDEA.
  User: hmh
  Date: 17-9-17
  Time: 下午3:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--加载各种所需js库-->
<script src="${pageContext.request.contextPath}/dist/js/main.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/jquery/dist/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/metisMenu/dist/metisMenu.min.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>

<%--<script>
    $(document).ready(function () {
        $('#dataTables-example').DataTable({
            responsive:true
        });
    });
</script>--%>

<script>
    $(function () {
        $('#dataTables-example').DataTable({
            responsive:true
        });

        //通过ajax请求返回数据
        $("#deptName").change(function () {
            let deptName = $("#deptName").val();
            $.ajax({
                type:"POST",
                url: "${pageContext.request.contextPath}/spec.do/specListByDeptName",
                dataType: "json",
                data: {deptName: deptName},
                success: function (data) {
                    if(data == "{}"){
                        alert("没有查询到数据");
                    } else {
                        $("#specName").html("");
                        $.each(data, function (i, item) {
                            let option = "<option value='" + item.specialityName +"'>" + item.specialityName + "</option>";
                            $("#specName").append(option);
                        })
                    }
                },
                error: function () {
                    alert("ajax执行不成功");
                }
            })
        })
    })
</script>

</body>
</html>
