package sml.create.charts.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import sml.create.charts.dao.TesteDao;
import sml.create.charts.modelo.Requisicao;
import sml.create.charts.modelo.TempoExecucaoMetodo;

@Service
public class TesteService {

	private TesteDao testeDao;

	public void setTesteDao(TesteDao testeDao) {
		this.testeDao = testeDao;
	}

	@Transactional
	public void persistirAluno(Requisicao entity) {
		this.testeDao.persistir(entity);
	}
	
	@Transactional
	public List<Object[]> getMediaRequisicao() {
		return this.testeDao.getMediaRequisicao();
	}
	
	@Transactional
	public List<Object[]> getQuantidadeAcesso() {
		return this.testeDao.getQuantidadeAcesso();
	}
	
	@Transactional
	public List<Object[]> getQuantidadeAcessoMetodo() {
		return this.testeDao.getMediaRequisicaoMetodo();
	}
	
	@Transactional
	public List<Object[]> getHealthCheckRequisicaoMetodo() {
		return this.testeDao.getHealthCheckRequisicaoMetodo();
	}
}
