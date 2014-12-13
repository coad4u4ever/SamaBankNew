<%-- 
    Document   : showuser
    Created on : Dec 10, 2014, 8:47:41 PM
    Author     : ning jittima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags/" prefix="info"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit User</title>
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
        <info:pageHeader title="Show User Info"/>
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

                <h1 class="h1">Show User</h1>

                <label>First Name:</label><input type="text" name="fname" class="form-control" value="${user.fname}" readonly/>
                <label>Last Name:</label><input type="text" name="lname" class="form-control" value="${user.lname}" readonly/>
                <label>Balance:</label><input type="text" name="balance" class="form-control" value="${user.balance}" readonly/>
                <label>Account Type:</label><input type="text" name="branch" class="form-control" value="${user.accType}" readonly/>
                <label>Branch:</label><input type="text" name="branch" class="form-control" value="${user.branchName}" readonly/>
                <br>
                <p style="text-align: right"><a href="Edit" ><input type="button" class="btn btn-primary btn-lg" value="Edit"></a></p>

            </div>
        </div>
        <info:footer/>
    </body>
</html>
