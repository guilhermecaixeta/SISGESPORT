package com.ifg.sistema.sisgesport.api.repositorios;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import com.ifg.sistema.sisgesport.api.entities.Evento;

public interface EventoRepositorio extends JpaRepository<Evento, Long> {

	@Transactional(readOnly=true)
	Evento findById(Integer id);
	
	@Transactional(readOnly=true)
	List<Evento> findByCriadorMatriculasiap(String matriculaSiap);
	
	@Transactional(readOnly=true)
	Page<Evento> findByCriadorMatriculasiap(String matriculaSiap, Pageable page);
}
