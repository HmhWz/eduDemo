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
<script src="${pageContext.request.contextPath}/bower_components/jquery/dist/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/metisMenu/dist/metisMenu.min.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>

<script>
    $(document).ready(function () {
        $('#dataTables-example').DataTable({
            responsive:true
        });
    });
</script>
</body>
</html>
