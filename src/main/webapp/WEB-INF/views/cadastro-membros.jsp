<%@include file="jspf/cabecalho.jspf" %>
<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>Cadastro de Membro</h1>
<form action="result-cadastroMembros.html" method="post">
    <label>Nome</label>
    <input required type="text" name="nome" placeholder="Digite o nome"><br />
    <label>Função</label>
    <input required type="text" name="funcao" placeholder="Informe a função"><br />
    <label>E-Mail</label>
    <input required type="text" name="email" placeholder="Informe o e-mail"><br />
    <label>Data de Entrada</label>
    <input required type="text" name="entrada" placeholder="Informe a data de entrada"><br />
    <label>Data de Saída</label>
    <input type="text" name="saida" placeholder="Informe a data de saída, caso haja"><br />
    <label>Sede</label>
    <select name="sede" required>
        <option selected value="">Escolha a sede</option>
        <c:forEach var="sede" items="${sedes}">
            <option value="${sede.id}">${sede.nome}</option>
        </c:forEach>
    </select><br/>
    <button type="submit">Cadastrar</button>
    <button type="reset">Apagar</button>
</form>
<a href="membros.html">Voltar</a>