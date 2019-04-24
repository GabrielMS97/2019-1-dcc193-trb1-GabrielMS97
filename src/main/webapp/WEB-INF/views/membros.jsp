<%@include file="jspf/cabecalho.jspf" %>
<%@page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>Membros</title>
</head>

<body>
    <h1> Membros </h1>
    <br />

    <table border="3px" class="table table-striped">
        <tr>
            <th>Nome</th>
            <th>Função</th>
            <th>E-mail</th>
            <th>Sede</th>
            <th>Data de Entrada</th>
            <th>Data de Saída</th>
            <th>Editar</th>
            <th>Excluir</th>
        </td>
        <c:forEach var="membro" items="${membros}">
            <tr>
                <td>${membro.nome}</td>
                <td>${membro.funcao}</td>
                <td>${membro.email}</td>
                <td>${membro.sede.nome}</td>
                <td>${membro.entrada}</td>
                <td>${membro.saida}</td>
                <td>
                    <form method="POST" action="editar-membros.html">
                        <input type="hidden" name="id" value="${membro.id}">
                        <button class="badge badge-primary" type="submit">Editar</button>
                    </form>
                </td>
                <td>
                    <form method="POST" action="excluir-membros.html">
                        <input type="hidden" name="id" value="${membro.id}">
                        <button class="badge badge-danger" type="submit">Excluir</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
    <div>
        <a class="btn btn-info" href="cadastro-membros.html">Cadastrar membro</a>
    </div>
</body>
<%@include file="jspf/rodape.jspf" %>