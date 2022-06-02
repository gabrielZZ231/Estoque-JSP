package EstoqueProduto;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Produto.Produto;

/**
 * Servlet implementation class Produto
 */
@WebServlet("/Produto")
public class ProdutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	    private List<Produto> produtos = new ArrayList<>();
	    /**
	     * @see HttpSer vlet#HttpServlet()
	     */
	    public ProdutoServlet() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
	
	/**
	* @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	*/
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	var acao = request.getParameter("acao");
	
	if (acao==null) {
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}
	if (acao.equalsIgnoreCase("novo")){
		request.setAttribute("produtos", this.produtos);
		request.getRequestDispatcher("/index.jsp").forward(request, response);
		return;
	}
	if (acao.equalsIgnoreCase("listar")){
		request.setAttribute("produtos", this.produtos);
		request.getRequestDispatcher("/WEB-INF/Views/ListarProduto.jsp").forward(request, response);
	return;

	}
	if (acao.equalsIgnoreCase("editar")){
		request.setAttribute("produtos", this.getProdutoById(Integer.parseInt(request.getParameter("id"))));
		request.getRequestDispatcher("/WEB-INF/Views/EditarProduto.jsp").forward(request, response);
	return;

	}
	if (acao.equalsIgnoreCase("remover")){
		this.produtoremover(this.getProdutoById(Integer.parseInt(request.getParameter("id"))));
		request.setAttribute("produtos", this.produtos);
		request.getRequestDispatcher("/WEB-INF/Views/ListarProduto.jsp").forward(request, response);
		return;
		}
	
	}
	
	
	/**
	* @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	*/
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
		var nome = request.getParameter("nome");
		var preco = request.getParameter("preco");
		var descricao = request.getParameter("descricao");
			
		
		if (request.getParameter("id")==null || request.getParameter("id").equalsIgnoreCase("".trim())){
		
			var produto = new Produto(getId(),nome,Double.valueOf(preco),descricao);
		
			this.produtos.add(produto);
			
			response.sendRedirect("http://localhost:8080/Estoque/Produto?acao=listar");
				
		}else{
			var idProduto = Integer.parseInt(request.getParameter("id"));
			var produto = new Produto(idProduto,nome,Double.valueOf(preco),descricao);
			this.atualizaProduto(produto);
			response.sendRedirect("http://localhost:8080/Estoque/Produto?acao=listar");
		}
		
		}
		private void atualizaProduto(Produto produto){
			var indice = this.produtos.indexOf(getProdutoById(produto.getId()));
			System.out.println(indice);
			this.produtos.set(indice,produto);
		}
		private Produto getProdutoById(int id){
			for(Produto produto:produtos) {
			if(produto.getId() == id){
				return produto;
			}		
			}
			return null;
		
		}
		private void produtoremover(Produto produto) {
			Produto p = this.getProdutoById(produto.getId());
			this.produtos.remove(p);
			
		}
	
		
		private int getId() {
		return this.produtos.size()+1;
		}
	}