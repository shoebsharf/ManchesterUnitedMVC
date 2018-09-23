
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>

    <title>Add Items!</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<style>
    .center {
        margin: auto;
        width: 50%;
        height:35%;
        padding: 50px;
        color:white;
        font-family:"Segoe UI",Arial,sans-serif;
        font-size:16px;
    }
    body{background-image: url("https://i.ytimg.com/vi/3HromwCQeuo/maxresdefault.jpg");background-position: center;}
</style>

</head>

<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <!-- Brand -->
    <a class="navbar-brand" href='/admin' title='admin'>Admin</a>

    <!-- Links -->
    <ul class="navbar-nav">
              <li class="nav-item">
            <a class="nav-link" href='/logout' title='login'>Login Out</a>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                Items    </a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="/jerseys">Items</a>
                <a class="dropdown-item" href="/addJersey">CreateItem</a>
                <a class="dropdown-item" href="/deleteJersey">Delete Item</a>
                <a class="dropdown-item" href="/updateJersey">Update Item</a>
            </div>
        </li>
    </ul>
</nav>
<br><br>

<h1>Add Items</h1>

<div class="center">
    <div class="container">
    <form action="/add" method="post">
        <div class="form-group">
            Product ID:<br>
            <input type="text" name="id"></div><br>

            <div>
                Product Name:<br>
                <input type="text" name="pname"></div><br>

                <div>
                    Price:<br>
                    <input type="text" name="price"></div><br>
                <div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>

    </form>
    </div>
</div>
</body>
</html>

