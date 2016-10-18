<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <title>EasyShop</title>
    <link rel="stylesheet" href="<c:url value='/styles/main.css'/> ">
    <!-- <link rel="stylesheet" href="<c:url value='/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css'/> "> -->
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
</head>

<body>
    <header>
        <h1>EasyShop</h1>
    </header>
    <nav id="nav_bar">
        <ul>
            <li><a href="<c:url value='/admin'/>">
                    Admin</a></li>
            <li><a href="<c:url value='/order/showCart'/>">
                    Show Cart</a></li>
        </ul>
    </nav>