<%--
  Created by IntelliJ IDEA.
  User: svelazquez
  Date: 10/17/18
  Time: 3:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="partials/navbar.jsp"%>
<html>
<head>
    <%@include file="partials/head.jsp"%>
    <title>REGISTER HERE</title>
</head>
<body>
<form action="/register" method="POST">
    <div class="form-group">
        <label for="email">Email address</label>
        <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" placeholder="Enter email">
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input type="password" class="form-control" id="password" name="password" placeholder="Password">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>

</body>
</html>
