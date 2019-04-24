<%@page pageEncoding="UTF-8" %>

<h1>Edição de Membro</h1>
<form action="result-cadastroMembros.html" method="POST">
    <input type="hidden" name="id" value="${membro.id}">
    <label>Nome</label>
    <input required type="text" name="nome" value="${membro.nome}"><br />
    <label>Função</label>
    <input required type="text" name="funcao" value="${membro.funcao}"><br />
    <label>E-Mail</label>
    <input required type="text" name="email" value="${membro.email}"><br />
    <label>Data de Entrada</label>
    <input type="text" name="entrada" value="${membro.entrada}"><br />
    <label>Data de Saída</label>
    <input type="text" name="saida" value="${membro.saida}"><br />
    <button type="submit">Salvar</button>
</form>
<a href="membros.jsp">Voltar</a>