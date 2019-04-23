<%@page pageEncoding="UTF-8" %>

<h1>Cadastro de Sede</h1>
<form action="result-cadastroSedes.html" method="post">
    <label>Nome da Sede</label>
    <input required type="text" name="nome" placeholder="Digite o nome da Sede"><br/>
    <label>Estado</label>
    <input required type="text" name="estado" placeholder="Informe o estado"><br/>
    <label>Cidade</label>
    <input required type="text" name="cidade" placeholder="Informe a cidade"><br/>
    <label>Bairro</label>
    <input required type="text" name="bairro" placeholder="Informe o bairro"><br/>
    <label>Telefone</label>
    <input required type="text" name="telefone" placeholder="Informe o telefone"><br/>
    <label>Endereço Web</label>
    <input required type="text" name="enderecoWeb" placeholder="Informe o endereço web"><br/>
    <button type="submit">Cadastrar</button>
    <button type="reset">Apagar</button>
</form>