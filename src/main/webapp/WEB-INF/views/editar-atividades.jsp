<%@page pageEncoding="UTF-8" %>

<h1>Edição de Atividade</h1>
<form action="result-cadastroAtividades.html" method="post">
    <input type="hidden" name="id" value="${atividade.id}">
    <label>Título</label>
    <input required type="text" name="titulo" value="${atividade.titulo}"><br />
    <label>Descrição</label>
    <input required type="text" name="descricao" value="${atividade.descricao}"><br />
    <label>Data de Início</label>
    <input required type="text" name="inicio" value="${atividade.inicio}"><br />
    <label>Data de Término</label>
    <input required type="text" name="fim" value="${atividade.fim}"><br />
    <label>Horas Assistenciais</label>
    <input type="number" name="horasAssistencial" value="${atividade.horasAssistencial}"><br />
    <label>Horas Jurídicas</label>
    <input type="number" name="horasJuridica" value="${atividade.horasJuridica}"><br />
    <label>Horas Financeiras</label>
    <input type="number" name="horasFinanceira" value="${atividade.horasFinanceira}"><br />
    <label>Horas Executivas</label>
    <input type="number" name="horasExecutiva" value="${atividade.horasExecutiva}"><br />
    <button type="submit">Salvar</button>
</form>
<a href="atividades.html">Voltar</a>