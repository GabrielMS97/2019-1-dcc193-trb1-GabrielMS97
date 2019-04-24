<%@include file="jspf/cabecalho.jspf" %>
<%@page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>Sedes</title>
</head>

<body>
    <h1> Sedes </h1>
    <br />

    <table border="3px">

        <tr>
            <th>Sede</th>
            <th>Estado</th>
            <th>Cidade</th>
            <th>Bairro</th>
            <th>Telefone</th>
            <th>Endereço Web</th>
            <th>Editar</th>
            <th>Excluir</th>
        </tr>


        <c:forEach var="sede" items="${sedes}">
            <tr>
                <td>${sede.nome}</td>
                <td>${sede.estado}</td>
                <td>${sede.cidade}</td>
                <td>${sede.bairro}</td>
                <td>${sede.telefone}</td>
                <td>${sede.enderecoWeb}</td>
                <td>
                    <form method="POST" action="editar-sedes.html">
                        <input type="hidden" name="id" value="${sede.id}">
                        <button type="submit">Editar</button>
                    </form>
                </td>
                <td>
                    <form method="POST" action="excluir-sedes.html">
                        <input type="hidden" name="id" value="${sede.id}">
                        <button type="submit">Excluir</button>
                    </form>
                </td>
            </tr>
        </c:forEach>

    </table>
    <!--<p>Olá ${sede.nome}, de ${sede.cidade} - ${sede.estado}</p>-->
    <div>
        <a href="cadastro-sedes.html">Cadastrar nova sede</a>
    </div>
</body>