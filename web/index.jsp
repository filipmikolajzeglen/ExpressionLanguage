<%--
  Created by IntelliJ IDEA.
  User: Filip Żegleń
  Date: 06.08.2020
  Time: 20:27
  To change this template use File | Settings | File Templates.

  Example http://localhost:8080/ExpressionLanguage/?firstname=Filip&lastname=Zeglen
--%>

<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Witaj ${param.firstname}</title>
</head>
<body>
<h1>Hi ${param.firstname}</h1>
<jsp:useBean id="user"  class="pl.filipzeglen.model.User" scope="session">
  <jsp:setProperty name="user" property="firstname" value="${param.firstname}" />
  <jsp:setProperty name="user" property="lastname" value="${param.lastname}" />
</jsp:useBean>

Attribute set based on parameter: ${sessionScope.user.firstname}<br>

Equal: ${2 == 2} lub ${2 eq 2}<br>
Not equal: ${2 != 2}<br>
Greater than: ${2 > 2} lub ${2 gt 2}<br>
Greater than or equal to: ${2 >= 2} lub ${2 ge 2}<br>
Less than: ${2 < 2} lub ${2 lt 2}<br>
Less than or equal to: ${2 <= 2} lub ${2 le 2}<br>
AND: ${true && false} lub ${true and false}<br>
OR: ${true || false} lub ${true or false}<br>
NOT: ${!true} lub ${not true}<br>
Null check: ${empty header['user-agent']}<br>

Your browser: ${header['user-agent'] }
</body>

</html>