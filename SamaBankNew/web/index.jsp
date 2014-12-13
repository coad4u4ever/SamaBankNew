<%-- 
    Document   : index
    Created on : Dec 9, 2014, 9:09:00 PM
    Author     : coad4u4ever
--%>

<html>
    <!DOCTYPE html>
    <head>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@taglib tagdir="/WEB-INF/tags/" prefix="info"%>
        <link rel="stylesheet" type="text/css" href="blended_layout.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <link rel="stylesheet" href="assets/dist/css/flat-ui.min.css"/>
        <link rel="stylesheet" href="assets/dist/js/flat-ui.js"/>
        <link rel="stylesheet" href="assets/dist/css/vendor/bootstrap.min.css"/>
        <link rel="shortcut icon" href="assets/dist/img/icons/icon.jpg" />
    </head>
    <body style="background-image: url(assets/dist/img/login/bg2.jpg);">
        <div class="blended_grid">
            <div class="pageHeader">
                <info:pageHeader title="Main Menu"/>

            </div>
            <div class="pageLeftMenu">
                <div class="container-fluid" style ="float: left">
                    <img src="assets/img/samabank.png"  style ="width: 100px; height: 80px;margin: 0 0 0 20%">
                    <p style ="text-align: center">ระบบการเงินออนไลน์</p>
                    <nav class="navbar navbar-default">
                        <ul class="nav navbar-nav">
                            <li><a href="viewdata">View User Data</a></li><hr>
                            <li><a href="withdraw">Withdraw</a></li><hr>
                            <li><a href="deposit">Deposit</a></li><hr>
                            <li><a href="transfer">Transfer</a></li><hr>
                            <li><a href="showtransaction">Show Transaction</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="pageContent" style ="width: 100%;height: 470px">
                 <div style ="float: left;margin: 50px">
                     
                <img src="assets/img/icons/png/LogoSama.png" width="40%" style="display: block;margin:auto"/>
                <p style ="text-align: center">!!SAMA Bank Corporation !!!</p>
                &nbsp; พวกเราคือธนาคารที่ได้รับการไว้วางใจจากประชาชนชาวไทยทุกคน ด้วยระบบ Security<br>
                และระบบการทำงานที่มีประสิทธิภาพ ทำให้การทำงานของเราเป็นหนึ่งในเรื่องของการบริการ<br>
                ลูกค้าและระบบ Transaction ที่รวดเร็ว<br>
                <hr>
                มาร่วมงานด้วยกันเถอะครับ
                
                 </div>
                <div style ="float: right;margin: 50px">
                    <nav class="navbar navbar-default" style ="text-align: center;padding: 10">
                    <p>สิ่งที่น่าสนใจ</p>
                     <img src="assets/img/Promr.jpg" style="width: 400px;height: 300px">
                    </nav>
                </div>
            </div>
            <div class="pageFooter">
                <info:footer/>
            </div>
        </div>
    </body>
</html>
