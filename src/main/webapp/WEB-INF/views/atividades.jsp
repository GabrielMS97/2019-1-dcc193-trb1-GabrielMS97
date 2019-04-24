<%@include file="jspf/cabecalho.jspf" %>
<%@page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>Atividades</title>
</head>

<body>
    <h1> Atividades </h1>
    <br />

    <table border="3px" class="table table-striped">
        <tr>
            <th>Título</th>
            <th>Descrição</th>
            <th>Sede</th>
            <th>Data de Início</th>
            <th>Data de Fim</th>
            <th>Horas Assistenciais</th>
            <th>Horas Jurídicas</th>
            <th>Horas Executivas</th>
            <th>Horas Financeiras</th>
            <th>Editar</th>
            <th>Excluir</th>
        </tr>
        <c:forEach var="atividade" items="${atividades}">
            <tr>
                <td>${atividade.titulo}</td>
                <td>${atividade.descricao}</td>
                <td>${atividade.sede.nome}</td>
                <td>${atividade.inicio}</td>
                <td>${atividade.fim}</td>
                <td>${atividade.horasAssistencial}</td>
                <td>${atividade.horasJuridica}</td>
                <td>${atividade.horasExecutiva}</td>
                <td>${atividade.horasFinanceira}</td>
                <td>
                    <form method="POST" action="editar-atividades.html">
                        <input type="hidden" name="id" value="${atividade.id}">
                        <button class="badge badge-primary" type="submit">Editar</button>
                    </form>
                </td>
                <td>
                    <form method="POST" action="excluir-atividades.html">
                        <input type="hidden" name="id" value="${atividade.id}">
                        <button class="badge badge-danger" type="submit">Excluir</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
    <div>
        <a class="btn btn-info" href="cadastro-atividades.html">Cadastrar atividade</a>
    </div>
</body>
<%@include file="jspf/rodape.jspf" %>