<%@include file="jspf/cabecalho.jspf" %>
<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>Cadastro de Membro</h1>
<form action="result-cadastroMembros.html" method="post">
    <div class="form-group">
        <label>Nome</label>
        <input required type="text" name="nome" placeholder="Digite o nome" class="form-control">
    </div>
    <div class="form-group">
        <label>Função</label>
        <input required type="text" name="funcao" placeholder="Informe a função" class="form-control">
    </div>
    <div class="form-group">
        <label>E-Mail</label>
        <input required type="text" name="email" placeholder="Informe o e-mail" class="form-control">
    </div>
    <div class="form-group">
        <label>Data de Entrada</label>
        <input required type="text" name="entrada" placeholder="Informe a data de entrada" class="form-control">
    </div>
    <div class="form-group">
        <label>Data de Saída</label>
        <input type="text" name="saida" placeholder="Informe a data de saída, caso haja" class="form-control">
    </div>
    <div class="form-group">
        <label>Sede</label>
        <select name="sede" required class="form-control">
        <option selected value="">Escolha a sede</option>
        <c:forEach var="sede" items="${sedes}">
            <option value="${sede.id}">${sede.nome}</option>
        </c:forEach>
        </select>
    </div>
    <button class="btn btn-info" type="submit">Cadastrar</button>
    <button class="btn btn-danger" type="reset">Apagar</button>
    <a class="btn btn-warning" href="membros.html">Voltar</a>
</form>
<%@include file="jspf/rodape.jspf" %>