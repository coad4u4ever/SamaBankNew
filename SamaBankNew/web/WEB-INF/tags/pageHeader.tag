<%-- 
    Document   : pageHeader
    Created on : Dec 10, 2014, 5:02:52 PM
    Author     : l3lacklistiie
--%>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@tag body-content="empty" %>
<%@attribute name="title" type="java.lang.String"%>

<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid" id = "nav">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">${title==null?'Notitle':title}</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a><b>Hello</b></a></li>
                <c:choose>
                    <c:when test = "${user==null}">
                        <li>
                            <a href="Login" title = "Login to SAMA BANK">Guest</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li>
                            <a href="SearchBankAccount?para=${user=='Admin'?'':user.getAccountId()}">${user=='Admin'?user:user.getAccountName()}</a>
                        </li>
                        <li>                   
                            <a href="Logout" title = "Logout form SAMA BANK">Logout</a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>