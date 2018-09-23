
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Admin Home!</title>
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
    <a class="navbar-brand" href='/admin' title='admin'>Admin</a>

    <!-- Links -->
    <ul class="navbar-nav">

        <li class="nav-item">
            <a class="nav-link" href='/logout' title='login'>Login Out</a>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop2" data-toggle="dropdown">
                Admin Add   </a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="/adminlogin">Admin List</a>
                <a class="dropdown-item" href="/addadmin">Add Admin</a>
                <a class="dropdown-item" href="/deleteadmin">Delete Admin</a>

            </div>
        </li>
        <!-- Dropdown -->
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
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop1" data-toggle="dropdown">
               Orders List
            </a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="/orders">Orders</a>
                <a class="dropdown-item" href="/deleteOrder">Delete Order</a>

            </div>
        </li>
    </ul>
</nav>


<h1>Admin Page!</h1>

    <p>Welcome to Admin page. <br>
        Here you can add, delete and update items <b>Products</b>. <br> You can delete <b>Orders</b>. <br> You can add, delete and update <b>Admins</b>...... </p>
</body>
</html>

