<%@include file="jspf/cabecalho.jspf" %>
<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>Cadastro de Atividade</h1>
<form action="result-cadastroAtividades.html" method="post">
    <label>Título</label>
    <input required type="text" name="titulo" placeholder="Digite o título"><br />
    <label>Descrição</label>
    <input required type="text" name="descricao" placeholder="Descreva a atividade"><br />
    <label>Data de Início</label>
    <input required type="text" name="inicio" placeholder="Informe a data de início"><br />
    <label>Data de Término</label>
    <input required type="text" name="fim" placeholder="Informe a data de término"><br />
    <label>Horas Assistenciais</label>
    <input type="number" name="horasAssistencial" placeholder="Informe a quantidade de horas assistenciais"><br />
    <label>Horas Jurídicas</label>
    <input type="number" name="horasJuridica" placeholder="Informe a quantidade de horas jurídicas"><br />
    <label>Horas Financeiras</label>
    <input type="number" name="horasFinanceira" placeholder="Informe a quantidade de horas financeiras"><br />
    <label>Horas Executivas</label>
    <input type="number" name="horasExecutiva" placeholder="Informe a quantidade de horas executivas"><br />
    <label>Sede</label>
    <select name="sede" required>
        <option selected value="">Escolha a sede</option>
        <c:forEach var="sede" items="${sedes}">
            <option value="${sede.id}">${sede.nome}</option>
        </c:forEach>
    </select><br />
    <button type="submit">Cadastrar</button>
    <button type="reset">Apagar</button>
</form>
<a href="atividades.html">Voltar</a>
<%@include file="jspf/rodape.jspf" %>