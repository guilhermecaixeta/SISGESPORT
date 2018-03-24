package com.ifg.sistema.sisgesport.api.services.implementation;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import com.ifg.sistema.sisgesport.api.entities.Curso;
import com.ifg.sistema.sisgesport.api.repositorios.CursoRepositorio;
import com.ifg.sistema.sisgesport.api.services.CursoService;
@Service
public class CursoServiceImplementation implements CursoService {
	private static final Logger log = LoggerFactory.getLogger(AlunoServiceImplementation.class);
	
	@Autowired
	private CursoRepositorio cursoRepositorio;
	
	public Optional<Curso> BuscarPorId(Long id){
		log.info("realizando a busca por id {}", id);
		return Optional.ofNullable(cursoRepositorio.findOne(id));
	}
	public Optional<List<Curso>> BuscarEquipePorIdInstituicao(Long id_instituicao){
		log.info("realizando a busca por matrícula {}", id_instituicao);
		return Optional.ofNullable(cursoRepositorio.findByInstituicaoId(id_instituicao));
	}
	public Page<Curso> BuscarEquipePorIdInstituicaoPaginavel(Long id_instituicao, PageRequest pageRequest){
		log.info("realizando a busca por id da instituicao {}", id_instituicao);
		return cursoRepositorio.findByInstituicaoId(id_instituicao, pageRequest);
	}
	public Curso Salvar(Curso curso) {
		log.info("realizando a busca por curso {}", curso.getNome());
		return cursoRepositorio.save(curso);
	}
}
