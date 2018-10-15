<%--
  Created by IntelliJ IDEA.
  User: svelazquez
  Date: 10/12/18
  Time: 10:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%--THIS FILE WILL SHOW A LISTING OF ALL THE ADS ON YOUR SITE--%>
<%--SHOULD BE AVAILABLE WHEN A USER VISITS /ads--%>
<%--SEE all METHOD ON ListAdsDao CLASS TO GET LISTING OF ALL ADS--%>
<%--LOOP THROUGH ALL ADS AND DISPLAY EACH ONE--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>Yes hello these are ads</h2>

    <%--this is where you actually display the ads dum dum--%>
    <%--why would you try to display things in a back end servlet duh--%>
    <c:forEach var="ad" items="${ads}">
        <h2>${ad.title}</h2>
        <p>Description: $ ${ad.description}</p>
    </c:forEach>


</body>
</html>
