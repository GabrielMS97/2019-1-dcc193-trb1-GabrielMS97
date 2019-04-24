<%@include file="jspf/cabecalho.jspf" %>
<%@page pageEncoding="UTF-8" %>

<h1>Edição de Sede</h1>
<form action="result-cadastroSedes.html" method="POST">
    <input type="hidden" name="id" value="${sede.id}">
    <div class="form-group">
        <label>Nome da Sede</label>
        <input required type="text" name="nome" value="${sede.nome}" class="form-control"></div>
    <div class="form-group">
        <label>Estado</label>
        <input required type="text" name="estado" value="${sede.estado}" class="form-control"></div>
    <div class="form-group">
        <label>Cidade</label>
        <input required type="text" name="cidade" value="${sede.cidade}" class="form-control"></div>
    <div class="form-group">
        <label>Bairro</label>
        <input required type="text" name="bairro" value="${sede.bairro}" class="form-control"></div>
    <div class="form-group">
        <label>Telefone</label>
        <input required type="text" name="telefone" value="${sede.telefone}" class="form-control"></div>
    <div class="form-group">
        <label>Endereço Web</label>
        <input required type="text" name="enderecoWeb" value="${sede.enderecoWeb}" class="form-control">
    </div><button class="btn btn-info" type="submit">Salvar</button>
    <a class="btn btn-warning" href="sedes.html">Voltar</a>
</form>
<%@include file="jspf/rodape.jspf" %>