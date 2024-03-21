package it.areaBimbi.repository;

import it.areaBimbi.entity.Utente;

public interface UtenteRepository extends JpaRepository<Utente, Integer> {
	
	Utente findByUsername(String username);

}
