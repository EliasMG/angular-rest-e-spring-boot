package com.lancamento.api.resource;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lancamento.api.event.RecursoCriadoEvent;
import com.lancamento.api.model.Lancamento;
import com.lancamento.api.service.LancamentoService;

@RestController
@RequestMapping("/lancamentos")
public class LancamentoResource {

	@Autowired
	private LancamentoService lancamentoService;
	
	@Autowired
	private ApplicationEventPublisher publisher;
	
	@GetMapping
	public List<Lancamento> listar() {
		return lancamentoService.listar();
	}
	
	@GetMapping("/{codigo}")
	public ResponseEntity<Lancamento> buscarPeloCodigo(@PathVariable Long codigo) {
		return lancamentoService.buscarPeloCodigo(codigo) != null ? ResponseEntity.ok().body(lancamentoService.buscarPeloCodigo(codigo)) : ResponseEntity.notFound().build();
	}
	
	@PostMapping
	public ResponseEntity<Lancamento> cadastrar(@RequestBody Lancamento lancamento, HttpServletResponse response) {
		Lancamento lancamentoSalvo = lancamentoService.cadastrar(lancamento);
		publisher.publishEvent(new RecursoCriadoEvent(this, response, lancamentoSalvo.getCodigo()));
		return ResponseEntity.status(HttpStatus.CREATED).body(lancamentoSalvo);
	}
}
