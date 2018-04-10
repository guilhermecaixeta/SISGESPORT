package com.ifg.sistema.sisgesport.api.controller;

import java.security.NoSuchAlgorithmException;
import java.util.Optional;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ifg.sistema.sisgesport.api.controller.base.baseController;
import com.ifg.sistema.sisgesport.api.dto.AlunoDTO;
import com.ifg.sistema.sisgesport.api.entities.Aluno;
import com.ifg.sistema.sisgesport.api.entities.Turma;
import com.ifg.sistema.sisgesport.api.extesion.Extension;
import com.ifg.sistema.sisgesport.api.response.Response;
import com.ifg.sistema.sisgesport.api.services.AlunoService;
import com.ifg.sistema.sisgesport.api.services.TurmaService;
import com.ifg.sistema.sisgesport.api.utils.PasswordUtils;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("sisgesport/aluno")
public class AlunoController extends baseController<AlunoDTO, Aluno, AlunoService> {
	{
		mappingDTOToEntity = new Extension<>(AlunoDTO.class, Aluno.class);
		mappingEntityToDTO = new Extension<>(Aluno.class, AlunoDTO.class);
	}

	@Autowired
	private TurmaService tS;

	public AlunoController() {
	}

	@GetMapping(value = "/buscarTodosPorEquipe/{idEquipe}")
	public ResponseEntity<Response<Page<AlunoDTO>>> buscarPorIdEquipePaginavel(@PathVariable("idEquipe") Long idEquipe,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "order", defaultValue = "id") String order,
			@RequestParam(value = "size", defaultValue = "10") int size,
			@RequestParam(value = "sort", defaultValue = "DESC") String sort) {
		PageRequest pageRequest = new PageRequest(page, size, Direction.valueOf(sort), order);
		Page<AlunoDTO> pageAlunoDTO = mappingEntityToDTO
				.AsGenericMappingListPage(entityService.BuscarPorIdEquipePaginavel(idEquipe, pageRequest));
		responsePage.setData(pageAlunoDTO);
		return ResponseEntity.ok(responsePage);
	}

	@GetMapping(value = "/buscarTodosPorTurma/{idTurma}")
	public ResponseEntity<Response<Page<AlunoDTO>>> buscarPorIdTurmaPaginavel(@PathVariable("idTurma") Long idTurma,
			@RequestParam(value = "page", defaultValue = "0") int page,
			@RequestParam(value = "order", defaultValue = "id") String order,
			@RequestParam(value = "size", defaultValue = "10") int size,
			@RequestParam(value = "sort", defaultValue = "DESC") String sort) {
		PageRequest pageRequest = new PageRequest(page, size, Direction.valueOf(sort), order);
		Page<AlunoDTO> pageAlunoDTO = mappingEntityToDTO
				.AsGenericMappingListPage(entityService.BuscarPorIdTurmaPaginavel(idTurma, pageRequest));
		responsePage.setData(pageAlunoDTO);
		return ResponseEntity.ok(responsePage);
	}

	@GetMapping(value = "/buscarPorMatricula/{matricula}")
	public ResponseEntity<Response<AlunoDTO>> Get(@PathVariable("matricula") String matricula) {
		log.info("Buscando aluno com a matrícula: {}", matricula);
		Optional<Aluno> aluno = entityService.BuscarPorMatricula(matricula);
		if (!aluno.isPresent()) {
			log.info("Aluno com a matrícula: {}, não cadastrado.", matricula);
			response.getErrors().add("Aluno não encontrado para a matrícula " + matricula);
			return ResponseEntity.badRequest().body(response);
		}
		response.setData(mappingEntityToDTO.AsGenericMapping(aluno.get()));
		return ResponseEntity.ok(response);
	}

	@PostMapping
	public ResponseEntity<Response<AlunoDTO>> cadastrar(@Valid @RequestBody AlunoDTO alunoDTO, BindingResult result)
			throws NoSuchAlgorithmException {

		log.info("Cadastrando o aluno: {}", alunoDTO.toString());
		validarAluno(alunoDTO, result, false);
		Aluno aluno = mappingDTOToEntity.AsGenericMapping(alunoDTO);
		if (result.hasErrors()) {
			log.error("Erro ao validar dados do novo aluno: {}", result.getAllErrors());
			result.getAllErrors().forEach(error -> response.getErrors().add(error.getDefaultMessage()));
			return ResponseEntity.badRequest().body(response);
		}
		Optional<Turma> turma = this.tS.BuscarPorId(alunoDTO.getTurma());
		turma.ifPresent(t -> aluno.setTurma(t));
		this.entityService.Salvar(aluno);
		response.setData(mappingEntityToDTO.AsGenericMapping(aluno));
		return ResponseEntity.ok(response);
	}

	private void validarAluno(AlunoDTO alunoDTO, BindingResult result, boolean edit) {
		if (!edit)
			this.entityService.BuscarPorMatricula(alunoDTO.getMatricula())
					.ifPresent(alu -> result.addError(new ObjectError("aluno", "Matrícula já cadastrada.")));

		this.entityService.BuscarPorEmail(alunoDTO.getEmail())
				.ifPresent(alu -> result.addError(new ObjectError("aluno", "Email já cadastrado.")));
	}

	@PutMapping(value = "/{matricula}")
	public ResponseEntity<Response<AlunoDTO>> atualizar(@PathVariable("matricula") String matricula,
			@Valid @RequestBody AlunoDTO alunoDTO, BindingResult result) throws Exception {
		log.info("Atualizando dados do Aluno: {}", alunoDTO);
		Optional<Aluno> aluno = entityService.BuscarPorMatricula(matricula);
		Aluno upAluno;
		if (!aluno.isPresent())
			result.addError(new ObjectError("Aluno", "Aluno não encontrado"));
		if (alunoDTO.getEmail() != null && !alunoDTO.getEmail().equals(aluno.get().getEmail())) {
			entityService.BuscarPorEmail(alunoDTO.getEmail())
					.ifPresent(al -> result.addError(new ObjectError("email", "Email já cadastrado")));
		}
		if (alunoDTO.getSenha() != null) {
			String senha = alunoDTO.getSenha();
			alunoDTO.setSenha(PasswordUtils.GerarBCrypt(senha));
		}
		if (aluno.isPresent()) {
			upAluno = mappingDTOToEntity.updateGeneric(alunoDTO, aluno.get());
			if(aluno.get().getTurma().getId() != alunoDTO.getTurma()){
				aluno.get().setTurma(tS.BuscarPorId(alunoDTO.getTurma()).get());
			}
			entityService.Salvar(upAluno);
			response.setData(mappingEntityToDTO.AsGenericMapping(upAluno));
		} else {
			return ResponseEntity.badRequest().body(response);
		}
		return ResponseEntity.ok(response);
	}
}
