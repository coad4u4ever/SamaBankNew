<%-- 
    Document   : withdraw
    Created on : Dec 11, 2014, 2:59:17 PM
    Author     : ning jittima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags/" prefix="info"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>withdraw Page</title>
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
        <info:pageHeader title="Withdraw"/>
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
                <form action="withdraw" method="POST" class="form-group">
                    <h1 align='center' class="h1">Withdraw</h1>
                    <p style="text-align: left"><label>Account Type:</label><input type="text" name="branch" class="form-control" value="${user.accType}" readonly/></p>
                     <p style="text-align: left"><label>Balance:</label><input type="text" name="balance" class="form-control" value="${user.balance}" readonly/></p>
                     <p style="text-align: left"><label>Money Amount to Withdraw:</label><input type="text" name="withdraw" class="form-control"/></p>
                    
                     <br>
                     <p style="text-align: right"><input type="submit" class="btn btn-primary btn-lg" value="withdraw"/></p>
                </form>
                <h3 style="color: #c0392b">${msg}</h3>
            </div>
        </div>
        <info:footer/>
    </body>
</html>
