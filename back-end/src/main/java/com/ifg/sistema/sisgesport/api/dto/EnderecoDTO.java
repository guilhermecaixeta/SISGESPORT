package com.ifg.sistema.sisgesport.api.dto;


import com.ifg.sistema.sisgesport.api.dto.commom_entities.EntidadeComumDTO;


public class EnderecoDTO {
	private Long id;
	private String cep;
	private String complemento;
	private String logradouro;
	private String bairro;
	private MunicipioDTO municipio;
	private EntidadeComumDTO entidadeComum;
	
	public EnderecoDTO() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public String getLogradouro() {
		return logradouro;
	}

	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public MunicipioDTO getMunicipio() {
		return municipio;
	}

	public void setMunicipio(MunicipioDTO municipio) {
		this.municipio = municipio;
	}

	public EntidadeComumDTO getEntidadeComum() {
		return entidadeComum;
	}

	public void setEntidadeComum(EntidadeComumDTO entidadeComum) {
		this.entidadeComum = entidadeComum;
	}

}
