<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<script type="text/javascript" src="<c:url value="jsp/js/jquery.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/jquery-ui.js" />"></script>
<script type="text/css" src="<c:url value="/css/jquery-ui.css" />"></script>
<link type="text/css" href="<c:url value="/resources/css/alterar.css"/>" rel="stylesheet" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="cabecalho">
		<br>
		<h3>Alterar Produto</h3>
	</div>
	
	<div id="box">
		<br><br>
		<form action="<c:url value= "/produto/altera" />">
			<input type="hidden" name="produto.id"  value="${produto.id}" /> 
			Nome: <input name="produto.nome" style="width: 50%;" value="${produto.nome}" /> <br><br>
			Descrição: <input name="produto.descricao" style="width: 50%;" value="${produto.descricao}" /><br><br> 
			Preço: <input name="produto.preco" value="${produto.preco}" /> <br><br> 
			Data de início de venda: <input type="text" name="produto.dataInicioVenda" value="<fmt:formatDate pattern="dd/MM/yyyy"
							value="${produto.dataInicioVenda.time}" />" /><br>
			<br> 
			<input type="submit" value="Alterar" />
		</form>
	</div>
	
	<div id="rodape">
			<c:import url="rodape.jsp"/>
	</div>
</body>
</html>