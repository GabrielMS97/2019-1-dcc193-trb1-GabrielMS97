<%@include file="jspf/cabecalho.jspf" %>
<%@page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>Total de horas</title>
</head>

<body>
    <h1> Total de horas </h1>
    <br />

    <table border="3px">

        <tr>
            <th>Sede</th>
            <th>Horas Assistenciais</th>
            <th>Horas Jurídicas</th>
            <th>Horas Executivas</th>
            <th>Horas Financeiras</th>
        </tr>
        <c:forEach var="sede" items="${sedes}">
            <tr>
                <td>${sede.nome}</td>
                <td>${sede.totalHorasA}</td>
                <td>${sede.totalHorasJ}</td>
                <td>${sede.totalHorasE}</td>
                <td>${sede.totalHorasF}</td>
            </tr>
        </c:forEach>
    </table>
</body>

<%@include file="jspf/rodape.jspf" %>