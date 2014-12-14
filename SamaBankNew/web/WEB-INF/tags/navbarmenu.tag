<%-- 
    Document   : navbarmenu
    Created on : Dec 14, 2014, 5:46:26 PM
    Author     : coad4u4ever
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@attribute name="activepoint" required="true" rtexprvalue="true" %>
<%@tag body-content="scriptless"%>
<nav class="navbar navbar-default">
    <ul class="nav navbar-nav">
        <li ${activepoint==1?'class="active"':""}><a href="showuser.jsp">View User Data</a></li>
        <li ${activepoint==2?'class="active"':""}><a href="Withdraw">Withdraw</a></li>
        <li ${activepoint==3?'class="active"':""}><a href="Deposit">Deposit</a></li>
        <li ${activepoint==4?'class="active"':""}><a href="Transfer">Transfer</a></li>
        <li ${activepoint==5?'class="active"':""}><a href="ShowTransaction">Show Transaction</a></li>
    </ul>
</nav>