package it.areaBimbi.repository;

import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class PersistenceUtil {

	private static EntityManagerFactory emf;
	/*-
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistence");
	*/

	public static EntityManagerFactory getEntityManagerFactory() {
		if (emf == null)
			emf = Persistence.createEntityManagerFactory("persistence");
		return emf;
	}

}
