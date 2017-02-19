package sml.create.charts.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import sml.create.charts.modelo.Requisicao;

@Repository
public class TesteDao {

	private SessionFactory sessionFactory;

	@Transactional
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public void persistir(Requisicao p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
	}

	public List<Object[]> getMediaRequisicao() {
		Session session = this.sessionFactory.getCurrentSession();
		String sql = "SELECT AVG(r.tempo_execucao), rp.metodo_invocado FROM tab_requisicao r "
				+ " INNER JOIN tab_requisicao_parametro rp ON rp.id = r.id "
				+ " GROUP BY rp.metodo_invocado";
		List<Object[]> itens = session.createSQLQuery(sql).list();
		return itens;
	}

	public List<Object[]> getQuantidadeAcesso() {
		Session session = this.sessionFactory.getCurrentSession();
		String sql = "select count(r.data), DATE_FORMAT(r.data,'%d-%m-%Y') from tab_requisicao r group by r.data";
		List<Object[]> itens = session.createSQLQuery(sql).list();
		return itens;
	}

	public List<Object[]> getMediaRequisicaoMetodo() {
		Session session = this.sessionFactory.getCurrentSession();
		String sql = "SELECT count(1), rp.metodo_invocado FROM tab_requisicao r "
				+ " INNER JOIN tab_requisicao_parametro rp ON rp.id = r.id "
				+ " GROUP BY rp.metodo_invocado";
		List<Object[]> itens = session.createSQLQuery(sql).list();
		return itens;
	}
	
	public List<Object[]> getHealthCheckRequisicaoMetodo() {
		Session session = this.sessionFactory.getCurrentSession();
		String sql = "SELECT exception.error, (requisicao.ok-exception.error) FROM ( "
		    + " (SELECT COUNT(1) AS error FROM tab_requisicao_exception) AS exception, "
		    + " (SELECT COUNT(1) as OK FROM tab_requisicao) AS requisicao) ";
		List<Object[]> itens = session.createSQLQuery(sql).list();
		return itens;
	}
}
