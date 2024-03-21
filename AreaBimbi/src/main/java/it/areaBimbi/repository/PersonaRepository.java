package it.areaBimbi.repository;

import java.util.List;

import it.areaBimbi.entity.Persona;


public interface PersonaRepository extends JpaRepository<Persona, Integer> {

	Persona findByCodice(String codice);

	List<Persona> findByNome(String nome);

}
