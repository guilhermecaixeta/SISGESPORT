package com.ifg.sistema.sisgesport.api.services;

import java.util.Optional;

import com.ifg.sistema.sisgesport.api.entities.Endereco;

public interface EnderecoService {

	/**
	 * Busca endereco pelo seu id
	 * @param id
	 * @return Optional<Endereco>
	 */
	Optional<Endereco> BuscarPorId(Long id);
	/**
	 * Salva um novo endereco
	 * @param endereco
	 * @return Endereco
	 */
	Endereco Salvar(Endereco endereco);
	void Deletar(Long id);
}