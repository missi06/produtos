package br.com.caelum.vraptor.produtos.dao;


import org.hibernate.Query;
import org.hibernate.Session;

import br.com.caelum.vraptor.ioc.*;
import br.com.caelum.vraptor.produtos.modelo.Usuario;
import br.com.caelum.vraptor.produtos.util.HibernateUtil;

@Component
@RequestScoped
public class UsuarioDao {

	private Session session;
	
	public UsuarioDao() {
		this.session = new HibernateUtil().getSession();
	}
	
	public Usuario buscaUsuarioPorLoginESenha(Usuario usuario) {
		Query query = this.session.createQuery("from Usuario where " + "login = :pLogin and senha = :pSenha");
		query.setParameter("pLogin", usuario.getLogin());
		query.setParameter("pSenha", usuario.getSenha());
		return (Usuario) query.uniqueResult();

	}
}
