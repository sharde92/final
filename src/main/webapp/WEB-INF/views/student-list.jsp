<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     <meta charset="UTF-8">
     <title>Hotels List</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
</head>
<body>
<div class="container">
<h1>Here are all students matching your search:</h1>
<table class="table table-hover">
<tr>
<thead>
<td>Student Name</td><td>Major</td>
</thead>
</tr>
<c:forEach var="student" items="${students }">
<tr>
<td>${student.name } </td>
<td>${student.major} </td>
</tr>
</c:forEach>
</table>
<button class="btn btn-secondary" type="button"><a href="/">Back to Search</a></button>
</div>
</body>
</html>