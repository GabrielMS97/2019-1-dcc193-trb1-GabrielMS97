<%@page pageEncoding="UTF-8" %>

<h1>Cadastro de Membro</h1>
<form action="result-cadastroMembros.html" method="post">
    <label>Nome</label>
    <input required type="text" name="nome" placeholder="Digite o nome"><br/>
    <label>Função</label>
    <input required type="text" name="funcao" placeholder="Informe a função"><br/>
    <label>E-Mail</label>
    <input required type="text" name="email" placeholder="Informe o e-mail"><br/>
    <label>Data de Entrada</label>
    <input required type="text" name="entrada" placeholder="Informe a data de entrada"><br/>
    <label>Data de Saída</label>
    <input type="text" name="saida" placeholder="Informe a data de saída, caso haja"><br/>
    <button type="submit">Cadastrar</button>
    <button type="reset">Apagar</button>
</form>
<a href="membros.html">Voltar</a>