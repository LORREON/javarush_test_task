<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%request.setCharacterEncoding("UTF-8");%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>

<head>
    <title>BookManager</title>
    <meta name="Pavlo Volosianskyi" content="SitePoint">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
          integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

</head>

<c:url var="index" value="/"/>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="${index}" style="color: #7FFFD4">Book Manager</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="../list">Список книг<span class="sr-only">(current)</span></a>
            </li>
        </ul>
    </div>
</nav>

<br>
<div class="container">
    <c:url var="addAction" value="/add/new"/>
    <form:form role="form" action="${addAction}" commandName="book" method="post">
        <div class="form-row">
            <div class="form-group col-md-1">
                <label for="id">ID</label>
                <form:input path="id" type="text" class="form-control" name="id" placeholder="ID" readonly="true"/>
            </div>
            <div class="form-group col-md-6">
                <label for="title">Назва книги</label>
                <form:input path="title" type="text" class="form-control" name="title" placeholder="Введіть назву книги"/>
            </div>
            <div class="form-group col-md-5">
                <label for="author">Автор</label>
                <form:input path="author" type="text" class="form-control" name="author" placeholder="Введіть автора книги" readonly="${readonly}"/>
            </div>
        </div>
        <div class="form-group">
            <label for="description">Опис книги</label>
            <form:textarea path="description" class="form-control" name="description"  id="description" rows="7"
                      placeholder="Опишіть книгу"></form:textarea>
        </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="isbn">ISBN</label>
                <form:input path="isbn" type="text" class="form-control" name="isbn" placeholder="Введіть ISBN"/>
            </div>
            <div class="form-group col-md-6">
                <label for="printYear">Рік випуску</label>
                <form:input path="printYear" type="text" class="form-control" name="yearPrint" placeholder="Введіть рік"/>
            </div>
        </div>
        <button type="submit" class="btn btn-success">Зберегти</button>
    </form:form>
    </div>


    <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>


    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7 /js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </body>

    </html>
