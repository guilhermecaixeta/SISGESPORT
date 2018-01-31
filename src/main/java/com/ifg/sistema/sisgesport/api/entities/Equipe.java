package com.ifg.sistema.sisgesport.api.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="equipe")
public class Equipe implements Serializable {

	private static final long serialVersionUID = 3L;
	
	@Id
	@GeneratedValue ( strategy = GenerationType . AUTO )
	private Integer id;
	
	@Column(name="nome", nullable=false, length=30)
	@NotNull(message="O campo nome não pode ser nulo.")
	@NotBlank(message="O campo nome não pode ser em branco.")
	@Length(max= 30,message="O campo nome possui o limite máximo de {max} caracteres.")
	private String nome;
	
	@Column(name="codigo", nullable=false, length=20, unique=true)
	@NotNull(message="O campo codigo não pode ser nulo.")
	@NotBlank(message="O campo codigo não pode ser em branco.")
	@Length(max= 20,message="O codigo nome possui o limite máximo de {max} caracteres.")
	private String codigo;
	
	@Column(name="cor", nullable=false, length=30)
	@NotNull(message="O campo cor não pode ser nulo.")
	@NotBlank(message="O campo cor não pode ser em branco.")
	private String cor;
	
	@ManyToOne
	@JoinColumn(name="evento", referencedColumnName="id", nullable=false, foreignKey = @ForeignKey(name="fk_evento_equipe"))
	@NotNull(message="O campo evento não pode ser nulo.")
	private Evento evento;
	
	@ManyToOne
	@JoinColumn(name="aluno", referencedColumnName="id")
	private Aluno capitao;
	
	@ManyToOne
	@JoinColumn(name="imagem", referencedColumnName="id")
	private Imagem imagem;
	
	@OneToMany(mappedBy="equipe", cascade= CascadeType.ALL , orphanRemoval = true, fetch= FetchType.LAZY)
	private List<Time> times= new ArrayList<>();
	
	@ManyToMany(fetch=FetchType.LAZY)
	@JoinTable(name="equipe_aluno", 
	joinColumns=
	@JoinColumn(name="equipe", referencedColumnName="id"),
	inverseJoinColumns =
	@JoinColumn(name="aluno", referencedColumnName="id"),
	uniqueConstraints = {@UniqueConstraint(columnNames = {"equipe", "aluno"})})
	private List<Aluno> alunos = new ArrayList<>();

	public Equipe() {	}

	public void AdicionarTime(Time obj) {
	obj.setEquipe(this);
	this.times.add(obj);
	}
	
	public void RemoverTime(int id) {
		this.times.remove(id);
	}
	
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

	public String getCor() {
		return cor;
	}

	public void setCor(String cor) {
		this.cor = cor;
	}

	public Evento getEvento() {
		return evento;
	}

	public void setEvento(Evento evento) {
		this.evento = evento;
	}

	public Aluno getCapitao() {
		return capitao;
	}

	public void setCapitao(Aluno capitao) {
		this.capitao = capitao;
	}

	public Imagem getImagem() {
		return imagem;
	}

	public void setImagem(Imagem imagem) {
		this.imagem = imagem;
	}

	public List<Time> getTimes() {
		return times;
	}

	public void setTimes(List<Time> times) {
		this.times = times;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public List<Aluno> getAlunos() {
		return alunos;
	}

	public void setAlunos(List<Aluno> alunos) {
		this.alunos = alunos;
	}
	
}