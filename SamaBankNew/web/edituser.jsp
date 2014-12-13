<%-- 
    Document   : signup
    Created on : Dec 10, 2014, 3:11:42 PM
    Author     : ning jittima
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <info:pageHeader title="Edit User"/>
        <div class="container-fluid" align="center">
                        <div id="main">
        <nav class="navbar navbar-default">
        
                <ul class="nav navbar-nav">
                    <li class="active"><a href="viewdata">View User Data</a></li>
                    <li><a href="withdraw">Withdraw</a></li>
                    <li><a href="deposit">Deposit</a></li>
                    <li><a href="transfer">Transfer</a></li>
                </ul>
            </nav>
            <form action="signup" method="POST" class="form-group">
                <h1 class="h1">Edit User</h1>
                <!--<label>Account ID: </label><input type="text" name="id" value="Auto Number" readonly class="form-control"/>-->
                <!--<label>User ID: </label><input type="text" name="accountid" placeholder="Enter User ID" class="form-control"/>-->
                <p style="text-align: left"><label>Password: </label><input type="password" name="password" placeholder="Enter Password" class="form-control"/></p>
                 <p style="text-align: left"><label>Re-Password: </label><input type="password" name="Repassword" placeholder="Enter Password Again" class="form-control"/></p>
                
                 <p style="text-align: left"><label>First Name:</label><input type="text" name="fname" placeholder="Enter First Name" class="form-control" value="${user.fname}"/></p>
                 <p style="text-align: left"><label>Last Name:</label><input type="text" name="lname" placeholder="Enter Last Name" class="form-control" value="${user.lname}"/></p>
                 <p style="text-align: left"><label>Branch:</label></p>
                    <select class="form-control" name="branch">
                        <c:forEach var="branch" items="${branch}">
                        <option value="${branch.branchName}">${branch.branchName}</option>
                        </c:forEach>
                    </select>
                <br><br>
                <p style="text-align: right"><input type="submit" class="btn btn-primary btn-lg" value="Edit">&nbsp;
                <input type="reset" class="btn btn-primary btn-lg" value="Reset">&nbsp;
                <a onclick="history.back(-1)" ><input type="button" class="btn btn-primary btn-lg" value="Back">&nbsp;</a>
                </p>
            </form>
                        </div>
        </div>
    </body>
</html>
