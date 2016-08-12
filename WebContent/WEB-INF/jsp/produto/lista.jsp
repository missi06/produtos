<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Produtos</title>
<link type="text/css" href="<c:url value="/resources/css/lista.css"/>" rel="stylesheet" />
</head>
<body>
	<!-- <script type="text/javascript">
	function removeProduto(id) {
		$('#mensagem').load("<c:url value='/produto/remove'/>" + "?produto.id=" + id);
		$('#produto' + id).remove();
	}
	</script>-->
	
	<div id="adicionar">
		<a href="formulario">Adicionar</a>
	</div>
	<div id="sair">
		<a href="<c:url value="/produto/sair"/>">Sair do sistema</a>
	</div>

	<h1>Tabela de Produtos</h1>
	<table>
			<tr>
				<th>Nome</th>
				<th>Preço</th>
				<th>Descrição</th>
				<th>Inicio das Vendas</th>
				<th>Remover</th>
				<th>Alterar</th>
			</tr>
		<c:forEach var="produto" items="${produtoList}">
			<tr id="produto${produto.id}">
				<td>${produto.nome}</td>
				
				<td>R$ ${produto.preco}</td>
				
				<td>${produto.descricao}</td>
				
				<td><fmt:formatDate pattern="dd/MM/yyyy" value="${produto.dataInicioVenda.time}" /></td>
				
				<td>
				 <a href="<c:url value="/produto/remove"/>?produto.id=${produto.id}">Remover</a>
				<!-- <a href="#" onclick="return removeProduto(${produto.id})"> Remover </a>  -->				
				</td>
				
				<td>
				<a href="<c:url value="/produto/edita"/>?id=${produto.id}">Alterar</a>
				</td>
				
			</tr>
		</c:forEach>
	</table>

	<div id="rodape">
		<c:import url="rodape.jsp"/>
	</div>
</body>
</html>