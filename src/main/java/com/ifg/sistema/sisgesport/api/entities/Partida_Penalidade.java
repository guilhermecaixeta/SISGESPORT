package com.ifg.sistema.sisgesport.api.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="partida_penalidade")
public class Partida_Penalidade  implements Serializable {
	
private static final long serialVersionUID = 31L;
	
	@Id
	@GeneratedValue ( strategy = GenerationType . AUTO )
	private Integer id;

	@ManyToOne
	@JoinColumn(name="jogador", referencedColumnName="id", nullable=false)
	@NotNull(message="O campo jogador não pode ser nulo.")
	@NotBlank(message="O campo jogador não pode ser em branco.")
	private Jogador jogador;
	
	@ManyToOne
	@JoinColumn(name="partida", referencedColumnName="id", nullable=false)
	@NotNull(message="O campo partida não pode ser nulo.")
	@NotBlank(message="O campo partida não pode ser em branco.")
	private Partida partida;
	
	@ManyToOne
	@JoinColumn(name="penalidade", referencedColumnName="id", nullable=false)
	@NotNull(message="O campo penalidade não pode ser nulo.")
	@NotBlank(message="O campo penalidade não pode ser em branco.")
	private Penalidade penalidade;

	public Partida_Penalidade() {	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Jogador getJogador() {
		return jogador;
	}

	public void setJogador(Jogador jogador) {
		this.jogador = jogador;
	}

	public Partida getPartida() {
		return partida;
	}

	public void setPartida(Partida partida) {
		this.partida = partida;
	}

	public Penalidade getPenalidade() {
		return penalidade;
	}

	public void setPenalidade(Penalidade penalidade) {
		this.penalidade = penalidade;
	}
	
}
