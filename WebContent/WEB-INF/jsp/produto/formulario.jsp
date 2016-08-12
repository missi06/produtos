<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta charset="ISO-8859-1"/>
<title>Formulario</title>

<script type="text/javascript" src="<c:url value="/js/jquery.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/jquery-ui.js"/>"></script>
<link type="text/css" href="<c:url value="/css/jquery-ui.css"/>" rel="stylesheet"/>
<link type="text/css" href="<c:url value="/resources/css/adiciona.css"/>" rel="stylesheet" />

<script>
	$(function(){
		$("#datepicker").datepicker({
			changeMonth: true,
			changeYear: true
		});
	});
</script>

</head>
<body>
<div id="cabecalho">
<br>
	<h3>Adicionar Produto</h3>
</div>
		<div id="box">
			<br><br>
			<form action="<c:url value="/produto/adiciona"/>">
			
				<span>Nome: <input name="produto.nome" style="width: 50%;"/></span> <br/><br>
				<span>Descricao: <input name="produto.descricao" style="width: 50%;"/></span> <br/><br>
				<span>Preço: <input name="produto.preco"/></span> <br/><br>
				<span>Data de início da venda:
				<input type="text" name="produto.dataInicioVenda" value="<fmt:formatDate pattern="dd/MM/yyyy"
								value="${produto.dataInicioVenda.time}" />" /> </span>
				<br /><br><br>
				<input type="submit" value="Adicionar"/>
			</form>
		</div>
	
	<div id="rodape">
			<c:import url="rodape.jsp"/>
	</div>
</body>
</html>