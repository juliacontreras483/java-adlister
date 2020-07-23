<%--
  Created by IntelliJ IDEA.
  User: julia
  Date: 7/17/20
  Time: 10:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--</body>--%>
<%--</html>--%>




<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="here is a list of ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="../partials/navbar.jsp" />
<div class="container">
    <h1>Here is this list!</h1>
</div>
</body>
</html>
