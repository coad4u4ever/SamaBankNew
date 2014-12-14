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
        <title>Transfer Page</title>
        <link rel="stylesheet" href="assets/dist/css/flat-ui.min.css"/>
        <link rel="stylesheet" href="assets/dist/js/flat-ui.js"/>
        <link rel="stylesheet" href="assets/dist/css/vendor/bootstrap.min.css"/>
        <link rel="shortcut icon" href="assets/dist/img/icons/icon.jpg" />
        <link rel="stylesheet" href="assets/dist/css/menus.css"/>

        </style>
    </head>
    <body>
        <info:pageHeader title="Transfer"/>
        <div class="container-fluid" align="center" width ="76%" style ="padding: 0;margin: 0 ;border-radius: 100px 100px 0px 0px" >
            <div id="main"style ="border-radius: 10px 10px 0px 0px" >
                <info:navbarmenu activepoint="4"/>
                <form action="Transfer" method="POST" class="form-group"style ="box-shadow: 2px 6px 68px -9px rgba(0,0,0,0.75);">
                    <h1 class="h1">Transfer</h1>
                    <p style="text-align: left"><label>Account ID:</label><input type="text" name="branch" class="form-control" value="${user.accountId}" readonly style="color: black"/></p>
                    <p style="text-align: left"><label>Balance:</label><input type="text" name="balance" class="form-control" value="${user.balance}" readonly style="color: black"/></p>
                    <p style="text-align: left"><label>Money Amount to Transfer:</label><input type="text" name="transferamount" class="form-control"/></p>
                    <p style="text-align: left"><label>Transfer To:</label></p>
                    <select class="form-control" name="transferTo">
                        <c:forEach var="transfer" items="${accountlists}">
                            <option  value="${transfer.accountId}">${transfer.accountId}  ${transfer.fname}  ${transfer.lname}</option>
                        </c:forEach>
                    </select>
                    <br>
                    <p style="text-align: right"><input type="submit" class="btn btn-primary btn-lg" value="transfer"/></p>
                </form>
                <h3 style="color: #c0392b">${msg}</h3>
            </div>
        </div>
        <info:footer/>
    </body>
</html>