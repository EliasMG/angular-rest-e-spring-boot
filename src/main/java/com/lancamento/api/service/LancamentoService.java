package com.lancamento.api.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lancamento.api.model.Lancamento;
import com.lancamento.api.repository.LancamentoRepository;

@Service
public class LancamentoService {

	@Autowired
	private LancamentoRepository lancamentoRepository;
	
	public List<Lancamento> listar() {
		return lancamentoRepository.findAll();
	}
	
	public Lancamento buscarPeloCodigo(Long codigo) {
		return lancamentoRepository.exists(codigo) ? lancamentoRepository.findOne(codigo) : null;
	}
}
