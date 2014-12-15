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
                    <nav class="navbar navbar-inverse" role="navigation">
                        <ul class="nav navbar-nav">
                            <li><a href="showuser.jsp">View User Data</a></li><br>
                            <li><a href="Withdraw">Withdraw</a></li><br>
                            <li><a href="Deposit">Deposit</a></li><br>
                            <li><a href="Transfer">Transfer</a></li><br>
                            <li><a href="ShowTransaction">Show Transaction</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="pageContent" style ="width: 99%;height: 470px">
                <div style ="float: left;margin: 50px">

                    <img src="assets/img/icons/png/LogoSama.png" width="40%" style="display: block;margin:auto"/>
                    <p style ="text-align: center">!!SAMA Bank Corporation !!!</p>
                    &nbsp; พวกเราคือธนาคารที่ได้รับการไว้วางใจจากประชาชนชาวไทยทุกคน ด้วยระบบ Security<br>
                    และระบบการทำงานที่มีประสิทธิภาพ ทำให้การทำงานของเราเป็นหนึ่งในเรื่องของการบริการ<br>
                    ลูกค้าและระบบ Transaction ที่รวดเร็ว<br>
                    <hr>
                    มาร่วมงานด้วยกันเถอะครับ

                </div>


                <div style ="float: right">
                    <nav class="jumbotron" style ="text-align: center;width:460px;border-radius: 10px;height: 460px;margin-right: 30px;margin-top: -10px">
                        <p>สิ่งที่น่าสนใจ</p>
                        <img src="assets/img/Promr.jpg"style="width: 400px;height: 300px">
                        <div style ="height:40px">
                            <nav>
                                <ul class="pagination pagination-sm" style="margin:5px 0 5px 100px;display: inherit"">
                                    <li><a href="#"><span aria-hidden="true">&laquo;</span><span class="sr-only">Previous</span></a></li>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li style ="display: inherit"><a href="#"><span aria-hidden="true">&raquo;</span><span class="sr-only">Next</span></a></li>
                                </ul>
                            </nav>
                        </div>
                    </nav>
                </div>

            </div>
            <div class="pageFooter">
                <info:footerForIndex/>
            </div>
        </div>
    </body>
</html>
