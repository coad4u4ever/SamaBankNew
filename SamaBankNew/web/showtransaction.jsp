<%-- 
    Document   : showtransaction
    Created on : Dec 11, 2014, 7:21:35 PM
    Author     : ning jittima
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags/" prefix="info"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transaction Page</title>
        <link rel="stylesheet" href="assets/dist/css/flat-ui.min.css"/>
        <link rel="stylesheet" href="assets/dist/js/flat-ui.js"/>
        <link rel="stylesheet" href="assets/dist/css/vendor/bootstrap.min.css"/>
        <link rel="shortcut icon" href="assets/dist/img/icons/icon.jpg" />
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
        <info:pageHeader title="Edit User"/>
        <div class="container-fluid" align="center" width ="76%" style ="padding: 0;margin: 0 ;border-radius: 100px 100px 0px 0px" >
            <div id="main"style ="border-radius: 10px 10px 0px 0px" >
                <nav class="navbar navbar-default">

                    <ul class="nav navbar-nav">
                        <li class="active"><a href="viewdata">View User Data</a></li>
                        <li><a href="withdraw">Withdraw</a></li>
                        <li><a href="deposit">Deposit</a></li>
                        <li><a href="transfer">Transfer</a></li>
                        <li><a href="showtransaction">Show Transaction</a></li>
                    </ul>
                </nav>
                <form action="deposit" method="POST" class="form-group">
                    <h1 class="h1">Show Transaction</h1>
                    <table class="table table-responsive table-striped">
                        <c:forEach var="trans" items="${transaction}">
                            <tr>
                                <td>${trans.transactionNo}</td>
                                <td>${trans.accId}</td>
                                <td>${trans.date}</td>
                                <td>${trans.time}</td>
                                <td>${trans.code}</td>
                                <td>${trans.amount}</td>
                                <td>${trans.oldBalance}</td>
                                <td>${trans.balance}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </form>
                <h3 style="color: #c0392b">${msg}</h3>
            </div>
        </div>
        <info:footer/>
    </body>
</html>
