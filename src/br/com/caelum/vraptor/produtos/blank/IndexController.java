package br.com.caelum.vraptor.produtos.blank;

import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.produtos.dao.ProdutoDao;

@Resource
public class IndexController {

	@Path("/")
	public void index() {
		new ProdutoDao().lista();
	}
}
