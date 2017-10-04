package com.lancamento.api.repository.lancamento;

import java.util.List;

import com.lancamento.api.model.Lancamento;
import com.lancamento.api.repository.filter.LancamentoFilter;

public interface LancamentoRepositoryQuery {

	public List<Lancamento> filtrar(LancamentoFilter lancamentoFilter);
}
