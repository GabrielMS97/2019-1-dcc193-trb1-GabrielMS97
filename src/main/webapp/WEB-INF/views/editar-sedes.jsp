<%@include file="jspf/cabecalho.jspf" %>
<%@page pageEncoding="UTF-8" %>

<h1>Edição de Sede</h1>
<form action="result-cadastroSedes.html" method="POST">
    <input type="hidden" name="id" value="${sede.id}">
    <label>Nome da Sede</label>
    <input required type="text" name="nome" value="${sede.nome}"><br />
    <label>Estado</label>
    <input required type="text" name="estado" value="${sede.estado}"><br />
    <label>Cidade</label>
    <input required type="text" name="cidade" value="${sede.cidade}"><br />
    <label>Bairro</label>
    <input required type="text" name="bairro" value="${sede.bairro}"><br />
    <label>Telefone</label>
    <input required type="text" name="telefone" value="${sede.telefone}"><br />
    <label>Endereço Web</label>
    <input required type="text" name="enderecoWeb" value="${sede.enderecoWeb}"><br />
    <button type="submit">Salvar</button>
</form>
<a href="sedes.html">Voltar</a>