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



<div class="container">
    <br>
    <div class="alert alert-secondary" role="alert">
        <div class="text-muted">Назва книги:</div>
        <div class="col-md-12"><h4>${book.title}</h4></div>
    </div>

    <div class="alert alert-secondary" role="alert">
        <div class="text-muted">Автор книги:</div>
        <div class="col-md-12">${book.author}</div>
    </div>

    <div class="alert alert-secondary" role="alert">
        <div class="text-muted">Короткий опис:</div>
        <div class="col-md-12">${book.description}</div>
    </div>


    <div class="alert alert-secondary" role="alert">
        <div class="text-muted">ISBN:</div>
        <div class="col-md-12"><code>${book.isbn}</code></div>
    </div>



    <div class="alert alert-secondary" role="alert">
        <div class="text-muted">Рік випуску:</div>
        <div class="col-md-12">${book.printYear}</div>
    </div>

    <div class="alert alert-secondary" role="alert">
        <div class="text-muted">Перегляд книги:</div>
        <div class="col-md-12">${book.readAlready}</div>
    </div>

</div>


    <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>


    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7 /js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </body>

    </html>
