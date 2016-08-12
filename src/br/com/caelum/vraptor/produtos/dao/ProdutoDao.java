package br.com.caelum.vraptor.produtos.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.RequestScoped;
import br.com.caelum.vraptor.produtos.modelo.Produto;
import br.com.caelum.vraptor.produtos.util.HibernateUtil;

@Component
@RequestScoped
public class ProdutoDao {

	private Session session;
	
	public ProdutoDao() {
		this.session = new HibernateUtil().getSession();
	}
	
	public void adiciona(Produto p) {
		Transaction tx = session.beginTransaction();
		session.save(p);
		tx.commit();
	}
	
	public void atualiza(Produto produto) {
		Transaction tx = session.beginTransaction();
		this.session.update(produto);
		tx.commit();
	}
	
	public void remove(Produto p) {
		Transaction tx = session.beginTransaction();
		session.delete(p);
		tx.commit();
	}
	
	@SuppressWarnings("unchecked")
	public List<Produto> lista() {
		return session.createCriteria(Produto.class).list();
	}
	
	public Produto carrega(long id) {
		return (Produto) this.session.load(Produto.class, id);
	}

	public Produto pesquisa(Produto p) {
		Query query = this.session.createQuery("From produto where id = :pId");
		query.setParameter("pId", p.getId());
		return (Produto) query.uniqueResult();
	}

}
