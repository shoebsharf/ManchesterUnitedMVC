
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <title>Delete Order!</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <!-- Brand -->
    <a class="navbar-brand" href='/admin' title='Admin'>Admin</a>

    <!-- Links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href='/logout' title='login'>LogOut</a>
            </div>
        </li>

        <!-- Dropdown -->
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                Orders
            </a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="/orders">Order List</a>
                <a class="dropdown-item" href="/deleteOrder">Delete Order</a>

            </div>
        </li>
    </ul>
</nav>
<br>


<br>
<h1>Delete Order!</h1>
<div class="container">
    <form action="/delor" method="post">
        <div class="form-group">
            <label for="tb"> Order ID:</label>
            <input type="text" class="form-control" name="oid" id="tb"></div>
        <button type="submit" class="btn btn-primary">Delete Order</button>
    </form>
</div>
</div>
</div>
</body>
</html>

