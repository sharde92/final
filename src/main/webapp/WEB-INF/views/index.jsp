<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     <meta charset="UTF-8">
     <title>Hotels Home</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
</head>
<body>
<div class="container">
<h1>Welcome to the Student Directory!</h1>
<h2>Do you know exactly which student you are searching for?</h2>
<form action="/name" method="post">
<div>
<label>Name:<input type="text" maxlength="50" minlength="2" name="name" required></label>
</div>
<button class="btn btn-outline-secondary" type="submit">Find Student</button>
</form>
<h2>Would you like to search by major?</h2>
<form action="/major" method="post">
<div class="input-group">
  <select name="major" class="custom-select" id="inputGroupSelect04" required>
    <option selected>Choose...</option>
    <option value="Neuroscience">Neuroscience</option>
    <option value="Philosophy">Philosophy</option>
    <option value="Physics">Physics</option>
  </select>
  <div class="input-group-append">
    <button class="btn btn-outline-secondary" type="submit">Find Students</button>
  </div>
</div>
</form>
</div>
</body>
</html>