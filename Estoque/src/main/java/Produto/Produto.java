package Produto;

import java.io.Serializable;

public class Produto implements Serializable{

	private static final long serialVersionUID = 1L;
	private int id;
	private String nome;
	private double preco;
	private String descricao;
	
	public Produto (int id, String nome,  double preco, String descricao) {
	super();
	this.descricao= descricao;
	this.id = id;
	this.nome = nome;
	this.preco = preco;
	}
	
	

	public int getId() {
	return id;
	}
	
	public void setId(int id) {
	this.id = id;
	}
	
	public String getNome() {
	return nome;
	}
	
	public void setNome(String nome) {
	this.nome = nome;
	}
	
	public double getPreco() {
	return preco;
	}
	
	public void setPreco(double preco) {
	this.preco = preco;
	}
	
	public String getDescricao() {
	return descricao;
	}
	
	public void setDescricao(String descricao) {
	this.descricao = descricao;
	}

	@Override
	public String toString() {
		return "Produto [id=" + id + ", nome=" + nome + ", preco=" + preco + ", descricao=" + descricao + "]";
	}
	
	
}