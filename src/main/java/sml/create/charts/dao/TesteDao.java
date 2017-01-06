package sml.create.charts.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import sml.create.charts.modelo.Requisicao;
import sml.create.charts.modelo.TempoExecucaoMetodo;

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

	public List<TempoExecucaoMetodo> getMediaRequisicao() {
		Session session = this.sessionFactory.getCurrentSession();
		List<TempoExecucaoMetodo> itens =  session
				.createSQLQuery(
						"SELECT AVG(r.tempo_execucao), rp.metodo_invocado FROM tab_requisicao r "
						+ " INNER JOIN tab_requisicao_parametro rp ON rp.id = r.id "
						+ "	GROUP BY rp.metodo_invocado").list();
		
		return itens;
	}
}
