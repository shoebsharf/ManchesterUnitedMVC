
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <title>Homepage!</title><meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <style>
body{
    background-image: url("https://wallpapercave.com/wp/wc1741142.jpg");
    background-position: center;
}
    </style>

</head>

<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <!-- Brand -->
    <a class="navbar-brand" href='/home' title='Home'>HOME</a>
    <!-- Links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href='/loginpage' title='login'>Login</a>
        </li>
    </ul>
</nav>
<br>
<div class="container">

    <form action="/loginprocess" method="get" class="center">
        <div class="form-group">
            <input type="text" class="form-control" id="us" placeholder="Enter User Name" name="userName" required>
        </div>
        <div class="form-group">

            <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password" required>
        </div><br>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>

