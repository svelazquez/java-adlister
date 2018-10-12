<%--JSP Directives: set conditions for the entire JSP file--%>

<%--TAGLIB DIRECTIVE: import custom tags--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--PAGE IMPORT: import class and libraries. think import in java--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--INCLUDE DIRECTIVE: Include other files/jsps. Used for templating--%>
<%--pretend there's an include directive here...--%>

<html>
<head>
    <title><%= "some title" %></title>
</head>
<body>
    <h1>Welcome to my site, brahh</h1>


    <%-- "<%=" evaluates expression, prints result--%>
    <p>Path: <%= request.getRequestURL()%></p>
    <p>Query String: <%= request.getQueryString()%></p>
    <p>"name" parameter: <%= request.getParameter("name")%></p>
    <p>User-Agent header: <%= request.getHeader("user-agent")%></p>


    <%--Expression Langauge is just syntax. --%>

    <%--set attribute--%>
    <% request.setAttribute("message", "Hello, Kiki!");%>
    <%--display message with EL--%>
    <h1> Here's your message: ${message}</h1>

    <c:if test="true">
        <h1>Variable names should be very descriptive</h1>
    </c:if>
    <c:if test="false">
        <h1>single letter variable names are good</h1>
    </c:if>
</body>
</html>
