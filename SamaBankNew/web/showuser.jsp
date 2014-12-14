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
        <title>User Info</title>
        <link rel="stylesheet" href="assets/dist/css/flat-ui.min.css"/>
        <link rel="stylesheet" href="assets/dist/js/flat-ui.js"/>
        <link rel="stylesheet" href="assets/dist/css/vendor/bootstrap.min.css"/>
        <link rel="shortcut icon" href="assets/dist/img/icons/icon.jpg" />
        <link rel="stylesheet" href="assets/dist/css/menus.css"/>
    </head>
    <body>
        <info:pageHeader title="Show User Info"/>
        <div class="container-fluid" align="center" width ="76%" style ="padding: 0;margin: 0 ;border-radius: 100px 100px 0px 0px" >
            <div id="main"style ="border-radius: 10px 10px 0px 0px" >
                <info:navbarmenu activepoint="1"/>

                <h1 class="h1">Show User</h1>

                <p style="text-align: left"><label>Account ID</label><input type="text" name="accountid" class="form-control" value="${user.accountId}" readonly style="color: black"/></p>
                <p style="text-align: left"><label>First Name:</label><input type="text" name="fname" class="form-control" value="${user.fname}" readonly style="color: black"/></p>
                <p style="text-align: left"><label>Last Name:</label><input type="text" name="lname" class="form-control" value="${user.lname}" readonly style="color: black"/></p>
                <p style="text-align: left"><label>Balance:</label><input type="text" name="balance" class="form-control" value="${user.balance}" readonly style="color: black"/></p>
                <p style="text-align: left"><label>Account Type:</label><input type="text" name="branch" class="form-control" value="${user.accountType==1?'Saving Account':'Fixed Deposit Account'}" readonly style="color: black"/></p>
                <!--<p style="text-align: left"><label>Branch:</label><input type="text" name="branch" class="form-control" value="" readonly style="color: black"/></p>-->
                <br>

                <p style="text-align: right"><a href="edituser.jsp" ><input type="submit" class="btn btn-primary btn-lg" value="Edit"></a></p>


                <p style="text-align: right"><a href="editpassword.jsp" ><input type="submit" class="btn btn-primary btn-lg" value="Edit Password"></a></p>


            </div>
        </div>
        <info:footer/>
    </body>
</html>
