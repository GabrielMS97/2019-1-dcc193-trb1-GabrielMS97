<%@include file="jspf/cabecalho.jspf" %>
<%@page pageEncoding="UTF-8" %>

<h1>Cadastro de Sede</h1>
<form action="result-cadastroSedes.html" method="post">
    <div class="form-group">
        <label>Nome da Sede</label>
        <input required type="text" name="nome" placeholder="Digite o nome da Sede" class="form-control">
    </div>
    <div class="form-group">
        <label>Estado</label>
        <input required type="text" name="estado" placeholder="Informe o estado" class="form-control">
    </div>
    <div class="form-group">
        <label>Cidade</label>
        <input required type="text" name="cidade" placeholder="Informe a cidade" class="form-control">
    </div>
    <div class="form-group">
        <label>Bairro</label>
        <input required type="text" name="bairro" placeholder="Informe o bairro" class="form-control">
    </div>
    <div class="form-group">
        <label>Telefone</label>
        <input required type="text" name="telefone" placeholder="Informe o telefone" class="form-control">
    </div>
    <div class="form-group">
        <label>Endereço Web</label>
        <input required type="text" name="enderecoWeb" placeholder="Informe o endereço web" class="form-control">
    </div> <button class="btn btn-info" type="submit">Cadastrar</button>
    <button class="btn btn-danger" type="reset">Apagar</button>
    <a class="btn btn-warning" href="sedes.html">Voltar</a>
</form>
<%@include file="jspf/rodape.jspf" %>