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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
          integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
          integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">


</head>

<body>
<style>
    #delete:hover {
        color: red;
        cursor: pointer;
    }
    #tr:hover{
        background: #DCDCDC;
    }
</style>


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
                <a class="nav-link" href="list">Список книг<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="add">Додати нову книгу</a>
            </li>
        </ul>
    </div>
</nav>

<br>


<div class="container">
    <c:if test="${!empty listBooks}">
        <table id="my_table" class="cell-border compact">
            <thead>
            <tr>
                <th>Назва</th>
                <th>Автор</th>
                <th>ISBN</th>
                <th>Рік випуску</th>
                <th>К-ть переглядів</th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
            </thead>
            <tfoot>
            <tr>
                <th>Назва</th>
                <th>Автор</th>
                <th>ISBN</th>
                <th>Рік випуску</th>
                <th>К-ть переглядів</th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
            </tfoot>
            <tbody>
            <c:forEach items="${listBooks}" var="book">
                <tr id="tr">
                    <td>${book.title}</td>
                    <td>${book.author}</td>
                    <td>${book.isbn}</td>
                    <td>${book.printYear}</td>
                    <td>${book.readAlready}</td>
                    <td><a href="/bookdata/${book.id}" id="view"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                    <td><a href="<c:url value='/edit/${book.id}'/>" id="edit"><i class="fa fa-pencil-square-o"
                                                                                 aria-hidden="true"></i></a></td>
                    <td><a href="<c:url value='/remove/${book.id}'/>" id="delete"><i class="fa fa-trash-o"
                                                                                     aria-hidden="true"></i></a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:if>
</div>

<br>


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7 /js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>

<script src="https://code.jquery.com/jquery-1.12.4.min.js"
        integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>

<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.js"></script>
<script>
    $(document).ready(function () {
        $('#my_table').DataTable();
    });
</script>

</body>

</html>

