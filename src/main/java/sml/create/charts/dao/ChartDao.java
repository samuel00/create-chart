package sml.create.charts.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public class ChartDao extends AbstractDao<Integer, Object>{

	@SuppressWarnings("unchecked")
	public List<Object[]> getMediaRequisicao() {
		String sql = "SELECT AVG(r.tempo_execucao), rp.metodo_invocado FROM tab_requisicao r "
				+ " INNER JOIN tab_requisicao_parametro rp ON rp.id = r.id "
				+ " GROUP BY rp.metodo_invocado";
		List<Object[]> itens = getSession().createSQLQuery(sql).list();
		return itens;
	}

	@SuppressWarnings("unchecked")
	public List<Object[]> getQuantidadeAcesso() {
		String sql = "select count(r.data), DATE_FORMAT(r.data,'%d-%m-%Y') from tab_requisicao r group by r.data";
		List<Object[]> itens = getSession().createSQLQuery(sql).list();
		return itens;
	}

	@SuppressWarnings("unchecked")
	public List<Object[]> getMediaRequisicaoMetodo() {
		String sql = "SELECT count(1), rp.metodo_invocado FROM tab_requisicao r "
				+ " INNER JOIN tab_requisicao_parametro rp ON rp.id = r.id "
				+ " GROUP BY rp.metodo_invocado";
		List<Object[]> itens = getSession().createSQLQuery(sql).list();
		return itens;
	}
	
	@SuppressWarnings("unchecked")
	public List<Object[]> getHealthCheckRequisicaoMetodo() {
		String sql = "SELECT exception.error, (requisicao.ok-exception.error) FROM ( "
		    + " (SELECT COUNT(1) AS error FROM tab_requisicao_exception) AS exception, "
		    + " (SELECT COUNT(1) as OK FROM tab_requisicao) AS requisicao) ";
		List<Object[]> itens = getSession().createSQLQuery(sql).list();
		return itens;
	}
}
