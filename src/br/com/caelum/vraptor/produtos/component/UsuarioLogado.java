package br.com.caelum.vraptor.produtos.component;

import br.com.caelum.vraptor.ioc.*;
import br.com.caelum.vraptor.produtos.modelo.Usuario;

@Component
@SessionScoped
public class UsuarioLogado {
	private Usuario usuarioLogado;
	
	public void efetuaLogin(Usuario usuario) {
		this.usuarioLogado = usuario;
	}
	
	public Usuario getUsuario() {
		return usuarioLogado;
	}
}
