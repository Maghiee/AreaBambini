package it.areaBimbi.repository.impl;

import java.util.List;

import it.areaBimbi.entity.Persona;
import it.areaBimbi.repository.PersonaRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.PersistenceException;
import jakarta.persistence.TypedQuery;

public class PersonaRepositoryImpl extends JpaRepositoryImpl<Persona, Integer> implements PersonaRepository {

	public PersonaRepositoryImpl() {
		super(Persona.class);
	}

	@Override
	public Persona findByCodice(String codice) {
		Persona persona = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			TypedQuery<Persona> q = em.createQuery("select p from Persona p where p.codice=:codice",
					Persona.class);
			q.setParameter("codice", codice);
			// persona = q.getSingleResult();
			List<Persona> persone = q.getResultList();
			persona = persone.isEmpty() ? null : persone.get(0);
			tx.commit();
		} catch (PersistenceException e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return persona;
	}

	@Override
	public List<Persona> findByNome(String nome) {
		List<Persona> persone = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			TypedQuery<Persona> q = em.createQuery("select p from Persona p where p.nome=:nome", Persona.class);
			q.setParameter("nome", nome);
			persone = q.getResultList();
			tx.commit();
		} catch (PersistenceException e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return persone;
	}

}
