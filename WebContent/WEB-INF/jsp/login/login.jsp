<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>.:: Login ::.</title>
<link type="text/css" href="<c:url value="/resources/css/login.css"/>" rel="stylesheet" />
</head>
<body>
	<div id="cabecalho">
	<br>
			<h1>Login no Controle de Produtos</h1>
	</div>
		<div id="login">
		<br><br><br>
			<form action="<c:url value="/login/autentica"/>">
			
				<span>Login:  <input placeholder="login" type="text" name="usuario.login" /><br><br></span>
				<span>Senha:  <input placeholder="senha" type="password" name="usuario.senha" /></span><br><br>
				<input type="submit" value="Autenticar" />
			
			</form>
		</div>
</body>
</html>