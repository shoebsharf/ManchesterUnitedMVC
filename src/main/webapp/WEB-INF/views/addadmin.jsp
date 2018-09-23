
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <title>Add Admin!</title><meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
  <style>
        .center {
            margin: auto;
            width: 35%;
            height:30%;
            padding: 50px;
            color:#ffffff;
            font-family:"Segoe UI",Arial,sans-serif;
            font-size:16px;
        }


    </style>

</head>

<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <!-- Brand -->
    <a class="navbar-brand" href='/admin' title='admin'>Admin</a>

    <!-- Links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href='/logout'>Logout</a>
        </li>

        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                Admin List    </a>
            <div class="dropdown-menu">
                <a class="navbar-brand" href="/addadmin">Add Admin</a>
                <a class="dropdown-item" href="/adminlogin">Admin List</a>
                <a class="dropdown-item" href="/deleteadmin">Delete Admin</a>

            </div>
        </li>
   </ul>
</nav>
<br>
<div class="container">
    <h1 style="text-align: center">Add Admin</h1>
    <form action="/addlog" method="post" class="center">
        <div class="form-group">
            <label for="us">User Name:</label>
            <input type="text" class="form-control" id="us" placeholder="Enter User Name" name="userName">
        </div>
        <div class="form-group">
            <label for="pwd">Password:</label>
            <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
        </div><br>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

</body>
</html>

