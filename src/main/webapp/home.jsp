<%--
  Created by IntelliJ IDEA.
  User: julia
  Date: 7/14/20
  Time: 2:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! int myNumber = 1; %>
<% request.setAttribute("number", myNumber); %>
<% request.setAttribute("title", "Home Page"); %>
<html>
<head>
    <title>${title}</title>
</head>
<body>
<h1>Welcome!</h1>
<h3>${number}</h3>
<%-- Include NavBar--%>
<%@ include file="partials/navbar.jsp"%>
<%--    <h1>Hello, <%= firstname + " " + lastname%> </h1>--%>
<h3>What would you like to do?</h3>

<h3>View Your Profile</h3>
<form action="user-profile.jsp" method="get">
    <input type="hidden" id="username" name="username" value="Julia">
    <input type="hidden" id="lastname" name="lastname" value="Contreras">
    <button type="submit">Go There</button>
</form>

<h3>Add a To Do</h3>
<form action="todo.jsp" method="post">
    <input type="text" id="item" name="item">
    <button type="submit">Add to List</button>
</form>
<%-- Include Footer--%>
<%@include file="partials/footer.jsp"%>

</body>
</html>

<%--Mini Exercise 1--%>
<%--- Create a file named home.jsp--%>
<%--- Create an instance variable that stores your 'firstname', and another that stores your 'lastname'--%>
<%--- In the body of the document, create an h1 greeting that says "Hello, <firstname> <lastname>"--%>
<%--    - Create a file named profile.jsp--%>

