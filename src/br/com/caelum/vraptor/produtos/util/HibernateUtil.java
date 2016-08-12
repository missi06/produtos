package br.com.caelum.vraptor.produtos.util;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import br.com.caelum.vraptor.produtos.modelo.Produto;
import br.com.caelum.vraptor.produtos.modelo.Usuario;

@SuppressWarnings("deprecation")
public class HibernateUtil {
	 
	private static SessionFactory factory;
	 
	static {
		Configuration cfg = new Configuration().addAnnotatedClass(Produto.class).addAnnotatedClass(Usuario.class);
		factory = cfg.buildSessionFactory();
	}
	
	public Session getSession(){
		return factory.openSession();
	}

}