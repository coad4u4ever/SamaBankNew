<%-- 
    Document   : signup
    Created on : Dec 10, 2014, 3:11:42 PM
    Author     : ning jittima
--%>

<%@page import="Models.Branch"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags/" prefix="info"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
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
        </style>
    </head>
    <body>
        <info:pageHeader title="Sign Up"/>
  
        <div style="float : left">
           <p style="margin-top:auto ">
            <img src = "assets/img/samabank.png" width="350" height="250" border="1">
           </p>
           </div>
        
        <div class="container-fluid" align="right" >
            <form action="SignUp" method="POST" class="form-group">
               <h1 align='center' class="h1">Sign Up  <font color="red"> ${msgSave}</font></h1>
                <p style="text-align: left"><label>Account ID: </label><input type="text" name="accountid" value="Auto Number" readonly class="form-control"/></p>
                  <p style="text-align: left"><label>User ID: </label> <input type="text" name="id" placeholder="Enter User ID" class="form-control" value="${user.id}"/></p>
                  <p style="text-align: left"><label>Password: </label><input type="password" name="password" placeholder="Enter Password" class="form-control" value="${user.password}"/></p>
                  <p style="text-align: left"><label>Re-Password: </label><font color="red">${msgPassword}</font><input type="password" name="repassword" placeholder="Enter Password Again" class="form-control"/></p>

                  <p style="text-align: left"><label>First Name:</label><input type="text" name="fname" placeholder="Enter First Name" class="form-control" value="${user.fname}"/></p>
                  <p style="text-align: left"><label>Last Name:</label><input type="text" name="lname" placeholder="Enter Last Name" class="form-control" value="${user.lname}"/></p>
                  <p style="text-align: left"><label>Balance:</label><font color="red">${msgBalance}</font><input type="text" name="balance" placeholder="Enter Balance" class="form-control" value="${user.balance}"/></p>
                  <p style="text-align: left"><label>Account Type:</label></p>
                <select class="form-control" name="accounttype">
                    <option value="1" ${user.accountType==1?'selected':''}>Saving Account</option>
                    <option value="2" ${user.accountType==2?'selected':''}>Fixed Deposit Account</option>
                </select>
                 <p style="text-align: left"><label>Branch:</label></p>
                <select class="form-control" name="branch">
                    
                    <c:forEach var="branch" items="${branches}">
                        <option value="${branch.branchId}">${branch.branchName}</option>
                    </c:forEach>
                </select>
                <br>
                <p style="text-align: right">
                <input type="submit" class="btn btn-primary btn-lg" value="Sign In">
                <input type="reset" class="btn btn-primary btn-lg" value="Reset">
                <a onclick="history.back(-1)" ><input type="button" class="btn btn-primary btn-lg" value="Back"></a>
                </p>
            </form>
        </div>
                    <info:footer/>
    </body>
</html>
