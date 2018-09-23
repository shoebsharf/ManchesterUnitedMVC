
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <title>Generate Order!</title><meta charset="UTF-8">
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
            color:black;
            font-family:"Segoe UI",Arial,sans-serif;
            font-size:16px;
        }

    </style>

</head>

<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <!-- Brand -->
    <a class="navbar-brand" href='/home' title='Home'>Home</a>

    <!-- Links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href='/loginpage' title='login'>Login</a>
            </div>
        </li>

        <!-- Dropdown -->
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                Orders
            </a>
            <div class="dropdown-menu">

                <a class="dropdown-item" href="/userdelorder">Cancel Order</a>
                <a class="dropdown-item" href="/useruporder">Update Order</a>
            </div>
        </li>
    </ul>
</nav>
<br>


<h1 style="text-align: center">Customer Details!</h1>
<div class="center">
    <div class="container">
    <form action="/orderSave" method="post">

        <div class="form-group">
            <label for="usr"> Full Name:</label>
                <input type="text" class="form-control" name="fullname" id="usr" ></div>
            <div>
                <div class="form-group">
                    <label for="em"> Email:</label>
                    <input type="text" class="form-control" name="email" id="em" ></div>


                    <div class="form-group">
                        <label for="ad1"> Address1:</label>
                        <input type="text" class="form-control" name="address1" id="ad1" ></div>

                        <div class="form-group">
                            <label for="ad2"> Address2:</label>
                            <input type="text" class="form-control" name="address2" id="ad2" ></div>
                <div class="form-group">

                    <label for="tb"> Total Bill:</label>
                    <c:forEach var="jersey" items="${jersey}">

                    <input type="text" class="form-control" name="totalbill" value="${jersey.price}" id="tb" >
                        ${jersey.price}
</c:forEach></div>
                <button type="submit" class="btn btn-primary">Submit</button>

                </div>
    </form>
</div>
</div>
</body>
</html>

