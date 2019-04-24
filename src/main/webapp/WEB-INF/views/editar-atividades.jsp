<%@include file="jspf/cabecalho.jspf" %>
<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>Edição de Atividade</h1>
<form action="result-cadastroAtividades.html" method="post">
    <input type="hidden" name="id" value="${atividade.id}" class="form-control">
    <div class="form-group">
        <label>Título</label>
        <input required type="text" name="titulo" value="${atividade.titulo}" class="form-control">
    </div>
    <div class="form-group">
        <label>Descrição</label>
        <input required type="text" name="descricao" value="${atividade.descricao}" class="form-control">
    </div>
    <div class="form-group">
        <label>Data de Início</label>
        <input required type="text" name="inicio" value="${atividade.inicio}" class="form-control">
    </div>
    <div class="form-group">
        <label>Data de Término</label>
        <input required type="text" name="fim" value="${atividade.fim}" class="form-control">
    </div>
    <div class="form-group">
        <label>Horas Assistenciais</label>
        <input type="number" name="horasAssistencial" value="${atividade.horasAssistencial}" class="form-control">
    </div>
    <div class="form-group">
        <label>Horas Jurídicas</label>
        <input type="number" name="horasJuridica" value="${atividade.horasJuridica}" class="form-control">
    </div>
    <div class="form-group">
        <label>Horas Financeiras</label>
        <input type="number" name="horasFinanceira" value="${atividade.horasFinanceira}" class="form-control">
    </div>
    <div class="form-group">
        <label>Horas Executivas</label>
        <input type="number" name="horasExecutiva" value="${atividade.horasExecutiva}" class="form-control">
    </div>
    <div class="form-group">
        <label>Sede</label>
        <select name="sede" required class="form-control">
            <c:forEach var="sede" items="${sedes}">
                <c:if test="${sede.nome eq atividade.sede.nome}">
                    <option selected value="${sede.id}">${sede.nome}</option>
                </c:if>
                <c:if test="${sede.nome ne atividade.sede.nome}">
                    <option value="${sede.id}">${sede.nome}</option>
                </c:if>
            </c:forEach>
        </select>
    </div><br />
    <button class="btn btn-info" type="submit">Salvar</button>
    <a class="btn btn-warning" href="atividades.html">Voltar</a>
</form>
<%@include file="jspf/rodape.jspf" %>