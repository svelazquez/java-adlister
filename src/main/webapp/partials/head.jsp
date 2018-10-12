<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${param.role == 'admin'}">
    <link rel="stylesheet" href="static/css/admin.css">
</c:if>