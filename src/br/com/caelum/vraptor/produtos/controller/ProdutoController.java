package br.com.caelum.vraptor.produtos.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import br.com.caelum.vraptor.*;
import br.com.caelum.vraptor.produtos.dao.ProdutoDao;
import br.com.caelum.vraptor.produtos.modelo.Produto;

@Resource
public class ProdutoController {
	private Result result;
	private ProdutoDao dao;
	
	public ProdutoController(Result result, ProdutoDao dao){
		this.result = result;
		this.dao = dao;
	}
	
	public ProdutoController(){
	}
	
	public List<Produto> lista() {
		return dao.lista();
	}

	public void adiciona(Produto produto){
		dao.adiciona(produto);
		result.redirectTo(ProdutoController.class).lista();
	}
	

	public void remove(Produto produto){
		dao.remove(produto);
		result.redirectTo(ProdutoController.class).lista();
	}
	
	public Produto edita(Long id){
		return dao.carrega(id);
	}

	public void altera(Produto produto) {
		dao.atualiza(produto);
		result.redirectTo(ProdutoController.class).lista();
	}
	
	public void sair(HttpSession session) {
		session.invalidate();
		result.redirectTo(LoginController.class).login();
	}
	
	public void formulario() {
	}


}
