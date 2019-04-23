<%@page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>Sedes</title>
</head>

<body>
    <h1> Sedes </h1>
    <br />

    <table border="3px">
        
            <tr>
                <th>Sede</th>
                <th>Estado</th>
                <th>Cidade</th>
                <th>Bairro</th>
                <th>Telefone</th>
                <th>Endereço Web</th>
                <th>Editar</th>
                <th>Excluir</th>
            </tr>
        
        
            <c:forEach var="sede" items="${sedes}">
                <tr>
                    <td>${sede.nome}</td>
                    <td>${sede.estado}</td>
                    <td>${sede.cidade}</td>
                    <td>${sede.bairro}</td>
                    <td>${sede.telefone}</td>
                    <td>${sede.enderecoWeb}</td>
                    <td>
                        <a href="">Editar</a>
                    </td>
                    <td>
                        <a href="">Excluir</a>
                    </td>
                </tr>
            </c:forEach>
        
    </table>
    <!--<p>Olá ${sede.nome}, de ${sede.cidade} - ${sede.estado}</p>-->
    <div>
        <a href="cadastro-sedes.html">Cadastrar nova sede</a>
    </div>
</body>
