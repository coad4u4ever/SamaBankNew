<%-- 
    Document   : deposit
    Created on : Dec 11, 2014, 4:49:56 PM
    Author     : ning jittima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags/" prefix="info"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <link rel="stylesheet" href="assets/dist/css/flat-ui.min.css"/>
        <link rel="stylesheet" href="assets/dist/js/flat-ui.js"/>
        <link rel="stylesheet" href="assets/dist/css/vendor/bootstrap.min.css"/>
    </head>
    <body>
        <info:pageHeader title="Deposit"/>
    <div class="container-fluid">
        <div id="main">
            <nav class="navbar navbar-default">

                <ul class="nav navbar-nav">
                    <li><a href="viewdata">View User Data</a></li>
                    <li><a href="withdraw">Withdraw</a></li>
                    <li class="active"><a href="deposit">Deposit</a></li>
                    <li><a href="transfer">Transfer</a></li>
                </ul>
            </nav>
            <form action="deposit" method="POST" class="form-group">
                <h1 class="h1">Withdraw</h1>
                <label>Account Type:</label><input type="text" name="branch" class="form-control" value="${user.accType}" readonly/>
                <label>Balance:</label><input type="text" name="balance" class="form-control" value="${user.balance}" readonly/>
                <label>Money Amount to Deposit:</label><input type="text" name="withdraw" class="form-control"/>
                <input type="submit" class="btn btn-primary btn-lg" value="deposit"/>
            </form>
                <h3 style="color: #c0392b">${msg}</h3>
        </div>
    </div>
    </body>
</html>
