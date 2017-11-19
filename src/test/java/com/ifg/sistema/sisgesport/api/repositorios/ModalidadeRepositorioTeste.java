package com.ifg.sistema.sisgesport.api.repositorios;

import static org.junit.Assert.assertNotNull;

import java.util.ArrayList;
import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit4.SpringRunner;

import com.ifg.sistema.sisgesport.api.entities.Modalidade;
import com.ifg.sistema.sisgesport.api.entities.Tipo_Ponto;

@RunWith(SpringRunner.class)
@SpringBootTest
@ActiveProfiles("teste")
public class ModalidadeRepositorioTeste {

	@Autowired
	private ModalidadeRepositorio mR;
	@Autowired
	private TipoPontoRepositorio tpR;
	private Modalidade modal;
	@Before
	public void setUp() throws Exception{
		Modalidade mod = new Modalidade();
		Tipo_Ponto ponto = new Tipo_Ponto();
		ponto.setNome("gol");
		ponto.setValor(1);
		tpR.save(ponto);
		List<Tipo_Ponto> lista = new ArrayList<Tipo_Ponto>();
		lista.add(ponto);
		mod.setDescricao("Esporte Coletivo de até 11 jogadores.");
		mod.setNome("Futebol");
		mod.setTipoPonto(lista);
		mod.setNum_max_jogador(21);
		mod.setNum_min_jogador(11);
		mR.save(mod);
		modal = mod;
	}
	
	@After
	public final void tearDown() {
		mR.deleteAll();
	}
	
	@Test
	public void testBuscarPorId() {
		Modalidade mod = mR.findById(modal.getId());
		
		assertNotNull(mod);
	}
	
	@Test
	public void testContainsPonto() {
		Modalidade mod = mR.findById(modal.getId());
		
		assertNotNull(mod.getTipoPonto());
	}
}
