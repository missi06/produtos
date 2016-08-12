package br.com.caelum.vraptor.produtos.controller;

import javax.servlet.http.HttpSession;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.produtos.component.UsuarioLogado;
import br.com.caelum.vraptor.produtos.dao.UsuarioDao;
import br.com.caelum.vraptor.produtos.modelo.Usuario;

@Resource
public class LoginController {

	private UsuarioDao usuarioDao;
	private UsuarioLogado usuarioLogado;
	private Result result;
	
	public LoginController(UsuarioDao usuarioDao, UsuarioLogado usuarioLogado, Result result) {
		this.usuarioDao = usuarioDao;
		this.usuarioLogado = usuarioLogado;
		this.result = result;
	}
	
	public void autentica(Usuario usuario) {
		Usuario autenticado = usuarioDao.buscaUsuarioPorLoginESenha(usuario);
		
		if(autenticado != null) {
			usuarioLogado.efetuaLogin(autenticado);
			result.redirectTo(ProdutoController.class).lista();
			return;
		}
		result.redirectTo(LoginController.class).login();
	}
	
	public void sair(HttpSession session) {
		session.invalidate();
		result.redirectTo(LoginController.class).login();
	}
	
	public void login() {
	}

}
