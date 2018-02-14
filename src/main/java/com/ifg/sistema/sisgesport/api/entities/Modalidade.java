package com.ifg.sistema.sisgesport.api.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="modalidade")
public class Modalidade  implements Serializable{

	private static final long serialVersionUID = 1594020995360031660L;

	@Id
	@GeneratedValue ( strategy = GenerationType . AUTO )
	private Integer id;
	
	@Column(name="nome", nullable= false, length=30)
	@NotNull(message="O campo nome não pode ser nulo.")
	@NotBlank(message="O campo nome não pode ser em branco.")
	@Length(max= 30,message="O campo nome possui o limite máximo de {max} caracteres.")
	private String nome;
	
	@Column(name="descricao", length=400)
	@Length(max= 400,message="O descricao possui o limite máximo de {max} caracteres.")
	private String descricao;
	
	@Column(name="num_max_jogador" )
	private int num_max_jogador;
	
	@Column(name="num_min_jogador")
	private int num_min_jogador;
	
	@ManyToMany(fetch=FetchType.LAZY)
	@JoinTable(name="modalidade_penalidade", 
	joinColumns=
	@JoinColumn(name="modalidade", referencedColumnName="id"),
	inverseJoinColumns =
	@JoinColumn(name="penalidade", referencedColumnName="id"),
	uniqueConstraints = {@UniqueConstraint(columnNames = {"modalidade", "penalidade"})})
	private List<Penalidade> penalidade = new ArrayList<>();

	@ManyToMany(fetch=FetchType.LAZY)
	@JoinTable(name="modalidade_posicao", 
	joinColumns=
	@JoinColumn(name="modalidade", referencedColumnName="id"),
	inverseJoinColumns =
	@JoinColumn(name="posicao", referencedColumnName="id"),
	uniqueConstraints = {@UniqueConstraint(columnNames = {"modalidade", "posicao"})})
	private List<Posicao> posicao = new ArrayList<>();
	
	@ManyToMany(fetch=FetchType.LAZY)
	@JoinTable(name="modalidade_tipo_ponto", 
	joinColumns=
	@JoinColumn(name="modalidade", referencedColumnName="id"),
	inverseJoinColumns =
	@JoinColumn(name="tipo_ponto", referencedColumnName="id"),
	uniqueConstraints = {@UniqueConstraint(columnNames = {"modalidade", "tipo_ponto"})})
	private List<Tipo_Ponto> tipoPonto = new ArrayList<>();
	
	public Modalidade() {	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public int getNum_max_jogador() {
		return num_max_jogador;
	}

	public void setNum_max_jogador(int num_max_jogador) {
		this.num_max_jogador = num_max_jogador;
	}

	public int getNum_min_jogador() {
		return num_min_jogador;
	}

	public void setNum_min_jogador(int num_min_jogador) {
		this.num_min_jogador = num_min_jogador;
	}

	public List<Penalidade> getPenalidade() {
		return penalidade;
	}

	public void setPenalidade(List<Penalidade> penalidade) {
		this.penalidade = penalidade;
	}

	public List<Posicao> getPosicao() {
		return posicao;
	}

	public void setPosicao(List<Posicao> posicao) {
		this.posicao = posicao;
	}

	public List<Tipo_Ponto> getTipoPonto() {
		return tipoPonto;
	}

	public void setTipoPonto(List<Tipo_Ponto> tipoPonto) {
		this.tipoPonto = tipoPonto;
	}
	
}
