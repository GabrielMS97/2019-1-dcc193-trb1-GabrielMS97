<%@include file="jspf/cabecalho.jspf" %>
<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>Edição de Membro</h1>
<form action="result-cadastroMembros.html" method="POST">
    <input type="hidden" name="id" value="${membro.id}">
    <div class="form-group">
        <label>Nome</label>
        <input required type="text" name="nome" value="${membro.nome}" class="form-control">
    </div>
    <div class="form-group">
        <label>Função</label>
        <input required type="text" name="funcao" value="${membro.funcao}" class="form-control">
    </div>
    <div class="form-group">
        <label>E-Mail</label>
        <input required type="text" name="email" value="${membro.email}" class="form-control">
    </div>
    <div class="form-group">
        <label>Data de Entrada</label>
        <input type="text" name="entrada" value="${membro.entrada}" class="form-control">
    </div>
    <div class="form-group">
        <label>Data de Saída</label>
        <input type="text" name="saida" value="${membro.saida}" class="form-control">
    </div>
    <div class="form-group">
        <label>Sede</label>
        <select name="sede" required class="form-control">
            <c:forEach var="sede" items="${sedes}">
                <c:if test="${sede.nome eq membro.sede.nome}">
                    <option selected value="${sede.id}">${sede.nome}</option>
                </c:if>
                <c:if test="${sede.nome ne membro.sede.nome}">
                    <option value="${sede.id}">${sede.nome}</option>
                </c:if>
            </c:forEach>
        </select>
    </div><br />
    <button class="btn btn-info" type="submit">Salvar</button>
    <a class="btn btn-warning" href="membros.jsp">Voltar</a>
</form>
<%@include file="jspf/rodape.jspf" %>