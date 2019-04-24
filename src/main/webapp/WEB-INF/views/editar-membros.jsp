<%@include file="jspf/cabecalho.jspf" %>
<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>Edição de Membro</h1>
<form action="result-cadastroMembros.html" method="POST">
    <input type="hidden" name="id" value="${membro.id}">
    <label>Nome</label>
    <input required type="text" name="nome" value="${membro.nome}"><br />
    <label>Função</label>
    <input required type="text" name="funcao" value="${membro.funcao}"><br />
    <label>E-Mail</label>
    <input required type="text" name="email" value="${membro.email}"><br />
    <label>Data de Entrada</label>
    <input type="text" name="entrada" value="${membro.entrada}"><br />
    <label>Data de Saída</label>
    <input type="text" name="saida" value="${membro.saida}"><br />
    <label>Sede</label>
    <select name="sede" required>
        <c:forEach var="sede" items="${sedes}">
            <c:if test="${sede.nome eq membro.sede.nome}">
                <option selected value="${sede.id}">${sede.nome}</option>
            </c:if>
            <c:if test="${sede.nome ne membro.sede.nome}">
                <option value="${sede.id}">${sede.nome}</option>
            </c:if>
        </c:forEach>
    </select><br/>
    <button type="submit">Salvar</button>
</form>
<a href="membros.jsp">Voltar</a>