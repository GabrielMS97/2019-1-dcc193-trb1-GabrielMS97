<%@include file="jspf/cabecalho.jspf" %>
<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>Cadastro de Atividade</h1>
<form action="result-cadastroAtividades.html" method="post">
    <div class="form-group">
        <label>Título</label>
        <input required type="text" name="titulo" placeholder="Digite o título" class="form-control">
    </div>
    <div class="form-group">
        <label>Descrição</label>
        <input required type="text" name="descricao" placeholder="Descreva a atividade" class="form-control" >
    </div>
    <div class="form-group">
        <label>Data de Início</label>
        <input required type="text" name="inicio" placeholder="Informe a data de início" class="form-control">
    </div>
    <div class="form-group">
        <label>Data de Término</label>
        <input required type="text" name="fim" placeholder="Informe a data de término" class="form-control">
    </div>
    <div class="form-group">
        <label>Horas Assistenciais</label>
        <input type="number" name="horasAssistencial" placeholder="Informe a quantidade de horas assistenciais" class="form-control" >
    </div>
    <div class="form-group">
        <label>Horas Jurídicas</label>
        <input type="number" name="horasJuridica" placeholder="Informe a quantidade de horas jurídicas" class="form-control">
    </div>
    <div class="form-group">
        <label>Horas Financeiras</label>
        <input type="number" name="horasFinanceira" placeholder="Informe a quantidade de horas financeiras" class="form-control">
    </div>
    <div class="form-group">
        <label>Horas Executivas</label>
        <input type="number" name="horasExecutiva" placeholder="Informe a quantidade de horas executivas" class="form-control">
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
    <a class="btn btn-warning" href="atividades.html">Voltar</a>
</form>
<%@include file="jspf/rodape.jspf" %>