package com.lancamento.api.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lancamento.api.model.Lancamento;
import com.lancamento.api.model.Pessoa;
import com.lancamento.api.repository.LancamentoRepository;
import com.lancamento.api.repository.PessoaRepository;
import com.lancamento.api.service.exception.PessoaInexistenteOuInativaException;

@Service
public class LancamentoService {

	@Autowired
	private LancamentoRepository lancamentoRepository;
	
	@Autowired
	private PessoaRepository pessoaRepository;
	
	public List<Lancamento> listar() {
		return lancamentoRepository.findAll();
	}
	
	public Lancamento buscarPeloCodigo(Long codigo) {
		return lancamentoRepository.exists(codigo) ? lancamentoRepository.findOne(codigo) : null;
	}
	
	public Lancamento cadastrar(Lancamento lancamento) {
		Pessoa pessoa = pessoaRepository.findOne(lancamento.getPessoa().getCodigo());
		if(pessoa == null || pessoa.isInativo()) {
			throw new PessoaInexistenteOuInativaException();
		}
		return lancamentoRepository.save(lancamento);
	}
}
