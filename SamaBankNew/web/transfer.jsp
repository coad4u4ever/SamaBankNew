<%-- 
    Document   : transfer
    Created on : Dec 11, 2014, 2:59:31 PM
    Author     : ning jittima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags/" prefix="info"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <link rel="stylesheet" href="assets/dist/css/flat-ui.min.css"/>
        <link rel="stylesheet" href="assets/dist/js/flat-ui.js"/>
        <link rel="stylesheet" href="assets/dist/css/vendor/bootstrap.min.css"/>
                <style>
                        body{
                padding: 100px;
                padding-top: 10px;
                padding-left: 100px;
                background-color: #2ecc71;
            }
            .form-group{
                max-width: 600px;
                padding: 20px;
                border-radius: 15px;
                background-color: #ecf0f1;
            }
            
            #main{
                
                padding: 30px;
                border-radius: 15px;
                background-color: #95a5a6;
            }
            
        </style>
    </head>
    <body>
        <info:pageHeader title="Transfer"/>
    <div class="container-fluid">
        <div id="main">
            <nav class="navbar navbar-default">

                <ul class="nav navbar-nav">
                    <li><a href="viewdata">View User Data</a></li>
                    <li><a href="withdraw">Withdraw</a></li>
                    <li><a href="deposit">Deposit</a></li>
                    <li class="active"><a href="transfer">Transfer</a></li>
                </ul>
            </nav>
            <form action="deposit" method="POST" class="form-group">
                <h1 class="h1">Withdraw</h1>
                <label>Account Type:</label><input type="text" name="branch" class="form-control" value="${user.accType}" readonly/>
                <label>Balance:</label><input type="text" name="balance" class="form-control" value="${user.balance}" readonly/>
                <label>Money Amount to Transfer:</label><input type="text" name="withdraw" class="form-control"/>
                <label>Transfer To:</label>
                <select class="form-control" name="transferName">
                    <c:forEach var="transfer" items="${transfer}">
                        <option value="${transfer.transferName}">${transfer.transferName}</option>
                    </c:forEach>
                </select>
                <input type="submit" class="btn btn-primary btn-lg" value="deposit"/>
            </form>
                <h3 style="color: #c0392b">${msg}</h3>
        </div>
    </div>
    </body>
</html>